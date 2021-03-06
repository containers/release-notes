- [buildah main](#buildah-main)
- [Changelog since v1.26.0](#changelog-since-v1260)
  - [Changes by Kind](#changes-by-kind)
    - [Other](#other)
    - [Feature](#feature)
    - [Documentation](#documentation)
    - [Bug or Regression](#bug-or-regression)
    - [Uncategorized](#uncategorized)
  - [Dependencies](#dependencies)
    - [Added](#added)
    - [Changed](#changed)
    - [Removed](#removed)

# buildah main

The release notes have been generated for the commit range
[v1.26.0...75f99cce22ec75e23360ac575b8f6a1c527582f2](https://github.com/containers/buildah/compare/v1.26.0...75f99cce22ec75e23360ac575b8f6a1c527582f2) on Mon Jul 18 12:40:21 PM MDT 2022.

# Changelog since v1.26.0

## Changes by Kind

### Other
 - Implement limited support for macOS (darwin) allowing users to perform some image operations (`from`, `rm`, `mount`, `umount`...) on this OS. ([#4048](https://github.com/containers/buildah/pull/4048), [@slp](https://github.com/slp))

### Feature
 - The default errno value is honored when using seccomp with --isolation=chroot ([#4099](https://github.com/containers/buildah/pull/4099), [@giuseppe](https://github.com/giuseppe))

### Documentation
 - Improve the documentation of `buildah pull --policy`. ([#4098](https://github.com/containers/buildah/pull/4098), [@vrothberg](https://github.com/vrothberg))

### Bug or Regression
 - Buildah will now default correctly to google nameservers in /etc/resolv.conf if no servers are found in the hosts resolv.conf or otherwise specified via config ([#3986](https://github.com/containers/buildah/pull/3986), [@Luap99](https://github.com/Luap99))

### Uncategorized
 - Add a new `NoOverwriteNonDirDir` option to `copier.Put` to prevent a non-directory from being overwritten by a directory. ([#4043](https://github.com/containers/buildah/pull/4043), [@vrothberg](https://github.com/vrothberg))
 - Add support for --logsplit which allows users to split logfile with build logs for each platform ([#4034](https://github.com/containers/buildah/pull/4034), [@flouthoc](https://github.com/flouthoc))
 - Buildah now supports renaming devices while performing a build ([#4014](https://github.com/containers/buildah/pull/4014), [@flouthoc](https://github.com/flouthoc))
 - Fix: users can generate build output of image even when contents of build container is not commited ([#4097](https://github.com/containers/buildah/pull/4097), [@flouthoc](https://github.com/flouthoc))
 - This change introduces support to make use of the recently fixed subid library check for Fedora and EL-family builds. ([#4078](https://github.com/containers/buildah/pull/4078), [@mhjacks](https://github.com/mhjacks))

## Dependencies

### Added
- cloud.google.com/go/compute: v1.7.0
- cloud.google.com/go/iam: v0.3.0
- cloud.google.com/go/kms: v1.4.0
- github.com/Azure/go-autorest/autorest/azure/auth: [v0.5.11](https://github.com/Azure/go-autorest/autorest/azure/auth/tree/v0.5.11)
- github.com/Azure/go-autorest/autorest/azure/cli: [v0.4.5](https://github.com/Azure/go-autorest/autorest/azure/cli/tree/v0.4.5)
- github.com/Azure/go-autorest/autorest/to: [v0.4.0](https://github.com/Azure/go-autorest/autorest/to/tree/v0.4.0)
- github.com/Azure/go-autorest/autorest/validation: [v0.3.1](https://github.com/Azure/go-autorest/autorest/validation/tree/v0.3.1)
- github.com/ReneKroon/ttlcache/v2: [v2.11.0](https://github.com/ReneKroon/ttlcache/v2/tree/v2.11.0)
- github.com/aws/aws-sdk-go-v2/config: [v1.15.11](https://github.com/aws/aws-sdk-go-v2/config/tree/v1.15.11)
- github.com/aws/aws-sdk-go-v2/credentials: [v1.12.6](https://github.com/aws/aws-sdk-go-v2/credentials/tree/v1.12.6)
- github.com/aws/aws-sdk-go-v2/feature/ec2/imds: [v1.12.6](https://github.com/aws/aws-sdk-go-v2/feature/ec2/imds/tree/v1.12.6)
- github.com/aws/aws-sdk-go-v2/internal/configsources: [v1.1.12](https://github.com/aws/aws-sdk-go-v2/internal/configsources/tree/v1.1.12)
- github.com/aws/aws-sdk-go-v2/internal/endpoints/v2: [v2.4.6](https://github.com/aws/aws-sdk-go-v2/internal/endpoints/v2/tree/v2.4.6)
- github.com/aws/aws-sdk-go-v2/internal/ini: [v1.3.13](https://github.com/aws/aws-sdk-go-v2/internal/ini/tree/v1.3.13)
- github.com/aws/aws-sdk-go-v2/service/internal/presigned-url: [v1.9.6](https://github.com/aws/aws-sdk-go-v2/service/internal/presigned-url/tree/v1.9.6)
- github.com/aws/aws-sdk-go-v2/service/kms: [v1.17.3](https://github.com/aws/aws-sdk-go-v2/service/kms/tree/v1.17.3)
- github.com/aws/aws-sdk-go-v2/service/sso: [v1.11.9](https://github.com/aws/aws-sdk-go-v2/service/sso/tree/v1.11.9)
- github.com/aws/aws-sdk-go-v2/service/sts: [v1.16.7](https://github.com/aws/aws-sdk-go-v2/service/sts/tree/v1.16.7)
- github.com/aws/aws-sdk-go-v2: [v1.16.5](https://github.com/aws/aws-sdk-go-v2/tree/v1.16.5)
- github.com/aws/smithy-go: [v1.11.3](https://github.com/aws/smithy-go/tree/v1.11.3)
- github.com/beeker1121/goque: [d618510](https://github.com/beeker1121/goque/tree/d618510)
- github.com/cenkalti/backoff/v3: [v3.2.2](https://github.com/cenkalti/backoff/v3/tree/v3.2.2)
- github.com/codahale/rfc6979: [6a90f24](https://github.com/codahale/rfc6979/tree/6a90f24)
- github.com/coreos/go-oidc/v3: [v3.2.0](https://github.com/coreos/go-oidc/v3/tree/v3.2.0)
- github.com/dgryski/go-rendezvous: [9f7001d](https://github.com/dgryski/go-rendezvous/tree/9f7001d)
- github.com/dimchansky/utfbom: [v1.1.1](https://github.com/dimchansky/utfbom/tree/v1.1.1)
- github.com/eggsampler/acme/v3: [v3.2.1](https://github.com/eggsampler/acme/v3/tree/v3.2.1)
- github.com/facebookgo/clock: [600d898](https://github.com/facebookgo/clock/tree/600d898)
- github.com/facebookgo/limitgroup: [6abd8d7](https://github.com/facebookgo/limitgroup/tree/6abd8d7)
- github.com/facebookgo/muster: [fd3d795](https://github.com/facebookgo/muster/tree/fd3d795)
- github.com/flynn/go-docopt: [f6dd2eb](https://github.com/flynn/go-docopt/tree/f6dd2eb)
- github.com/go-gorp/gorp/v3: [v3.0.2](https://github.com/go-gorp/gorp/v3/tree/v3.0.2)
- github.com/go-redis/redis/v8: [v8.11.4](https://github.com/go-redis/redis/v8/tree/v8.11.4)
- github.com/go-rod/rod: [v0.107.3](https://github.com/go-rod/rod/tree/v0.107.3)
- github.com/go-sql-driver/mysql: [v1.5.0](https://github.com/go-sql-driver/mysql/tree/v1.5.0)
- github.com/go-test/deep: [v1.0.8](https://github.com/go-test/deep/tree/v1.0.8)
- github.com/golang-jwt/jwt/v4: [v4.2.0](https://github.com/golang-jwt/jwt/v4/tree/v4.2.0)
- github.com/golang/snappy: [v0.0.4](https://github.com/golang/snappy/tree/v0.0.4)
- github.com/google/certificate-transparency-go: [c25855a](https://github.com/google/certificate-transparency-go/tree/c25855a)
- github.com/googleapis/enterprise-certificate-proxy: [v0.1.0](https://github.com/googleapis/enterprise-certificate-proxy/tree/v0.1.0)
- github.com/hashicorp/go-hclog: [v1.1.0](https://github.com/hashicorp/go-hclog/tree/v1.1.0)
- github.com/hashicorp/go-plugin: [v1.4.3](https://github.com/hashicorp/go-plugin/tree/v1.4.3)
- github.com/hashicorp/go-retryablehttp: [v0.7.0](https://github.com/hashicorp/go-retryablehttp/tree/v0.7.0)
- github.com/hashicorp/go-secure-stdlib/mlock: [v0.1.2](https://github.com/hashicorp/go-secure-stdlib/mlock/tree/v0.1.2)
- github.com/hashicorp/go-secure-stdlib/parseutil: [v0.1.6](https://github.com/hashicorp/go-secure-stdlib/parseutil/tree/v0.1.6)
- github.com/hashicorp/go-secure-stdlib/strutil: [v0.1.2](https://github.com/hashicorp/go-secure-stdlib/strutil/tree/v0.1.2)
- github.com/hashicorp/go-version: [v1.4.0](https://github.com/hashicorp/go-version/tree/v1.4.0)
- github.com/hashicorp/vault/api: [v1.7.2](https://github.com/hashicorp/vault/api/tree/v1.7.2)
- github.com/hashicorp/vault/sdk: [v0.5.1](https://github.com/hashicorp/vault/sdk/tree/v0.5.1)
- github.com/hashicorp/yamux: [0bc27b2](https://github.com/hashicorp/yamux/tree/0bc27b2)
- github.com/honeycombio/beeline-go: [v1.1.1](https://github.com/honeycombio/beeline-go/tree/v1.1.1)
- github.com/honeycombio/libhoney-go: [v1.15.2](https://github.com/honeycombio/libhoney-go/tree/v1.15.2)
- github.com/jmhodges/clock: [880ee4c](https://github.com/jmhodges/clock/tree/880ee4c)
- github.com/letsencrypt/boulder: [b23ab96](https://github.com/letsencrypt/boulder/tree/b23ab96)
- github.com/letsencrypt/challtestsrv: [v1.2.1](https://github.com/letsencrypt/challtestsrv/tree/v1.2.1)
- github.com/letsencrypt/pkcs11key/v4: [v4.0.0](https://github.com/letsencrypt/pkcs11key/v4/tree/v4.0.0)
- github.com/mitchellh/copystructure: [v1.2.0](https://github.com/mitchellh/copystructure/tree/v1.2.0)
- github.com/mitchellh/reflectwalk: [v1.0.2](https://github.com/mitchellh/reflectwalk/tree/v1.0.2)
- github.com/oklog/run: [v1.1.0](https://github.com/oklog/run/tree/v1.1.0)
- github.com/pierrec/lz4: [v2.6.1+incompatible](https://github.com/pierrec/lz4/tree/v2.6.1)
- github.com/pkg/browser: [681adbf](https://github.com/pkg/browser/tree/681adbf)
- github.com/ryanuber/go-glob: [v1.0.0](https://github.com/ryanuber/go-glob/tree/v1.0.0)
- github.com/secure-systems-lab/go-securesystemslib: [v0.4.0](https://github.com/secure-systems-lab/go-securesystemslib/tree/v0.4.0)
- github.com/segmentio/ksuid: [v1.0.4](https://github.com/segmentio/ksuid/tree/v1.0.4)
- github.com/sigstore/sigstore: [b95fc0d](https://github.com/sigstore/sigstore/tree/b95fc0d)
- github.com/skratchdot/open-golang: [eef8423](https://github.com/skratchdot/open-golang/tree/eef8423)
- github.com/syndtr/goleveldb: [2ae1ddf](https://github.com/syndtr/goleveldb/tree/2ae1ddf)
- github.com/theupdateframework/go-tuf: [v0.3.0](https://github.com/theupdateframework/go-tuf/tree/v0.3.0)
- github.com/titanous/rocacheck: [afe7314](https://github.com/titanous/rocacheck/tree/afe7314)
- github.com/vmihailenco/msgpack/v4: [v4.3.12](https://github.com/vmihailenco/msgpack/v4/tree/v4.3.12)
- github.com/vmihailenco/tagparser: [v0.1.1](https://github.com/vmihailenco/tagparser/tree/v0.1.1)
- github.com/weppos/publicsuffix-go: [9a40b60](https://github.com/weppos/publicsuffix-go/tree/9a40b60)
- github.com/ysmood/goob: [v0.4.0](https://github.com/ysmood/goob/tree/v0.4.0)
- github.com/ysmood/gson: [v0.7.1](https://github.com/ysmood/gson/tree/v0.7.1)
- github.com/ysmood/leakless: [v0.7.0](https://github.com/ysmood/leakless/tree/v0.7.0)
- github.com/zmap/zcrypto: [6f9bc4a](https://github.com/zmap/zcrypto/tree/6f9bc4a)
- github.com/zmap/zlint/v3: [cb17369](https://github.com/zmap/zlint/v3/tree/cb17369)
- go.opentelemetry.io/contrib/propagators: v0.19.0
- gopkg.in/alexcesaro/statsd.v2: v2.0.0

### Changed
- bazil.org/fuse: 5883e5a ??? 371fbbd
- cloud.google.com/go: v0.81.0 ??? v0.102.0
- github.com/Azure/azure-sdk-for-go: [v16.2.1+incompatible ??? v66.0.0+incompatible](https://github.com/Azure/azure-sdk-for-go/compare/v16.2.1...v66.0.0)
- github.com/Azure/go-autorest/autorest/adal: [v0.9.13 ??? v0.9.18](https://github.com/Azure/go-autorest/autorest/adal/compare/v0.9.13...v0.9.18)
- github.com/Azure/go-autorest/autorest: [v0.11.18 ??? v0.11.27](https://github.com/Azure/go-autorest/autorest/compare/v0.11.18...v0.11.27)
- github.com/Microsoft/hcsshim: [v0.9.2 ??? v0.9.3](https://github.com/Microsoft/hcsshim/compare/v0.9.2...v0.9.3)
- github.com/NYTimes/gziphandler: [v1.1.1 ??? 56545f4](https://github.com/NYTimes/gziphandler/compare/v1.1.1...56545f4)
- github.com/ProtonMail/go-crypto: [a948124 ??? 88bb529](https://github.com/ProtonMail/go-crypto/compare/a948124...88bb529)
- github.com/armon/go-metrics: [f0300d1 ??? v0.3.10](https://github.com/armon/go-metrics/compare/f0300d1...v0.3.10)
- github.com/armon/go-radix: [7fddfc3 ??? v1.0.0](https://github.com/armon/go-radix/compare/7fddfc3...v1.0.0)
- github.com/aws/aws-sdk-go: [v1.15.11 ??? v1.44.44](https://github.com/aws/aws-sdk-go/compare/v1.15.11...v1.44.44)
- github.com/cilium/ebpf: [v0.7.0 ??? v0.9.0](https://github.com/cilium/ebpf/compare/v0.7.0...v0.9.0)
- github.com/cockroachdb/datadriven: [bf6692d ??? 80d97fb](https://github.com/cockroachdb/datadriven/compare/bf6692d...80d97fb)
- github.com/containerd/containerd: [v1.6.4 ??? v1.6.6](https://github.com/containerd/containerd/compare/v1.6.4...v1.6.6)
- github.com/containerd/go-cni: [v1.1.5 ??? v1.1.6](https://github.com/containerd/go-cni/compare/v1.1.5...v1.1.6)
- github.com/containerd/stargz-snapshotter/estargz: [v0.11.4 ??? v0.12.0](https://github.com/containerd/stargz-snapshotter/estargz/compare/v0.11.4...v0.12.0)
- github.com/containernetworking/cni: [v1.1.0 ??? v1.1.1](https://github.com/containernetworking/cni/compare/v1.1.0...v1.1.1)
- github.com/containers/common: [v0.48.0 ??? 2ac10fa](https://github.com/containers/common/compare/v0.48.0...2ac10fa)
- github.com/containers/image/v5: [v5.21.1 ??? 2bb3f3e](https://github.com/containers/image/v5/compare/v5.21.1...2bb3f3e)
- github.com/containers/ocicrypt: [566b808 ??? v1.1.5](https://github.com/containers/ocicrypt/compare/566b808...v1.1.5)
- github.com/containers/storage: [v1.40.2 ??? fc9b0ff](https://github.com/containers/storage/compare/v1.40.2...fc9b0ff)
- github.com/coreos/etcd: [v3.3.13+incompatible ??? v3.3.10+incompatible](https://github.com/coreos/etcd/compare/v3.3.13...v3.3.10)
- github.com/cpuguy83/go-md2man/v2: [v2.0.1 ??? v2.0.2](https://github.com/cpuguy83/go-md2man/v2/compare/v2.0.1...v2.0.2)
- github.com/docker/cli: [a8ff7f8 ??? v20.10.16+incompatible](https://github.com/docker/cli/compare/a8ff7f8...v20.10.16)
- github.com/docker/docker: [v20.10.14+incompatible ??? v20.10.17+incompatible](https://github.com/docker/docker/compare/v20.10.14...v20.10.17)
- github.com/envoyproxy/go-control-plane: [cf90f65 ??? 49ff273](https://github.com/envoyproxy/go-control-plane/compare/cf90f65...49ff273)
- github.com/evanphx/json-patch: [v4.11.0+incompatible ??? v4.9.0+incompatible](https://github.com/evanphx/json-patch/compare/v4.11.0...v4.9.0)
- github.com/fatih/color: [v1.7.0 ??? v1.13.0](https://github.com/fatih/color/compare/v1.7.0...v1.13.0)
- github.com/form3tech-oss/jwt-go: [v3.2.3+incompatible ??? v3.2.2+incompatible](https://github.com/form3tech-oss/jwt-go/compare/v3.2.3...v3.2.2)
- github.com/frankban/quicktest: [v1.11.3 ??? v1.14.0](https://github.com/frankban/quicktest/compare/v1.11.3...v1.14.0)
- github.com/fsnotify/fsnotify: [v1.4.9 ??? v1.5.4](https://github.com/fsnotify/fsnotify/compare/v1.4.9...v1.5.4)
- github.com/fsouza/go-dockerclient: [v1.7.11 ??? v1.8.1](https://github.com/fsouza/go-dockerclient/compare/v1.7.11...v1.8.1)
- github.com/go-openapi/jsonpointer: [v0.19.5 ??? v0.19.3](https://github.com/go-openapi/jsonpointer/compare/v0.19.5...v0.19.3)
- github.com/go-openapi/jsonreference: [v0.19.5 ??? v0.19.3](https://github.com/go-openapi/jsonreference/compare/v0.19.5...v0.19.3)
- github.com/go-openapi/swag: [v0.19.14 ??? v0.19.5](https://github.com/go-openapi/swag/compare/v0.19.14...v0.19.5)
- github.com/google/btree: [v1.0.1 ??? v1.0.0](https://github.com/google/btree/compare/v1.0.1...v1.0.0)
- github.com/google/go-containerregistry: [v0.5.1 ??? v0.10.0](https://github.com/google/go-containerregistry/compare/v0.5.1...v0.10.0)
- github.com/google/martian/v3: [v3.1.0 ??? v3.0.0](https://github.com/google/martian/v3/compare/v3.1.0...v3.0.0)
- github.com/googleapis/gax-go/v2: [v2.0.5 ??? v2.4.0](https://github.com/googleapis/gax-go/v2/compare/v2.0.5...v2.4.0)
- github.com/googleapis/gnostic: [v0.5.5 ??? v0.4.1](https://github.com/googleapis/gnostic/compare/v0.5.5...v0.4.1)
- github.com/hashicorp/go-cleanhttp: [v0.5.1 ??? v0.5.2](https://github.com/hashicorp/go-cleanhttp/compare/v0.5.1...v0.5.2)
- github.com/hashicorp/go-immutable-radix: [v1.0.0 ??? v1.3.1](https://github.com/hashicorp/go-immutable-radix/compare/v1.0.0...v1.3.1)
- github.com/hashicorp/go-rootcerts: [v1.0.0 ??? v1.0.2](https://github.com/hashicorp/go-rootcerts/compare/v1.0.0...v1.0.2)
- github.com/hashicorp/go-sockaddr: [v1.0.0 ??? v1.0.2](https://github.com/hashicorp/go-sockaddr/compare/v1.0.0...v1.0.2)
- github.com/hashicorp/go-uuid: [v1.0.1 ??? v1.0.2](https://github.com/hashicorp/go-uuid/compare/v1.0.1...v1.0.2)
- github.com/hashicorp/golang-lru: [v0.5.1 ??? v0.5.4](https://github.com/hashicorp/golang-lru/compare/v0.5.1...v0.5.4)
- github.com/imdario/mergo: [v0.3.12 ??? v0.3.13](https://github.com/imdario/mergo/compare/v0.3.12...v0.3.13)
- github.com/j-keck/arping: [v1.0.2 ??? 2cf9dc6](https://github.com/j-keck/arping/compare/v1.0.2...2cf9dc6)
- github.com/jmespath/go-jmespath: [bd40a43 ??? v0.4.0](https://github.com/jmespath/go-jmespath/compare/bd40a43...v0.4.0)
- github.com/jonboulle/clockwork: [v0.2.2 ??? v0.1.0](https://github.com/jonboulle/clockwork/compare/v0.2.2...v0.1.0)
- github.com/klauspost/compress: [v1.15.2 ??? v1.15.8](https://github.com/klauspost/compress/compare/v1.15.2...v1.15.8)
- github.com/kr/pretty: [v0.2.1 ??? v0.3.0](https://github.com/kr/pretty/compare/v0.2.1...v0.3.0)
- github.com/magiconair/properties: [v1.8.1 ??? v1.8.0](https://github.com/magiconair/properties/compare/v1.8.1...v1.8.0)
- github.com/mailru/easyjson: [v0.7.6 ??? v0.7.0](https://github.com/mailru/easyjson/compare/v0.7.6...v0.7.0)
- github.com/mattn/go-colorable: [v0.0.9 ??? v0.1.12](https://github.com/mattn/go-colorable/compare/v0.0.9...v0.1.12)
- github.com/mattn/go-isatty: [v0.0.4 ??? v0.0.14](https://github.com/mattn/go-isatty/compare/v0.0.4...v0.0.14)
- github.com/miekg/dns: [v1.0.14 ??? v1.1.45](https://github.com/miekg/dns/compare/v1.0.14...v1.1.45)
- github.com/mitchellh/go-testing-interface: [v1.0.0 ??? v1.14.1](https://github.com/mitchellh/go-testing-interface/compare/v1.0.0...v1.14.1)
- github.com/mitchellh/mapstructure: [v1.1.2 ??? v1.5.0](https://github.com/mitchellh/mapstructure/compare/v1.1.2...v1.5.0)
- github.com/moby/sys/mount: [v0.2.0 ??? v0.3.3](https://github.com/moby/sys/mount/compare/v0.2.0...v0.3.3)
- github.com/moby/sys/mountinfo: [v0.6.1 ??? v0.6.2](https://github.com/moby/sys/mountinfo/compare/v0.6.1...v0.6.2)
- github.com/opencontainers/runc: [v1.1.1 ??? v1.1.3](https://github.com/opencontainers/runc/compare/v1.1.1...v1.1.3)
- github.com/openshift/imagebuilder: [009dbc6 ??? 4151e43](https://github.com/openshift/imagebuilder/compare/009dbc6...4151e43)
- github.com/proglottis/gpgme: [v0.1.1 ??? v0.1.3](https://github.com/proglottis/gpgme/compare/v0.1.1...v0.1.3)
- github.com/prometheus/client_golang: [v1.11.1 ??? v1.12.1](https://github.com/prometheus/client_golang/compare/v1.11.1...v1.12.1)
- github.com/prometheus/common: [v0.30.0 ??? v0.32.1](https://github.com/prometheus/common/compare/v0.30.0...v0.32.1)
- github.com/rogpeppe/go-internal: [v1.3.0 ??? v1.6.1](https://github.com/rogpeppe/go-internal/compare/v1.3.0...v1.6.1)
- github.com/seccomp/libseccomp-golang: [3879420 ??? v0.10.0](https://github.com/seccomp/libseccomp-golang/compare/3879420...v0.10.0)
- github.com/sirupsen/logrus: [v1.4.2 ??? v1.8.1](https://github.com/sirupsen/logrus/compare/v1.4.2...v1.8.1)
- github.com/smartystreets/goconvey: [v1.6.4 ??? 68dc04a](https://github.com/smartystreets/goconvey/compare/v1.6.4...68dc04a)
- github.com/soheilhy/cmux: [v0.1.5 ??? v0.1.4](https://github.com/soheilhy/cmux/compare/v0.1.5...v0.1.4)
- github.com/spf13/cobra: [v1.4.0 ??? v1.5.0](https://github.com/spf13/cobra/compare/v1.4.0...v1.5.0)
- github.com/spf13/viper: [v1.7.0 ??? v1.4.0](https://github.com/spf13/viper/compare/v1.7.0...v1.4.0)
- github.com/stretchr/objx: [v0.2.0 ??? v0.4.0](https://github.com/stretchr/objx/compare/v0.2.0...v0.4.0)
- github.com/stretchr/testify: [v1.7.1 ??? v1.8.0](https://github.com/stretchr/testify/compare/v1.7.1...v1.8.0)
- github.com/sylabs/sif/v2: [v2.7.0 ??? v2.7.1](https://github.com/sylabs/sif/v2/compare/v2.7.0...v2.7.1)
- github.com/tmc/grpc-websocket-proxy: [e5319fd ??? 0ad062e](https://github.com/tmc/grpc-websocket-proxy/compare/e5319fd...0ad062e)
- github.com/urfave/cli: [v1.22.4 ??? v1.22.9](https://github.com/urfave/cli/compare/v1.22.4...v1.22.9)
- github.com/vbauerster/mpb/v7: [v7.4.1 ??? v7.4.2](https://github.com/vbauerster/mpb/v7/compare/v7.4.1...v7.4.2)
- github.com/yuin/goldmark: [v1.4.1 ??? v1.3.5](https://github.com/yuin/goldmark/compare/v1.4.1...v1.3.5)
- go.uber.org/atomic: v1.7.0 ??? v1.9.0
- go.uber.org/multierr: v1.6.0 ??? v1.1.0
- go.uber.org/zap: v1.17.0 ??? v1.10.0
- golang.org/x/lint: 6edffad ??? 738671d
- golang.org/x/net: 27dd868 ??? 1bab6f3
- golang.org/x/oauth2: 2bc19b1 ??? fd043fe
- golang.org/x/sync: 036812b ??? 0de741c
- golang.org/x/sys: 9388b58 ??? 87e55d7
- golang.org/x/term: 03fcf44 ??? 065cf7b
- golang.org/x/time: 1f47c86 ??? f0f3c7e
- golang.org/x/xerrors: 5ec99f8 ??? f3a8303
- google.golang.org/api: v0.43.0 ??? v0.86.0
- google.golang.org/genproto: 325a892 ??? 8cd45d7
- google.golang.org/grpc: v1.44.0 ??? v1.47.0
- google.golang.org/protobuf: v1.27.1 ??? v1.28.0
- gopkg.in/square/go-jose.v2: v2.5.1 ??? v2.6.0
- gopkg.in/yaml.v3: 496545a ??? v3.0.1
- k8s.io/kube-openapi: 2043435 ??? d219536
- sigs.k8s.io/apiserver-network-proxy/konnectivity-client: v0.0.22 ??? v0.0.15

### Removed
- cloud.google.com/go/firestore: v1.1.0
- github.com/armon/circbuf: [bbbad09](https://github.com/armon/circbuf/tree/bbbad09)
- github.com/benbjohnson/clock: [v1.0.3](https://github.com/benbjohnson/clock/tree/v1.0.3)
- github.com/bketelsen/crypt: [5cbc8cc](https://github.com/bketelsen/crypt/tree/5cbc8cc)
- github.com/certifi/gocertifi: [2c3bb06](https://github.com/certifi/gocertifi/tree/2c3bb06)
- github.com/cockroachdb/errors: [v1.2.4](https://github.com/cockroachdb/errors/tree/v1.2.4)
- github.com/cockroachdb/logtags: [eb05cc2](https://github.com/cockroachdb/logtags/tree/eb05cc2)
- github.com/docker/libnetwork: [5a177b7](https://github.com/docker/libnetwork/tree/5a177b7)
- github.com/getsentry/raven-go: [v0.2.0](https://github.com/getsentry/raven-go/tree/v0.2.0)
- github.com/hashicorp/consul/api: [v1.1.0](https://github.com/hashicorp/consul/api/tree/v1.1.0)
- github.com/hashicorp/consul/sdk: [v0.1.1](https://github.com/hashicorp/consul/sdk/tree/v0.1.1)
- github.com/hashicorp/go-msgpack: [v0.5.3](https://github.com/hashicorp/go-msgpack/tree/v0.5.3)
- github.com/hashicorp/go-syslog: [v1.0.0](https://github.com/hashicorp/go-syslog/tree/v1.0.0)
- github.com/hashicorp/go.net: [v0.0.1](https://github.com/hashicorp/go.net/tree/v0.0.1)
- github.com/hashicorp/logutils: [v1.0.0](https://github.com/hashicorp/logutils/tree/v1.0.0)
- github.com/hashicorp/mdns: [v1.0.0](https://github.com/hashicorp/mdns/tree/v1.0.0)
- github.com/hashicorp/memberlist: [v0.1.3](https://github.com/hashicorp/memberlist/tree/v0.1.3)
- github.com/hashicorp/serf: [v0.8.2](https://github.com/hashicorp/serf/tree/v0.8.2)
- github.com/ishidawataru/sctp: [f2269e6](https://github.com/ishidawataru/sctp/tree/f2269e6)
- github.com/josharian/intern: [v1.0.0](https://github.com/josharian/intern/tree/v1.0.0)
- github.com/mitchellh/cli: [v1.0.0](https://github.com/mitchellh/cli/tree/v1.0.0)
- github.com/mitchellh/gox: [v0.4.0](https://github.com/mitchellh/gox/tree/v0.4.0)
- github.com/mitchellh/iochan: [v1.0.0](https://github.com/mitchellh/iochan/tree/v1.0.0)
- github.com/opentracing/opentracing-go: [v1.1.0](https://github.com/opentracing/opentracing-go/tree/v1.1.0)
- github.com/pascaldekloe/goe: [57f6aae](https://github.com/pascaldekloe/goe/tree/57f6aae)
- github.com/posener/complete: [v1.1.1](https://github.com/posener/complete/tree/v1.1.1)
- github.com/ryanuber/columnize: [9b3edd6](https://github.com/ryanuber/columnize/tree/9b3edd6)
- github.com/sclevine/agouti: [v3.0.0+incompatible](https://github.com/sclevine/agouti/tree/v3.0.0)
- github.com/sean-/seed: [e2103e2](https://github.com/sean-/seed/tree/e2103e2)
- github.com/stoewer/go-strcase: [v1.2.0](https://github.com/stoewer/go-strcase/tree/v1.2.0)
- github.com/subosito/gotenv: [v1.2.0](https://github.com/subosito/gotenv/tree/v1.2.0)
- github.com/tv42/httpunix: [2ba4b9c](https://github.com/tv42/httpunix/tree/2ba4b9c)
- go.etcd.io/etcd/api/v3: v3.5.0
- go.etcd.io/etcd/client/pkg/v3: v3.5.0
- go.etcd.io/etcd/client/v2: v2.305.0
- go.etcd.io/etcd/client/v3: v3.5.0
- go.etcd.io/etcd/pkg/v3: v3.5.0
- go.etcd.io/etcd/raft/v3: v3.5.0
- go.etcd.io/etcd/server/v3: v3.5.0
- go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp: v0.20.0
- go.opentelemetry.io/contrib: v0.20.0
- go.opentelemetry.io/otel/exporters/otlp: v0.20.0
- go.opentelemetry.io/otel/metric: v0.20.0
- go.opentelemetry.io/otel/oteltest: v0.20.0
- go.opentelemetry.io/otel/sdk/export/metric: v0.20.0
- go.opentelemetry.io/otel/sdk/metric: v0.20.0
- gopkg.in/ini.v1: v1.51.0
