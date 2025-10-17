# Changelog

All notable changes to this project will be documented in this file.
Each new release typically also includes the latest modulesync defaults.
These should not affect the functionality of the module.

## [v3.5.2](https://github.com/lsst-it/puppet-cni/tree/v3.5.2) (2025-10-17)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/v3.5.1...v3.5.2)

**Implemented enhancements:**

- \(metadata.json\) bump archiver and systemd [\#60](https://github.com/lsst-it/puppet-cni/pull/60) ([badenerb](https://github.com/badenerb))
- Update actions/labeler action to v6 [\#55](https://github.com/lsst-it/puppet-cni/pull/55) ([renovate[bot]](https://github.com/apps/renovate))
- Update actions/checkout action to v5 [\#53](https://github.com/lsst-it/puppet-cni/pull/53) ([renovate[bot]](https://github.com/apps/renovate))

## [v3.5.1](https://github.com/lsst-it/puppet-cni/tree/v3.5.1) (2024-12-19)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/v3.5.0...v3.5.1)

**Fixed bugs:**

- \(CHANGELOG.md\) Fix CNI versions [\#46](https://github.com/lsst-it/puppet-cni/pull/46) ([badenerb](https://github.com/badenerb))

## [v3.5.0](https://github.com/lsst-it/puppet-cni/tree/v3.5.0) (2024-12-18)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/v3.4.0...v3.5.0)

**Implemented enhancements:**

- \(metadata.json\) upgrade systemd to v8 [\#44](https://github.com/lsst-it/puppet-cni/pull/44) ([badenerb](https://github.com/badenerb))

**Fixed bugs:**

- \(metadata.json\) revert systemd to v7 [\#43](https://github.com/lsst-it/puppet-cni/pull/43) ([badenerb](https://github.com/badenerb))

## [v3.4.0](https://github.com/lsst-it/puppet-cni/tree/v3.4.0) (2024-08-15)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/v3.3.0...v3.4.0)

**Implemented enhancements:**

- split cni::plugins::dhcp::service out of ::dhcp class [\#37](https://github.com/lsst-it/puppet-cni/pull/37) ([jhoblitt](https://github.com/jhoblitt))

## [v3.3.0](https://github.com/lsst-it/puppet-cni/tree/v3.3.0) (2024-08-07)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/v3.2.0...v3.3.0)

**Implemented enhancements:**

- allow puppet/systemd 7.x [\#35](https://github.com/lsst-it/puppet-cni/pull/35) ([jhoblitt](https://github.com/jhoblitt))
- \(puppet-cni\) add license file [\#33](https://github.com/lsst-it/puppet-cni/pull/33) ([dtapiacl](https://github.com/dtapiacl))

## [v3.2.0](https://github.com/lsst-it/puppet-cni/tree/v3.2.0) (2023-10-04)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/v3.1.0...v3.2.0)

**Implemented enhancements:**

- allow puppet/systemd 6.x [\#30](https://github.com/lsst-it/puppet-cni/pull/30) ([jhoblitt](https://github.com/jhoblitt))

## [v3.1.0](https://github.com/lsst-it/puppet-cni/tree/v3.1.0) (2023-08-22)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/v3.0.0...v3.1.0)

**Implemented enhancements:**

- allow stdlib 9.x [\#28](https://github.com/lsst-it/puppet-cni/pull/28) ([jhoblitt](https://github.com/jhoblitt))

## [v3.0.0](https://github.com/lsst-it/puppet-cni/tree/v3.0.0) (2023-06-23)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/v2.4.1...v3.0.0)

**Breaking changes:**

- \(plumbing\) drop support for puppet6 [\#20](https://github.com/lsst-it/puppet-cni/pull/20) ([jhoblitt](https://github.com/jhoblitt))

**Implemented enhancements:**

- allow puppet/archive 7.x [\#24](https://github.com/lsst-it/puppet-cni/pull/24) ([jhoblitt](https://github.com/jhoblitt))
- add support for puppet8 [\#21](https://github.com/lsst-it/puppet-cni/pull/21) ([jhoblitt](https://github.com/jhoblitt))

## [v2.4.1](https://github.com/lsst-it/puppet-cni/tree/v2.4.1) (2023-02-14)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/v2.4.0...v2.4.1)

**Fixed bugs:**

- restart dhcp service when cni plugin files change [\#17](https://github.com/lsst-it/puppet-cni/pull/17) ([jhoblitt](https://github.com/jhoblitt))

## [v2.4.0](https://github.com/lsst-it/puppet-cni/tree/v2.4.0) (2023-01-31)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/v2.3.0...v2.4.0)

**Implemented enhancements:**

- normalize supported operating systems [\#15](https://github.com/lsst-it/puppet-cni/pull/15) ([jhoblitt](https://github.com/jhoblitt))
- bump puppet/systemd to \< 5.0.0 [\#13](https://github.com/lsst-it/puppet-cni/pull/13) ([jhoblitt](https://github.com/jhoblitt))

## [v2.3.0](https://github.com/lsst-it/puppet-cni/tree/v2.3.0) (2022-08-22)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/v2.2.0...v2.3.0)

**Merged pull requests:**

- modulesync 5.3.0 [\#11](https://github.com/lsst-it/puppet-cni/pull/11) ([jhoblitt](https://github.com/jhoblitt))

## [v2.2.0](https://github.com/lsst-it/puppet-cni/tree/v2.2.0) (2022-08-03)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/v2.1.0...v2.2.0)

**Merged pull requests:**

- add EL8 support [\#10](https://github.com/lsst-it/puppet-cni/pull/10) ([jhoblitt](https://github.com/jhoblitt))

## [v2.1.0](https://github.com/lsst-it/puppet-cni/tree/v2.1.0) (2022-04-11)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/v2.0.0...v2.1.0)

**Merged pull requests:**

- bump deps; 2.1.0 release [\#9](https://github.com/lsst-it/puppet-cni/pull/9) ([jhoblitt](https://github.com/jhoblitt))

## [v2.0.0](https://github.com/lsst-it/puppet-cni/tree/v2.0.0) (2022-02-01)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/1.0.1...v2.0.0)

**Merged pull requests:**

- update to ~ voxpupuli 5.1.0 plumbing [\#8](https://github.com/lsst-it/puppet-cni/pull/8) ([jhoblitt](https://github.com/jhoblitt))

## [1.0.1](https://github.com/lsst-it/puppet-cni/tree/1.0.1) (2022-01-21)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/1.0.0...1.0.1)

**Merged pull requests:**

- prune bogus README ToC entries [\#7](https://github.com/lsst-it/puppet-cni/pull/7) ([jhoblitt](https://github.com/jhoblitt))

## [1.0.0](https://github.com/lsst-it/puppet-cni/tree/1.0.0) (2021-06-16)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/0.1.2...1.0.0)

**Merged pull requests:**

- allow camptocamp/systemd 3.x [\#6](https://github.com/lsst-it/puppet-cni/pull/6) ([jhoblitt](https://github.com/jhoblitt))

## [0.1.2](https://github.com/lsst-it/puppet-cni/tree/0.1.2) (2021-01-29)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/0.1.1...0.1.2)

**Merged pull requests:**

- fix typo in cni-dhcp.socket.epp [\#5](https://github.com/lsst-it/puppet-cni/pull/5) ([jhoblitt](https://github.com/jhoblitt))

## [0.1.1](https://github.com/lsst-it/puppet-cni/tree/0.1.1) (2021-01-29)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/0.1.0...0.1.1)

**Merged pull requests:**

- add metadata.json fields required by puppetforge [\#4](https://github.com/lsst-it/puppet-cni/pull/4) ([jhoblitt](https://github.com/jhoblitt))

## [0.1.0](https://github.com/lsst-it/puppet-cni/tree/0.1.0) (2021-01-29)

[Full Changelog](https://github.com/lsst-it/puppet-cni/compare/c3af5adafada00fbb9d4b3eb0cd90616fae11de5...0.1.0)

**Merged pull requests:**

- add plugin installation & support for cni-dhcp service [\#3](https://github.com/lsst-it/puppet-cni/pull/3) ([jhoblitt](https://github.com/jhoblitt))
- more basic plumbing [\#2](https://github.com/lsst-it/puppet-cni/pull/2) ([jhoblitt](https://github.com/jhoblitt))
- initial plumbing [\#1](https://github.com/lsst-it/puppet-cni/pull/1) ([jhoblitt](https://github.com/jhoblitt))



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
