- [buildah main](#buildah-main)
- [Changelog since v1.26.0](#changelog-since-v1260)
  - [Changes by Kind](#changes-by-kind)
    - [Uncategorized](#uncategorized)
  - [Dependencies](#dependencies)
    - [Added](#added)
    - [Changed](#changed)
    - [Removed](#removed)

# buildah main

The release notes have been generated for the commit range
[v1.26.0...005447be07eec196915cd62c7fb8b121a1cdc8e5](https://github.com/containers/buildah/compare/v1.26.0...005447be07eec196915cd62c7fb8b121a1cdc8e5) on Tue Jun  7 08:18:31 PM MDT 2022.

# Changelog since v1.26.0

## Changes by Kind

### Uncategorized
 - Add a new `NoOverwriteNonDirDir` option to `copier.Put` to prevent a non-directory from being overwritten by a directory. ([#4043](https://github.com/containers/buildah/pull/4043), [@vrothberg](https://github.com/vrothberg))
 - Add support for --logsplit which allows users to split logfile with build logs for each platform ([#4034](https://github.com/containers/buildah/pull/4034), [@flouthoc](https://github.com/flouthoc))
 - Buildah now supports renaming devices while performing a build ([#4014](https://github.com/containers/buildah/pull/4014), [@flouthoc](https://github.com/flouthoc))

## Dependencies

### Added
_Nothing has changed._

### Changed
- github.com/Microsoft/hcsshim: [v0.9.2 → v0.9.3](https://github.com/Microsoft/hcsshim/compare/v0.9.2...v0.9.3)
- github.com/containerd/containerd: [v1.6.4 → v1.6.6](https://github.com/containerd/containerd/compare/v1.6.4...v1.6.6)
- github.com/containerd/go-cni: [v1.1.5 → v1.1.6](https://github.com/containerd/go-cni/compare/v1.1.5...v1.1.6)
- github.com/containernetworking/cni: [v1.1.0 → v1.1.1](https://github.com/containernetworking/cni/compare/v1.1.0...v1.1.1)
- github.com/containers/common: [v0.48.0 → 280c6f6](https://github.com/containers/common/compare/v0.48.0...280c6f6)
- github.com/containers/image/v5: [v5.21.1 → e594853](https://github.com/containers/image/v5/compare/v5.21.1...e594853)
- github.com/containers/storage: [v1.40.2 → 5019cd5](https://github.com/containers/storage/compare/v1.40.2...5019cd5)
- github.com/docker/docker: [v20.10.14+incompatible → v20.10.17+incompatible](https://github.com/docker/docker/compare/v20.10.14...v20.10.17)
- github.com/fsouza/go-dockerclient: [v1.7.11 → v1.8.1](https://github.com/fsouza/go-dockerclient/compare/v1.7.11...v1.8.1)
- github.com/klauspost/compress: [v1.15.2 → v1.15.4](https://github.com/klauspost/compress/compare/v1.15.2...v1.15.4)
- github.com/moby/sys/mount: [v0.2.0 → v0.3.3](https://github.com/moby/sys/mount/compare/v0.2.0...v0.3.3)
- github.com/moby/sys/mountinfo: [v0.6.1 → v0.6.2](https://github.com/moby/sys/mountinfo/compare/v0.6.1...v0.6.2)
- github.com/opencontainers/runc: [v1.1.1 → v1.1.2](https://github.com/opencontainers/runc/compare/v1.1.1...v1.1.2)
- github.com/proglottis/gpgme: [v0.1.1 → v0.1.2](https://github.com/proglottis/gpgme/compare/v0.1.1...v0.1.2)
- github.com/stretchr/testify: [v1.7.1 → v1.7.2](https://github.com/stretchr/testify/compare/v1.7.1...v1.7.2)
- golang.org/x/sys: 9388b58 → bc2c85a
- golang.org/x/term: 03fcf44 → 065cf7b
- gopkg.in/yaml.v3: 496545a → v3.0.1

### Removed
_Nothing has changed._
