# Changelog

All notable changes to this project will be documented in this file.
Each new release typically also includes the latest modulesync defaults.
These should not affect the functionality of the module.

## [v4.0.1](https://github.com/voxpupuli/puppet-jira/tree/v4.0.1) (2020-06-17)

[Full Changelog](https://github.com/voxpupuli/puppet-jira/compare/v4.0.0...v4.0.1)

**Fixed bugs:**

- Added \>= to capture version 7.0.0 as using the "software" url [\#291](https://github.com/voxpupuli/puppet-jira/pull/291) ([rfreiberger](https://github.com/rfreiberger))

**Closed issues:**

- Bump puppetlabs-stdlib dependency [\#318](https://github.com/voxpupuli/puppet-jira/issues/318)
- Raise puppet-archive version [\#304](https://github.com/voxpupuli/puppet-jira/issues/304)
- Server.xml for servicedesk [\#295](https://github.com/voxpupuli/puppet-jira/issues/295)
- Jira 7.12 needs relaxedPathChars & relaxedQueryChars [\#269](https://github.com/voxpupuli/puppet-jira/issues/269)
- Puppet 4 support? [\#168](https://github.com/voxpupuli/puppet-jira/issues/168)
- jira::facts don't work with All-in-One Puppet 4.x agent [\#151](https://github.com/voxpupuli/puppet-jira/issues/151)

**Merged pull requests:**

- Update jira::facts to check for Puppet AIO agent [\#321](https://github.com/voxpupuli/puppet-jira/pull/321) ([dpisano](https://github.com/dpisano))

## [v4.0.0](https://github.com/voxpupuli/puppet-jira/tree/v4.0.0) (2019-06-19)

[Full Changelog](https://github.com/voxpupuli/puppet-jira/compare/v3.5.2...v4.0.0)

**Breaking changes:**

- modulesync 2.7.0 and drop puppet 4 [\#292](https://github.com/voxpupuli/puppet-jira/pull/292) ([bastelfreak](https://github.com/bastelfreak))

**Implemented enhancements:**

- Cannot add wished tag to server.xml [\#234](https://github.com/voxpupuli/puppet-jira/issues/234)
- Better Amazon support [\#287](https://github.com/voxpupuli/puppet-jira/pull/287) ([cpepe](https://github.com/cpepe))
- Added relaxedPath xml attributes as per jira apache tomcat upgrade file [\#280](https://github.com/voxpupuli/puppet-jira/pull/280) ([domgoodwin](https://github.com/domgoodwin))

**Fixed bugs:**

- Jira Service Desk doesn't start with JasperListener / need relaxedPath with correct version comp [\#288](https://github.com/voxpupuli/puppet-jira/pull/288) ([thonixx](https://github.com/thonixx))
- Update default `download_url` [\#286](https://github.com/voxpupuli/puppet-jira/pull/286) ([alexjfisher](https://github.com/alexjfisher))
- Remove messy warnings. Fixes \#234 [\#272](https://github.com/voxpupuli/puppet-jira/pull/272) ([br0ch0n](https://github.com/br0ch0n))

**Closed issues:**

- Jira downloads url default [\#294](https://github.com/voxpupuli/puppet-jira/issues/294)
- download url has changed [\#285](https://github.com/voxpupuli/puppet-jira/issues/285)
- Support for additional cluster.properties config [\#245](https://github.com/voxpupuli/puppet-jira/issues/245)

**Merged pull requests:**

- Update `download_url` default value in documentation [\#297](https://github.com/voxpupuli/puppet-jira/pull/297) ([towo](https://github.com/towo))
- Add Ehcache options; require stdlib 4.25.0 [\#282](https://github.com/voxpupuli/puppet-jira/pull/282) ([nrhtr](https://github.com/nrhtr))
- replace deprecated has\_key\(\) with `in` [\#276](https://github.com/voxpupuli/puppet-jira/pull/276) ([bastelfreak](https://github.com/bastelfreak))
- replace validate\_\* with assert\_type in init.pp [\#275](https://github.com/voxpupuli/puppet-jira/pull/275) ([bastelfreak](https://github.com/bastelfreak))

## [v3.5.2](https://github.com/voxpupuli/puppet-jira/tree/v3.5.2) (2018-10-14)

[Full Changelog](https://github.com/voxpupuli/puppet-jira/compare/v3.5.1...v3.5.2)

**Merged pull requests:**

- modulesync 2.1.0 and allow puppet 6.x [\#268](https://github.com/voxpupuli/puppet-jira/pull/268) ([bastelfreak](https://github.com/bastelfreak))
- modulesync 1.9.6; update all dependencies [\#264](https://github.com/voxpupuli/puppet-jira/pull/264) ([bastelfreak](https://github.com/bastelfreak))

## [v3.5.1](https://github.com/voxpupuli/puppet-jira/tree/v3.5.1) (2018-07-16)

[Full Changelog](https://github.com/voxpupuli/puppet-jira/compare/v3.5.0...v3.5.1)

**Fixed bugs:**

- Update server.xml.erb to allow for jsd [\#260](https://github.com/voxpupuli/puppet-jira/pull/260) ([cpepe](https://github.com/cpepe))
- Check `ps` for a process with the jira pid, not a the jira user [\#258](https://github.com/voxpupuli/puppet-jira/pull/258) ([rigareau](https://github.com/rigareau))

**Closed issues:**

- This logic does not allow Jira Service Desk to operate [\#259](https://github.com/voxpupuli/puppet-jira/issues/259)
- RedHat 6 Service Manifest problem [\#243](https://github.com/voxpupuli/puppet-jira/issues/243)

## [v3.5.0](https://github.com/voxpupuli/puppet-jira/tree/v3.5.0) (2018-07-09)

[Full Changelog](https://github.com/voxpupuli/puppet-jira/compare/v3.4.1...v3.5.0)

**Implemented enhancements:**

- Add Support for H2 Database and Fix \#73  [\#256](https://github.com/voxpupuli/puppet-jira/pull/256) ([TJM](https://github.com/TJM))

**Fixed bugs:**

- certain `dbconfig.xml` settings require `enable_connection_pooling => true` [\#242](https://github.com/voxpupuli/puppet-jira/issues/242)

**Closed issues:**

- Add H2 database support [\#254](https://github.com/voxpupuli/puppet-jira/issues/254)
- Not compatible with JIRA 7.5+ and MS SQL Server [\#244](https://github.com/voxpupuli/puppet-jira/issues/244)
- consolidate db, dbtype, and dbdriver [\#73](https://github.com/voxpupuli/puppet-jira/issues/73)

**Merged pull requests:**

- Update README.md for clarity [\#253](https://github.com/voxpupuli/puppet-jira/pull/253) ([ronech](https://github.com/ronech))
- Update server.xml.erb to account for weird Service Desk versioning [\#252](https://github.com/voxpupuli/puppet-jira/pull/252) ([ronech](https://github.com/ronech))
- switch to using ensure\_packages to avoid conflicts [\#250](https://github.com/voxpupuli/puppet-jira/pull/250) ([bmagistro](https://github.com/bmagistro))
- drop EOL OSs; fix puppet version range [\#249](https://github.com/voxpupuli/puppet-jira/pull/249) ([bastelfreak](https://github.com/bastelfreak))
- Rely on beaker-hostgenerator for docker nodesets [\#246](https://github.com/voxpupuli/puppet-jira/pull/246) ([ekohl](https://github.com/ekohl))

## [v3.4.1](https://github.com/voxpupuli/puppet-jira/tree/v3.4.1) (2018-03-30)

[Full Changelog](https://github.com/voxpupuli/puppet-jira/compare/v3.4.0...v3.4.1)

**Fixed bugs:**

- MySQL storage\_engine problem [\#239](https://github.com/voxpupuli/puppet-jira/issues/239)
- Correct jdbc storage engine parameter. [\#216](https://github.com/voxpupuli/puppet-jira/pull/216) ([chrisperelstein](https://github.com/chrisperelstein))

## [v3.4.0](https://github.com/voxpupuli/puppet-jira/tree/v3.4.0) (2018-03-28)

[Full Changelog](https://github.com/voxpupuli/puppet-jira/compare/v3.3.0...v3.4.0)

**Implemented enhancements:**

- Flags to disable management of jira user and group [\#215](https://github.com/voxpupuli/puppet-jira/issues/215)

**Merged pull requests:**

- bump puppet to latest supported version 4.10.0 [\#237](https://github.com/voxpupuli/puppet-jira/pull/237) ([bastelfreak](https://github.com/bastelfreak))
- Add proxy support for 'archive' [\#233](https://github.com/voxpupuli/puppet-jira/pull/233) ([abrust-ucsd](https://github.com/abrust-ucsd))
- bump mysql dependency version to allow 5.x [\#230](https://github.com/voxpupuli/puppet-jira/pull/230) ([bastelfreak](https://github.com/bastelfreak))

## [v3.3.0](https://github.com/voxpupuli/puppet-jira/tree/v3.3.0) (2017-12-09)

[Full Changelog](https://github.com/voxpupuli/puppet-jira/compare/v3.2.1...v3.3.0)

**Implemented enhancements:**

- Add official Ubuntu 16.04 support [\#229](https://github.com/voxpupuli/puppet-jira/pull/229) ([KoenDierckx](https://github.com/KoenDierckx))

**Fixed bugs:**

- Update download URL logic [\#218](https://github.com/voxpupuli/puppet-jira/issues/218)

**Merged pull requests:**

- bump archive dep to allow latest version [\#221](https://github.com/voxpupuli/puppet-jira/pull/221) ([bastelfreak](https://github.com/bastelfreak))

## [v3.2.1](https://github.com/voxpupuli/puppet-jira/tree/v3.2.1) (2017-10-13)

[Full Changelog](https://github.com/voxpupuli/puppet-jira/compare/v3.2.0...v3.2.1)

**Fixed bugs:**

- Set tomcat\_protocol\_ssl based on jira version if undef [\#225](https://github.com/voxpupuli/puppet-jira/pull/225) ([markleary](https://github.com/markleary))

## [v3.2.0](https://github.com/voxpupuli/puppet-jira/tree/v3.2.0) (2017-10-10)

[Full Changelog](https://github.com/voxpupuli/puppet-jira/compare/v3.1.0...v3.2.0)

**Implemented enhancements:**

- Issue \#215 - Disable user, need to update spec tests [\#223](https://github.com/voxpupuli/puppet-jira/pull/223) ([cyberious](https://github.com/cyberious))
- add acceptance tests on ubuntu 14.04 [\#222](https://github.com/voxpupuli/puppet-jira/pull/222) ([bastelfreak](https://github.com/bastelfreak))
- Add $tomcat\_protocol\_ssl paramater for compatibility with Jira \>= 7.3. [\#219](https://github.com/voxpupuli/puppet-jira/pull/219) ([markleary](https://github.com/markleary))
- replace validate\_\* with datatypes [\#212](https://github.com/voxpupuli/puppet-jira/pull/212) ([bastelfreak](https://github.com/bastelfreak))

**Closed issues:**

- Error: /Stage\[main\]/Jira::Install/Archive\[/tmp/atlassian-jira-software-7.2.3.tar.gz\]/ensure: change from absent to present failed: Download file checksum mismatch [\#173](https://github.com/voxpupuli/puppet-jira/issues/173)

**Merged pull requests:**

- Fix \#206 rubocop failures [\#207](https://github.com/voxpupuli/puppet-jira/pull/207) ([sacres](https://github.com/sacres))

## v3.1.0 (2017-01-13)

This is the last release with Puppet 3 support!
- modulesync with latest Vox Pupuli defaults
- Exposes checksum_verify in init.pp w/ conditional
- Allow JIRA to run in OpenJDK
- Make 'check-java.sh' Management Optional
- Bump puppet minimum version_requirement to 3.8.7
- Move 'check-java.sh' to Templates
- Fix rubocop issue in config_spec test.
- Bump minimum version dependencies (for Puppet 4)
- Remove OpenJDK Comments, use vanilla check-java.sh
- Remove extraneous comma in config.pp.
- Add Docker acceptance tests for travis

## v3.0.1 (2016-11-23)
### Summary
- Atlassian doesn't provide checksums, add checksum_verify false.
- Update README

### Fixes
- Fix checksum verification as Atlassian doesn't provide checksums
- Fix Atlassian End of Support for versions < 6.1 , amend jira_install_spec.rb to reflect that

### Improvements
- Amend README to clarify default deploy module
- modulesync with latest Vox Pupuli defaults

## v3.0.0 (2016-10-04)
### Summary
- Change pool_test_on_borrow default to false in init class :: As this alters init class, requires MAJOR release
- Add access log format variable to init :: as this also hits init class, MAJOR release
- Update README

### Fixes
- Fix Download - version 7.1.9 and up
- Incompatible listeners server.xml > version 7
- Fix missing pool_test_on_borrow in dbconfig.mysql.xml.erb

### Improvements
- modulesync with latest Vox Pupuli defaults

## v2.1.0 (2016-09-08)
### Summary
- modulesync with latest Vox Pupuli defaults

## Improvements
- Add hiera support for catalina_opts

### Fixes
- Service status is not working when using init scripts
- Fix JIRA 7.1.x download URL

## v2.0.0 (2016-05-26)
### Summary
- We dropped ruby1.8 support!
- mkrakowitzer-deploy got replaced by puppet-archive.
- The jira::facts class is included by default. You may get a Error: Duplicate declaration: Class[jira::facts] is already declared
- We added JIRA 7 Support

### Improvements
- Use defined function to test for the existence of the fact ::jira_ver
- Added hieradata examples for Oracle DB backend
- Added containment for mysql_connector class
- Support STRICT_VARIABLES=yes
- Paramaterizing more tomcat settings
- Added schema parameter for dbconfig
- Added configuration option to enable or disable websudo.
- Added tests and updated README.md
- Support configuration of all properties in jira-config.properties
- Added crowd single sign-on functions as described by atlassian wiki
- Added ability to change tomcatShutdownPort

### Fixes
- Fix to address Amazon Ami configuration
- Avoid duplicate scheme declaration when using proxy with SSL
- Fix jira::mysql_connector_url


## v1.3.0 (2015-08-05)
### Summary
- Add SSL Support #76
- Resolve issue where rake lint tasks always exited with 0 status
- added new parameter disable_notifications in relation to setenv.sh
- Add examples


## v1.2.1 (2015-04-25)
### Summary
- Update metadata, README, CHANGELOG to point to new namespace.
- Update .travis.yml to auto deploy tagged versions


## v1.2.0 (2015-04-16)
- Issue #51 Make the jira users shell configurable
- Add a notify and subscribe options to the jira service
- Added oracle to db input validator
- Turn on the AJP connector based on a hiera or puppet-variable lookup
- Added Microsoft SQL Server support
- Include jira::facts class by default.
- Adding new feature generating a content.xml configuration
- Add a notify and subscribe options to the jira service
- Provide ability to set the bind address of Tomcat via the jira::tomcatAddress parameter
- Bump jira version to 6.4.1

Thanks to Scott Searcy, Oliver Bertuch, Paul Geringer, Eric Shamow, William Lieurance, Doug Neal for their contributions.


## v1.1.5 (2014-01-21)
- Add beaker tests for MySQL
- Added support for Oracle and Scientific Linux
- Bump jira version to 6.3.13
- Add support for parameter 'contextpath'
- Add class to install MySQL Java connector from mysql.com
- Add support for oracle database

Thanks to  Oliver Bertuch  for his contributions.


## v1.1.4 (2014-01-17)
- Parameterize the lockfile variable in the init script
- Autoinstall MySql Connector/J Driver
- Add parameter stop_jira
- Fix bug on RHEL7 where updating the systemd script does not take effect without refreshing systemd

Thanks to MasonM for his contributions


## v1.1.3 (2014-11-17)
- Refactor beaker tests to that they are portable and other people can run them
- Remove unnecessary comments from init.pp
- Dont cleanup jira tar.gz file when using staging module.
- Add/Remove beaker nodesets
  - Add CentOS 7 nodeset
  - Remove ubuntu 1004 and Debian 6 nodeset
- Add support for systemd style init script on RedHat/CentOS 7


## v1.1.2 (2014-10-19)
- Add new parameter: jvm_permgen, defaults to 256m.
- Updates to readme


## v1.1.1 (2014-10-11)
- Fix typo of in module nanliu-staging, preving module from being installed


## v1.1.0 (2014-10-09)
- Add beaker tests for Ubuntu/Centos/Debian
- Issue #3 Handle updating of Jira

### Summary
Resolve Issue #29
- Add external fact for running version of JIRA.
- Replace mkrakowitzer-deploy with nanliu-staging as the default module to deploy jira files


## v1.0.1 (2014-10-01)

### Summary
Update the README file to comply with puppetlabs standards
- https://docs.puppetlabs.com/puppet/latest/reference/modules_documentation.html
- https://docs.puppetlabs.com/puppet/latest/reference/READMEtemplate.markdown

#### Bugfixes
- None


\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
