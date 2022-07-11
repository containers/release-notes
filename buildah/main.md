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
[v1.26.0...e2bf34e9919345339620ee895b17e295f3db6ed5](https://github.com/containers/buildah/compare/v1.26.0...e2bf34e9919345339620ee895b17e295f3db6ed5) on Mon Jul 11 06:00:48 AM MDT 2022.

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
_Nothing has changed._

### Changed
- bazil.org/fuse: 5883e5a → 371fbbd
- cloud.google.com/go: v0.81.0 → v0.65.0
- github.com/Azure/go-autorest/autorest/adal: [v0.9.13 → v0.9.5](https://github.com/Azure/go-autorest/autorest/adal/compare/v0.9.13...v0.9.5)
- github.com/Azure/go-autorest/autorest: [v0.11.18 → v0.11.1](https://github.com/Azure/go-autorest/autorest/compare/v0.11.18...v0.11.1)
- github.com/Azure/go-autorest/logger: [v0.2.1 → v0.2.0](https://github.com/Azure/go-autorest/logger/compare/v0.2.1...v0.2.0)
- github.com/Microsoft/hcsshim: [v0.9.2 → v0.9.3](https://github.com/Microsoft/hcsshim/compare/v0.9.2...v0.9.3)
- github.com/NYTimes/gziphandler: [v1.1.1 → 56545f4](https://github.com/NYTimes/gziphandler/compare/v1.1.1...56545f4)
- github.com/ProtonMail/go-crypto: [a948124 → 88bb529](https://github.com/ProtonMail/go-crypto/compare/a948124...88bb529)
- github.com/cilium/ebpf: [v0.7.0 → v0.9.0](https://github.com/cilium/ebpf/compare/v0.7.0...v0.9.0)
- github.com/cockroachdb/datadriven: [bf6692d → 80d97fb](https://github.com/cockroachdb/datadriven/compare/bf6692d...80d97fb)
- github.com/containerd/containerd: [v1.6.4 → v1.6.6](https://github.com/containerd/containerd/compare/v1.6.4...v1.6.6)
- github.com/containerd/go-cni: [v1.1.5 → v1.1.6](https://github.com/containerd/go-cni/compare/v1.1.5...v1.1.6)
- github.com/containernetworking/cni: [v1.1.0 → v1.1.1](https://github.com/containernetworking/cni/compare/v1.1.0...v1.1.1)
- github.com/containers/common: [v0.48.0 → 7e1563b](https://github.com/containers/common/compare/v0.48.0...7e1563b)
- github.com/containers/image/v5: [v5.21.1 → a78a007](https://github.com/containers/image/v5/compare/v5.21.1...a78a007)
- github.com/containers/ocicrypt: [566b808 → v1.1.5](https://github.com/containers/ocicrypt/compare/566b808...v1.1.5)
- github.com/containers/storage: [v1.40.2 → 388efef](https://github.com/containers/storage/compare/v1.40.2...388efef)
- github.com/coreos/etcd: [v3.3.13+incompatible → v3.3.10+incompatible](https://github.com/coreos/etcd/compare/v3.3.13...v3.3.10)
- github.com/cpuguy83/go-md2man/v2: [v2.0.1 → v2.0.2](https://github.com/cpuguy83/go-md2man/v2/compare/v2.0.1...v2.0.2)
- github.com/docker/docker: [v20.10.14+incompatible → v20.10.17+incompatible](https://github.com/docker/docker/compare/v20.10.14...v20.10.17)
- github.com/evanphx/json-patch: [v4.11.0+incompatible → v4.9.0+incompatible](https://github.com/evanphx/json-patch/compare/v4.11.0...v4.9.0)
- github.com/form3tech-oss/jwt-go: [v3.2.3+incompatible → v3.2.2+incompatible](https://github.com/form3tech-oss/jwt-go/compare/v3.2.3...v3.2.2)
- github.com/frankban/quicktest: [v1.11.3 → v1.14.0](https://github.com/frankban/quicktest/compare/v1.11.3...v1.14.0)
- github.com/fsouza/go-dockerclient: [v1.7.11 → v1.8.1](https://github.com/fsouza/go-dockerclient/compare/v1.7.11...v1.8.1)
- github.com/go-openapi/jsonpointer: [v0.19.5 → v0.19.3](https://github.com/go-openapi/jsonpointer/compare/v0.19.5...v0.19.3)
- github.com/go-openapi/jsonreference: [v0.19.5 → v0.19.3](https://github.com/go-openapi/jsonreference/compare/v0.19.5...v0.19.3)
- github.com/go-openapi/swag: [v0.19.14 → v0.19.5](https://github.com/go-openapi/swag/compare/v0.19.14...v0.19.5)
- github.com/google/btree: [v1.0.1 → v1.0.0](https://github.com/google/btree/compare/v1.0.1...v1.0.0)
- github.com/google/martian/v3: [v3.1.0 → v3.0.0](https://github.com/google/martian/v3/compare/v3.1.0...v3.0.0)
- github.com/googleapis/gnostic: [v0.5.5 → v0.4.1](https://github.com/googleapis/gnostic/compare/v0.5.5...v0.4.1)
- github.com/imdario/mergo: [v0.3.12 → v0.3.13](https://github.com/imdario/mergo/compare/v0.3.12...v0.3.13)
- github.com/j-keck/arping: [v1.0.2 → 2cf9dc6](https://github.com/j-keck/arping/compare/v1.0.2...2cf9dc6)
- github.com/jonboulle/clockwork: [v0.2.2 → v0.1.0](https://github.com/jonboulle/clockwork/compare/v0.2.2...v0.1.0)
- github.com/klauspost/compress: [v1.15.2 → v1.15.6](https://github.com/klauspost/compress/compare/v1.15.2...v1.15.6)
- github.com/kr/pretty: [v0.2.1 → v0.3.0](https://github.com/kr/pretty/compare/v0.2.1...v0.3.0)
- github.com/magiconair/properties: [v1.8.1 → v1.8.0](https://github.com/magiconair/properties/compare/v1.8.1...v1.8.0)
- github.com/mailru/easyjson: [v0.7.6 → v0.7.0](https://github.com/mailru/easyjson/compare/v0.7.6...v0.7.0)
- github.com/moby/sys/mount: [v0.2.0 → v0.3.3](https://github.com/moby/sys/mount/compare/v0.2.0...v0.3.3)
- github.com/moby/sys/mountinfo: [v0.6.1 → v0.6.2](https://github.com/moby/sys/mountinfo/compare/v0.6.1...v0.6.2)
- github.com/opencontainers/runc: [v1.1.1 → v1.1.3](https://github.com/opencontainers/runc/compare/v1.1.1...v1.1.3)
- github.com/proglottis/gpgme: [v0.1.1 → v0.1.2](https://github.com/proglottis/gpgme/compare/v0.1.1...v0.1.2)
- github.com/rogpeppe/go-internal: [v1.3.0 → v1.6.1](https://github.com/rogpeppe/go-internal/compare/v1.3.0...v1.6.1)
- github.com/seccomp/libseccomp-golang: [3879420 → v0.10.0](https://github.com/seccomp/libseccomp-golang/compare/3879420...v0.10.0)
- github.com/sirupsen/logrus: [v1.4.2 → v1.8.1](https://github.com/sirupsen/logrus/compare/v1.4.2...v1.8.1)
- github.com/smartystreets/goconvey: [v1.6.4 → 68dc04a](https://github.com/smartystreets/goconvey/compare/v1.6.4...68dc04a)
- github.com/soheilhy/cmux: [v0.1.5 → v0.1.4](https://github.com/soheilhy/cmux/compare/v0.1.5...v0.1.4)
- github.com/spf13/cobra: [v1.4.0 → v1.5.0](https://github.com/spf13/cobra/compare/v1.4.0...v1.5.0)
- github.com/spf13/viper: [v1.7.0 → v1.4.0](https://github.com/spf13/viper/compare/v1.7.0...v1.4.0)
- github.com/stretchr/objx: [v0.2.0 → v0.4.0](https://github.com/stretchr/objx/compare/v0.2.0...v0.4.0)
- github.com/stretchr/testify: [v1.7.1 → v1.8.0](https://github.com/stretchr/testify/compare/v1.7.1...v1.8.0)
- github.com/sylabs/sif/v2: [v2.7.0 → v2.7.1](https://github.com/sylabs/sif/v2/compare/v2.7.0...v2.7.1)
- github.com/tmc/grpc-websocket-proxy: [e5319fd → 0ad062e](https://github.com/tmc/grpc-websocket-proxy/compare/e5319fd...0ad062e)
- github.com/urfave/cli: [v1.22.4 → v1.22.9](https://github.com/urfave/cli/compare/v1.22.4...v1.22.9)
- github.com/vbauerster/mpb/v7: [v7.4.1 → v7.4.2](https://github.com/vbauerster/mpb/v7/compare/v7.4.1...v7.4.2)
- github.com/yuin/goldmark: [v1.4.1 → v1.3.5](https://github.com/yuin/goldmark/compare/v1.4.1...v1.3.5)
- go.uber.org/atomic: v1.7.0 → v1.4.0
- go.uber.org/multierr: v1.6.0 → v1.1.0
- go.uber.org/zap: v1.17.0 → v1.10.0
- golang.org/x/lint: 6edffad → 738671d
- golang.org/x/mod: 9b9b3d8 → v0.4.2
- golang.org/x/sys: 9388b58 → bc2c85a
- golang.org/x/term: 03fcf44 → 065cf7b
- golang.org/x/tools: v0.1.10 → v0.1.5
- google.golang.org/api: v0.43.0 → v0.30.0
- google.golang.org/protobuf: v1.27.1 → v1.28.0
- gopkg.in/yaml.v3: 496545a → v3.0.1
- k8s.io/kube-openapi: 2043435 → d219536
- sigs.k8s.io/apiserver-network-proxy/konnectivity-client: v0.0.22 → v0.0.15

### Removed
- cloud.google.com/go/firestore: v1.1.0
- github.com/armon/circbuf: [bbbad09](https://github.com/armon/circbuf/tree/bbbad09)
- github.com/armon/go-metrics: [f0300d1](https://github.com/armon/go-metrics/tree/f0300d1)
- github.com/armon/go-radix: [7fddfc3](https://github.com/armon/go-radix/tree/7fddfc3)
- github.com/benbjohnson/clock: [v1.0.3](https://github.com/benbjohnson/clock/tree/v1.0.3)
- github.com/bketelsen/crypt: [5cbc8cc](https://github.com/bketelsen/crypt/tree/5cbc8cc)
- github.com/certifi/gocertifi: [2c3bb06](https://github.com/certifi/gocertifi/tree/2c3bb06)
- github.com/cockroachdb/errors: [v1.2.4](https://github.com/cockroachdb/errors/tree/v1.2.4)
- github.com/cockroachdb/logtags: [eb05cc2](https://github.com/cockroachdb/logtags/tree/eb05cc2)
- github.com/docker/libnetwork: [5a177b7](https://github.com/docker/libnetwork/tree/5a177b7)
- github.com/felixge/httpsnoop: [v1.0.1](https://github.com/felixge/httpsnoop/tree/v1.0.1)
- github.com/getsentry/raven-go: [v0.2.0](https://github.com/getsentry/raven-go/tree/v0.2.0)
- github.com/hashicorp/consul/api: [v1.1.0](https://github.com/hashicorp/consul/api/tree/v1.1.0)
- github.com/hashicorp/consul/sdk: [v0.1.1](https://github.com/hashicorp/consul/sdk/tree/v0.1.1)
- github.com/hashicorp/go-cleanhttp: [v0.5.1](https://github.com/hashicorp/go-cleanhttp/tree/v0.5.1)
- github.com/hashicorp/go-immutable-radix: [v1.0.0](https://github.com/hashicorp/go-immutable-radix/tree/v1.0.0)
- github.com/hashicorp/go-msgpack: [v0.5.3](https://github.com/hashicorp/go-msgpack/tree/v0.5.3)
- github.com/hashicorp/go-rootcerts: [v1.0.0](https://github.com/hashicorp/go-rootcerts/tree/v1.0.0)
- github.com/hashicorp/go-sockaddr: [v1.0.0](https://github.com/hashicorp/go-sockaddr/tree/v1.0.0)
- github.com/hashicorp/go-syslog: [v1.0.0](https://github.com/hashicorp/go-syslog/tree/v1.0.0)
- github.com/hashicorp/go-uuid: [v1.0.1](https://github.com/hashicorp/go-uuid/tree/v1.0.1)
- github.com/hashicorp/go.net: [v0.0.1](https://github.com/hashicorp/go.net/tree/v0.0.1)
- github.com/hashicorp/logutils: [v1.0.0](https://github.com/hashicorp/logutils/tree/v1.0.0)
- github.com/hashicorp/mdns: [v1.0.0](https://github.com/hashicorp/mdns/tree/v1.0.0)
- github.com/hashicorp/memberlist: [v0.1.3](https://github.com/hashicorp/memberlist/tree/v0.1.3)
- github.com/hashicorp/serf: [v0.8.2](https://github.com/hashicorp/serf/tree/v0.8.2)
- github.com/ishidawataru/sctp: [f2269e6](https://github.com/ishidawataru/sctp/tree/f2269e6)
- github.com/josharian/intern: [v1.0.0](https://github.com/josharian/intern/tree/v1.0.0)
- github.com/miekg/dns: [v1.0.14](https://github.com/miekg/dns/tree/v1.0.14)
- github.com/mitchellh/cli: [v1.0.0](https://github.com/mitchellh/cli/tree/v1.0.0)
- github.com/mitchellh/go-testing-interface: [v1.0.0](https://github.com/mitchellh/go-testing-interface/tree/v1.0.0)
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
