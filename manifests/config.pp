# -----------------------------------------------------------------------------
#   Copyright (c) 2012 Bryce Johnson
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
# -----------------------------------------------------------------------------
class jira::config {
  # This class should be used from init.pp with a dependency on jira::install
  # and sending a refresh to jira::service
  assert_private()

  File {
    owner => $jira::user,
    group => $jira::group,
  }

  # JVM args. These will be the defaults if not overridden
  if $jira::jvm_type == 'openjdk-11' {
    $jvm_gc_args = '-XX:+UseG1GC -XX:+ExplicitGCInvokesConcurrent'
  } else {
    $jvm_gc_args = '-XX:+ExplicitGCInvokesConcurrent'
  }
  $jvm_code_cache_args = '-XX:InitialCodeCacheSize=32m -XX:ReservedCodeCacheSize=512m'
  $jvm_extra_args = '-XX:-OmitStackTraceInFastThrow -Djava.locale.providers=COMPAT'

  $dbschema_default = $jira::db ? {
    'postgresql' => 'public',
    default      => undef
  }

  # can't use pick_default: https://tickets.puppetlabs.com/browse/MODULES-11018
  $dbschema = if $jira::dbschema { $jira::dbschema } else { $dbschema_default }

  # Allow some backwards compatibility;
  if $jira::poolsize {
    deprecation('jira::poolsize', 'jira::poolsize is deprecated and simply sets max-pool-size. Please use jira::pool_max_size instead and remove this configuration')
    $pool_max_size_real = pick($jira::pool_max_size, $jira::poolsize)
  } else {
    $pool_max_size_real = $jira::pool_max_size
  }

  if $jira::tomcat_redirect_https_port {
    unless $jira::tomcat_native_ssl {
      fail('You need to set jira::tomcat_native_ssl to true when using jira::tomcat_redirect_https_port')
    }
  }

  if $jira::dbport {
    $dbport_real = $jira::dbport
  } else {
    $dbport_real = $jira::db ? {
      'postgresql' => '5432',
      'mysql'      => '3306',
      'oracle'     => '1521',
      'sqlserver'  => '1433',
      'h2'         => '',
    }
  }

  if $jira::dbdriver {
    $dbdriver_real = $jira::dbdriver
  } else {
    $dbdriver_real = $jira::db ? {
      'postgresql' => 'org.postgresql.Driver',
      'mysql'      => 'com.mysql.jdbc.Driver',
      'oracle'     => 'oracle.jdbc.OracleDriver',
      'sqlserver'  => 'com.microsoft.sqlserver.jdbc.SQLServerDriver',
      'h2'         => 'org.h2.Driver',
    }
  }

  if $jira::dbtype {
    $dbtype_real = $jira::dbtype
  } else {
    $dbtype_real = $jira::db ? {
      'postgresql' => 'postgres72',
      'mysql'      => 'mysql',
      'oracle'     => 'oracle10g',
      'sqlserver'  => 'mssql',
      'h2'         => 'h2',
    }
  }

  if $jira::dburl {
    $dburl_real = $jira::dburl
  }
  else {
    $dburl_real = $jira::db ? {
      'postgresql' => "jdbc:${jira::db}://${jira::dbserver}:${dbport_real}/${jira::dbname}",
      'mysql'      => "jdbc:${jira::db}://${jira::dbserver}:${dbport_real}/${jira::dbname}?useUnicode=true&amp;characterEncoding=UTF8&amp;sessionVariables=default_storage_engine=InnoDB",
      'oracle'     => "jdbc:${jira::db}:thin:@${jira::dbserver}:${dbport_real}:${jira::dbname}",
      'sqlserver'  => "jdbc:jtds:${jira::db}://${jira::dbserver}:${dbport_real}/${jira::dbname}",
      'h2'         => "jdbc:h2:file:/${jira::homedir}/database/${jira::dbname}",
    }
  }

  $tomcat_protocol_ssl_real = pick($jira::tomcat_protocol_ssl, 'org.apache.coyote.http11.Http11NioProtocol')

  $jira_properties = {
    'jira.websudo.is.disabled' => !$jira::enable_secure_admin_sessions,
  }
  $merged_jira_config_properties = jira::sort_hash($jira_properties + $jira::jira_config_properties)

  # Configuration logic ends, resources begin:

  file { "${jira::webappdir}/bin/user.sh":
    content => epp('jira/user.sh.epp'),
    mode    => '0755',
  }

  file { "${jira::webappdir}/bin/setenv.sh":
    content => epp('jira/setenv.sh.epp'),
    mode    => '0755',
  }

  file { "${jira::homedir}/dbconfig.xml":
    content => epp('jira/dbconfig.xml.epp'),
    mode    => '0600',
  }

  if $jira::script_check_java_manage {
    file { "${jira::webappdir}/bin/check-java.sh":
      content => template($jira::script_check_java_template),
      mode    => '0755',
      require => File["${jira::webappdir}/bin/setenv.sh"],
    }
  }

  file { "${jira::webappdir}/conf/server.xml":
    content => epp('jira/server.xml.epp'),
    mode    => '0600',
  }

  file { "${jira::webappdir}/conf/context.xml":
    content => epp('jira/context.xml.epp'),
    mode    => '0600',
  }

  file { "${jira::homedir}/jira-config.properties":
    content => inline_epp(@(EOF)
        <% $merged_jira_config_properties.each |$key, $val| { -%>
        <%= $key %> = <%= $val %>
        <%- } -%>
        | EOF
    ),
    mode    => '0600',
  }

  if $jira::datacenter {
    file { "${jira::homedir}/cluster.properties":
      content => epp('jira/cluster.properties.epp'),
      mode    => '0600',
    }
  }
}
