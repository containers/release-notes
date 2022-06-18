- [buildah main](#buildah-main)
- [Changelog since v1.26.0](#changelog-since-v1260)
  - [Changes by Kind](#changes-by-kind)
    - [Other](#other)
    - [Bug or Regression](#bug-or-regression)
    - [Uncategorized](#uncategorized)
  - [Dependencies](#dependencies)
    - [Added](#added)
    - [Changed](#changed)
    - [Removed](#removed)

# buildah main

The release notes have been generated for the commit range
[v1.26.0...5745cac703871b1e3873c1d14c29316a0cd91da7](https://github.com/containers/buildah/compare/v1.26.0...5745cac703871b1e3873c1d14c29316a0cd91da7) on Sat Jun 18 05:54:12 AM MDT 2022.

# Changelog since v1.26.0

## Changes by Kind

### Other
 - Implement limited support for macOS (darwin) allowing users to perform some image operations (`from`, `rm`, `mount`, `umount`...) on this OS. ([#4048](https://github.com/containers/buildah/pull/4048), [@slp](https://github.com/slp))

### Bug or Regression
 - Buildah will now default correctly to google nameservers in /etc/resolv.conf if no servers are found in the hosts resolv.conf or otherwise specified via config ([#3986](https://github.com/containers/buildah/pull/3986), [@Luap99](https://github.com/Luap99))

### Uncategorized
 - Add a new `NoOverwriteNonDirDir` option to `copier.Put` to prevent a non-directory from being overwritten by a directory. ([#4043](https://github.com/containers/buildah/pull/4043), [@vrothberg](https://github.com/vrothberg))
 - Add support for --logsplit which allows users to split logfile with build logs for each platform ([#4034](https://github.com/containers/buildah/pull/4034), [@flouthoc](https://github.com/flouthoc))
 - Buildah now supports renaming devices while performing a build ([#4014](https://github.com/containers/buildah/pull/4014), [@flouthoc](https://github.com/flouthoc))

## Dependencies

### Added
_Nothing has changed._

### Changed
- github.com/Microsoft/hcsshim: [v0.9.2 → v0.9.3](https://github.com/Microsoft/hcsshim/compare/v0.9.2...v0.9.3)
- github.com/cilium/ebpf: [v0.7.0 → v0.9.0](https://github.com/cilium/ebpf/compare/v0.7.0...v0.9.0)
- github.com/containerd/containerd: [v1.6.4 → v1.6.6](https://github.com/containerd/containerd/compare/v1.6.4...v1.6.6)
- github.com/containerd/go-cni: [v1.1.5 → v1.1.6](https://github.com/containerd/go-cni/compare/v1.1.5...v1.1.6)
- github.com/containernetworking/cni: [v1.1.0 → v1.1.1](https://github.com/containernetworking/cni/compare/v1.1.0...v1.1.1)
- github.com/containers/common: [v0.48.0 → dbecabb](https://github.com/containers/common/compare/v0.48.0...dbecabb)
- github.com/containers/image/v5: [v5.21.1 → e594853](https://github.com/containers/image/v5/compare/v5.21.1...e594853)
- github.com/containers/storage: [v1.40.2 → 8951d01](https://github.com/containers/storage/compare/v1.40.2...8951d01)
- github.com/docker/docker: [v20.10.14+incompatible → v20.10.17+incompatible](https://github.com/docker/docker/compare/v20.10.14...v20.10.17)
- github.com/frankban/quicktest: [v1.11.3 → v1.14.0](https://github.com/frankban/quicktest/compare/v1.11.3...v1.14.0)
- github.com/fsouza/go-dockerclient: [v1.7.11 → v1.8.1](https://github.com/fsouza/go-dockerclient/compare/v1.7.11...v1.8.1)
- github.com/klauspost/compress: [v1.15.2 → v1.15.6](https://github.com/klauspost/compress/compare/v1.15.2...v1.15.6)
- github.com/kr/pretty: [v0.2.1 → v0.3.0](https://github.com/kr/pretty/compare/v0.2.1...v0.3.0)
- github.com/moby/sys/mount: [v0.2.0 → v0.3.3](https://github.com/moby/sys/mount/compare/v0.2.0...v0.3.3)
- github.com/moby/sys/mountinfo: [v0.6.1 → v0.6.2](https://github.com/moby/sys/mountinfo/compare/v0.6.1...v0.6.2)
- github.com/opencontainers/runc: [v1.1.1 → v1.1.3](https://github.com/opencontainers/runc/compare/v1.1.1...v1.1.3)
- github.com/proglottis/gpgme: [v0.1.1 → v0.1.2](https://github.com/proglottis/gpgme/compare/v0.1.1...v0.1.2)
- github.com/rogpeppe/go-internal: [v1.3.0 → v1.6.1](https://github.com/rogpeppe/go-internal/compare/v1.3.0...v1.6.1)
- github.com/seccomp/libseccomp-golang: [3879420 → f33da4d](https://github.com/seccomp/libseccomp-golang/compare/3879420...f33da4d)
- github.com/sirupsen/logrus: [v1.4.2 → v1.8.1](https://github.com/sirupsen/logrus/compare/v1.4.2...v1.8.1)
- github.com/stretchr/testify: [v1.7.1 → v1.7.2](https://github.com/stretchr/testify/compare/v1.7.1...v1.7.2)
- github.com/urfave/cli: [v1.22.4 → v1.22.9](https://github.com/urfave/cli/compare/v1.22.4...v1.22.9)
- golang.org/x/sys: 9388b58 → bc2c85a
- golang.org/x/term: 03fcf44 → 065cf7b
- google.golang.org/protobuf: v1.27.1 → v1.28.0
- gopkg.in/yaml.v3: 496545a → v3.0.1

### Removed
- github.com/docker/libnetwork: [5a177b7](https://github.com/docker/libnetwork/tree/5a177b7)
- github.com/ishidawataru/sctp: [f2269e6](https://github.com/ishidawataru/sctp/tree/f2269e6)
