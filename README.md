# cni

## Table of Contents

1. [Overview](#overview)
1. [Description](#description)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)

## Overview

Installs and manages [CNI](https://www.cni.dev/) software.

## Description

This module is intended to support the selective installation of CNI reference
plugins. It specifically in intended to co-exist with
[`rke`](https://rancher.com/docs/rke/latest/en/) installing, managing, and
upgrading its own set of CNI plugins into `/opt/cni/bin`.  It is selective in
that only explicitly enumerated CNI reference plugins are install as symlinks
in `/opt/cni/bin`.

## Usage

### Plugin Install Example

```puppet
class { 'cni::plugins':
  enable => [
    'macvlan',
    'ipvlan',
  ]
}
```

### DHCP Service Example

```puppet
class { 'cni::plugins::dhcp': }
```

### Explicit Plugin Release Version Example

```puppet
class { cni::plugins:
  version       => '0.9.0',
  checksum_type => 'sha256',
  checksum      => '58a58d389895ba9f9bbd3ef330f186c0bb7484136d0bfb9b50152eed55d9ec24',
}
class { 'cni::plugins::dhcp': }
```

## Reference

See [REFERENCE](REFERENCE.md)
