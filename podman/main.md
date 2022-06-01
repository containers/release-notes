- [Podman main](#podman-main)
- [Changelog since v4.0.0-rc2](#changelog-since-v400-rc2)
  - [Changes by Kind](#changes-by-kind)
    - [Feature](#feature)
    - [Bug or Regression](#bug-or-regression)
    - [Uncategorized](#uncategorized)
  - [Dependencies](#dependencies)
    - [Added](#added)
    - [Changed](#changed)
    - [Removed](#removed)

# Podman main

The release notes have been generated for the commit range
[v4.0.0-rc2...819e5bcb943c6f604fdc65be1c0387055e0a9f20](https://github.com/containers/podman/compare/v4.0.0-rc2...819e5bcb943c6f604fdc65be1c0387055e0a9f20) on Wed May 25 12:56:36 PM MDT 2022.

# Changelog since v4.0.0-rc2

## Changes by Kind

### Feature
 - Add new `podman-play-kube@.service` systemd template to dispatch K8s YAML files in systemd.
  The path to the YAML file must be escaped: `systemctl --user start podman-play-kube@$(systemd-escape $YAML).service` ([#14256](https://github.com/containers/podman/pull/14256), [@vrothberg](https://github.com/vrothberg))
 - Add new noquota option for volumes ([#14051](https://github.com/containers/podman/pull/14051), [@giuseppe](https://github.com/giuseppe))
 - If developer provides a unix domain socket whose name matches machine_events.*\.sock in  XDG_RUNTIME_DIR/podman
  or by setting the environment variable PODMAN_MACHINE_EVENTS_SOCK, then podman machine will publish events to
  that socket using the Event type from the events package rendered in JSON. ([#14085](https://github.com/containers/podman/pull/14085), [@jwhonce](https://github.com/jwhonce))
 - Podman pod create --share now supports "+" prefix, allowing users to add to default namespaces ([#14333](https://github.com/containers/podman/pull/14333), [@rhatdan](https://github.com/rhatdan))

### Bug or Regression
 - Fix a bug where bind-mounting /dev in conjunction with using --init failed to start the container. ([#14281](https://github.com/containers/podman/pull/14281), [@vrothberg](https://github.com/vrothberg))
 - Fixed a bug where removing a container with a zombie exec session would fail the first time, but succeed for subsequent calls ([#14252](https://github.com/containers/podman/issues/14252)). ([#14258](https://github.com/containers/podman/pull/14258), [@mheon](https://github.com/mheon))
 - Podman-remote no longer joins user NS ([#14010](https://github.com/containers/podman/pull/14010), [@vrothberg](https://github.com/vrothberg))

### Uncategorized
 - Added a Windows tutorial ([#14141](https://github.com/containers/podman/pull/14141), [@n1hility](https://github.com/n1hility))
 - Be more precise about the problem when  RunRoot is not writable ([#14255](https://github.com/containers/podman/pull/14255), [@hiredman](https://github.com/hiredman))
 - Builds with GPGME now require GPGME ≥ 1.13.0. ([#14300](https://github.com/containers/podman/pull/14300), [@mtrmac](https://github.com/mtrmac))
 - Fix --sdnotify=conmon to sent the MAINPID once and not twice. ([#14215](https://github.com/containers/podman/pull/14215), [@vrothberg](https://github.com/vrothberg))
 - Fix a bug in the resolution of images in the Docker compat API when resolving short names for images that do not live on Docker Hub. ([#14294](https://github.com/containers/podman/pull/14294), [@vrothberg](https://github.com/vrothberg))
 - Fix a bug where the pause image of a Pod with a custom ID mapping could not be built (https://bugzilla.redhat.com/show_bug.cgi?id=2083997). ([#14232](https://github.com/containers/podman/pull/14232), [@vrothberg](https://github.com/vrothberg))
 - Fix an issue in `podman image mount` where the pretty table for multiple images was not printed.
  - Add auto-completion to `podman search --filter`. ([#14341](https://github.com/containers/podman/pull/14341), [@vrothberg](https://github.com/vrothberg))
 - Fix memory limit failures when running under a root cgroup ([#14308](https://github.com/containers/podman/pull/14308), [@n1hility](https://github.com/n1hility))
 - Fixed a bug where a dangling ID in the database could render Podman unusable. ([#14321](https://github.com/containers/podman/pull/14321), [@mheon](https://github.com/mheon))
 - Fixes premature container termination on Windows when API forwarding is not running ([#14250](https://github.com/containers/podman/pull/14250), [@n1hility](https://github.com/n1hility))
 - Fixes runtime warning on podman machine commands on Windows ([#14206](https://github.com/containers/podman/pull/14206), [@n1hility](https://github.com/n1hility))
 - Implement --format flag for podman machine inspect. Example:
  
  $ podman machine inspect foo --format '{{.Name}}' ([#14099](https://github.com/containers/podman/pull/14099), [@jwhonce](https://github.com/jwhonce))
 - Improve shell completion for the --format option. ([#14216](https://github.com/containers/podman/pull/14216), [@Luap99](https://github.com/Luap99))
 - Improved autocompletion for some commands ([#14053](https://github.com/containers/podman/pull/14053), [@Luap99](https://github.com/Luap99))
 - Improved handling for the --format option shell completion. ([#14263](https://github.com/containers/podman/pull/14263), [@Luap99](https://github.com/Luap99))
 - Improved shell completion for podman create/run --stop-signal. ([#14330](https://github.com/containers/podman/pull/14330), [@Luap99](https://github.com/Luap99))
 - Now play kube supports --userns=[auto|host] to run pods in a separate user namespace ([#14140](https://github.com/containers/podman/pull/14140), [@giuseppe](https://github.com/giuseppe))
 - Podman create/run --network host will use the correct nameservers from the host [#14055](https://github.com/containers/podman/issues/14055) ([#14062](https://github.com/containers/podman/pull/14062), [@Luap99](https://github.com/Luap99))
 - Podman pod create now accepts a name argument. ([#14334](https://github.com/containers/podman/pull/14334), [@rhatdan](https://github.com/rhatdan))
 - Podman system reset now properly deletes all podman machines and associated files. ([#14066](https://github.com/containers/podman/pull/14066), [@ashley-cui](https://github.com/ashley-cui))
 - Results from `podman search` are now truncated by default ([#14047](https://github.com/containers/podman/pull/14047), [@vrothberg](https://github.com/vrothberg))
 - The RunAsUser, RunAsGroup, SupplementalGroups settings from the pod security context are honored. ([#14167](https://github.com/containers/podman/pull/14167), [@giuseppe](https://github.com/giuseppe))
 - `podman auto-update` will now create an event. ([#14292](https://github.com/containers/podman/pull/14292), [@vrothberg](https://github.com/vrothberg))

## Dependencies

### Added
- github.com/AdaLogics/go-fuzz-headers: [6c3934b](https://github.com/AdaLogics/go-fuzz-headers/tree/6c3934b)
- github.com/ProtonMail/go-crypto: [a948124](https://github.com/ProtonMail/go-crypto/tree/a948124)
- github.com/benbjohnson/clock: [v1.0.3](https://github.com/benbjohnson/clock/tree/v1.0.3)
- github.com/certifi/gocertifi: [2c3bb06](https://github.com/certifi/gocertifi/tree/2c3bb06)
- github.com/cockroachdb/errors: [v1.2.4](https://github.com/cockroachdb/errors/tree/v1.2.4)
- github.com/cockroachdb/logtags: [eb05cc2](https://github.com/cockroachdb/logtags/tree/eb05cc2)
- github.com/getsentry/raven-go: [v0.2.0](https://github.com/getsentry/raven-go/tree/v0.2.0)
- github.com/go-kit/log: [v0.1.0](https://github.com/go-kit/log/tree/v0.1.0)
- github.com/go-logr/stdr: [v1.2.2](https://github.com/go-logr/stdr/tree/v1.2.2)
- github.com/intel/goresctrl: [v0.2.0](https://github.com/intel/goresctrl/tree/v0.2.0)
- github.com/josharian/intern: [v1.0.0](https://github.com/josharian/intern/tree/v1.0.0)
- github.com/jpillora/backoff: [v1.0.0](https://github.com/jpillora/backoff/tree/v1.0.0)
- github.com/moby/sys/signal: [v0.6.0](https://github.com/moby/sys/signal/tree/v0.6.0)
- github.com/networkplumbing/go-nft: [v0.2.0](https://github.com/networkplumbing/go-nft/tree/v0.2.0)
- github.com/onsi/ginkgo/v2: [v2.1.4](https://github.com/onsi/ginkgo/v2/tree/v2.1.4)
- github.com/proglottis/gpgme: [v0.1.2](https://github.com/proglottis/gpgme/tree/v0.1.2)
- github.com/sebdah/goldie/v2: [v2.5.3](https://github.com/sebdah/goldie/v2/tree/v2.5.3)
- github.com/sylabs/sif/v2: [v2.7.0](https://github.com/sylabs/sif/v2/tree/v2.7.0)
- go.etcd.io/etcd/client/v3: v3.5.0
- go.etcd.io/etcd/pkg/v3: v3.5.0
- go.etcd.io/etcd/raft/v3: v3.5.0
- go.etcd.io/etcd/server/v3: v3.5.0
- go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc: v0.28.0
- go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp: v0.20.0
- go.opentelemetry.io/contrib: v0.20.0
- go.opentelemetry.io/otel/exporters/otlp/internal/retry: v1.3.0
- go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc: v1.3.0
- go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp: v1.3.0
- go.opentelemetry.io/otel/exporters/otlp/otlptrace: v1.3.0
- go.opentelemetry.io/otel/exporters/otlp: v0.20.0
- go.opentelemetry.io/otel/metric: v0.20.0
- go.opentelemetry.io/otel/oteltest: v0.20.0
- go.opentelemetry.io/otel/sdk/export/metric: v0.20.0
- go.opentelemetry.io/otel/sdk/metric: v0.20.0
- go.opentelemetry.io/otel/sdk: v1.3.0
- go.opentelemetry.io/otel/trace: v1.3.0
- go.opentelemetry.io/otel: v1.3.0
- go.uber.org/goleak: v1.1.12

### Changed
- bazil.org/fuse: 371fbbd → 5883e5a
- cloud.google.com/go/firestore: v1.6.1 → v1.6.0
- cloud.google.com/go: v0.99.0 → v0.93.3
- github.com/Azure/go-autorest/autorest/adal: [v0.9.5 → v0.9.13](https://github.com/Azure/go-autorest/autorest/adal/compare/v0.9.5...v0.9.13)
- github.com/Azure/go-autorest/autorest: [v0.11.1 → v0.11.18](https://github.com/Azure/go-autorest/autorest/compare/v0.11.1...v0.11.18)
- github.com/Azure/go-autorest/logger: [v0.2.0 → v0.2.1](https://github.com/Azure/go-autorest/logger/compare/v0.2.0...v0.2.1)
- github.com/BurntSushi/toml: [v1.0.0 → v1.1.0](https://github.com/BurntSushi/toml/compare/v1.0.0...v1.1.0)
- github.com/Microsoft/go-winio: [v0.5.1 → v0.5.2](https://github.com/Microsoft/go-winio/compare/v0.5.1...v0.5.2)
- github.com/NYTimes/gziphandler: [56545f4 → v1.1.1](https://github.com/NYTimes/gziphandler/compare/56545f4...v1.1.1)
- github.com/alecthomas/units: [c3de453 → f65c72e](https://github.com/alecthomas/units/compare/c3de453...f65c72e)
- github.com/armon/go-metrics: [v0.3.10 → f0300d1](https://github.com/armon/go-metrics/compare/v0.3.10...f0300d1)
- github.com/buger/goterm: [v1.0.1 → v1.0.4](https://github.com/buger/goterm/compare/v1.0.1...v1.0.4)
- github.com/cenkalti/backoff/v4: [v4.1.1 → v4.1.2](https://github.com/cenkalti/backoff/v4/compare/v4.1.1...v4.1.2)
- github.com/census-instrumentation/opencensus-proto: [v0.3.0 → v0.2.1](https://github.com/census-instrumentation/opencensus-proto/compare/v0.3.0...v0.2.1)
- github.com/checkpoint-restore/checkpointctl: [54b4ebf → 33f4a66](https://github.com/checkpoint-restore/checkpointctl/compare/54b4ebf...33f4a66)
- github.com/cncf/xds/go: [a8f9461 → cb28da3](https://github.com/cncf/xds/go/compare/a8f9461...cb28da3)
- github.com/cockroachdb/datadriven: [80d97fb → bf6692d](https://github.com/cockroachdb/datadriven/compare/80d97fb...bf6692d)
- github.com/container-orchestrated-devices/container-device-interface: [46367ec → v0.4.0](https://github.com/container-orchestrated-devices/container-device-interface/compare/46367ec...v0.4.0)
- github.com/containerd/cgroups: [v1.0.1 → v1.0.3](https://github.com/containerd/cgroups/compare/v1.0.1...v1.0.3)
- github.com/containerd/containerd: [v1.5.9 → v1.6.4](https://github.com/containerd/containerd/compare/v1.5.9...v1.6.4)
- github.com/containerd/continuity: [v0.1.0 → v0.2.2](https://github.com/containerd/continuity/compare/v0.1.0...v0.2.2)
- github.com/containerd/go-cni: [v1.0.2 → v1.1.5](https://github.com/containerd/go-cni/compare/v1.0.2...v1.1.5)
- github.com/containerd/imgcrypt: [v1.1.1 → v1.1.4](https://github.com/containerd/imgcrypt/compare/v1.1.1...v1.1.4)
- github.com/containerd/stargz-snapshotter/estargz: [v0.10.1 → v0.11.4](https://github.com/containerd/stargz-snapshotter/estargz/compare/v0.10.1...v0.11.4)
- github.com/containernetworking/cni: [v1.0.1 → v1.1.0](https://github.com/containernetworking/cni/compare/v1.0.1...v1.1.0)
- github.com/containernetworking/plugins: [v1.0.1 → v1.1.1](https://github.com/containernetworking/plugins/compare/v1.0.1...v1.1.1)
- github.com/containers/buildah: [d744ebc → v1.26.1](https://github.com/containers/buildah/compare/d744ebc...v1.26.1)
- github.com/containers/common: [0e7aca7 → 2fd37da](https://github.com/containers/common/compare/0e7aca7...2fd37da)
- github.com/containers/image/v5: [v5.18.0 → 1e26896](https://github.com/containers/image/v5/compare/v5.18.0...1e26896)
- github.com/containers/libtrust: [14b9617 → 9c3a6c2](https://github.com/containers/libtrust/compare/14b9617...9c3a6c2)
- github.com/containers/ocicrypt: [v1.1.2 → 566b808](https://github.com/containers/ocicrypt/compare/v1.1.2...566b808)
- github.com/containers/storage: [v1.38.0 → cacc332](https://github.com/containers/storage/compare/v1.38.0...cacc332)
- github.com/coreos/etcd: [v3.3.10+incompatible → v3.3.13+incompatible](https://github.com/coreos/etcd/compare/v3.3.10...v3.3.13)
- github.com/docker/distribution: [v2.7.1+incompatible → v2.8.1+incompatible](https://github.com/docker/distribution/compare/v2.7.1...v2.8.1)
- github.com/docker/docker: [v20.10.12+incompatible → v20.10.16+incompatible](https://github.com/docker/docker/compare/v20.10.12...v20.10.16)
- github.com/docker/go-connections: [v0.4.0 → 58542c7](https://github.com/docker/go-connections/compare/v0.4.0...58542c7)
- github.com/envoyproxy/go-control-plane: [v0.10.1 → cf90f65](https://github.com/envoyproxy/go-control-plane/compare/v0.10.1...cf90f65)
- github.com/envoyproxy/protoc-gen-validate: [v0.6.2 → v0.1.0](https://github.com/envoyproxy/protoc-gen-validate/compare/v0.6.2...v0.1.0)
- github.com/form3tech-oss/jwt-go: [v3.2.2+incompatible → v3.2.3+incompatible](https://github.com/form3tech-oss/jwt-go/compare/v3.2.2...v3.2.3)
- github.com/fsnotify/fsnotify: [v1.5.1 → v1.5.4](https://github.com/fsnotify/fsnotify/compare/v1.5.1...v1.5.4)
- github.com/fsouza/go-dockerclient: [v1.7.7 → v1.7.11](https://github.com/fsouza/go-dockerclient/compare/v1.7.7...v1.7.11)
- github.com/go-logfmt/logfmt: [v0.4.0 → v0.5.0](https://github.com/go-logfmt/logfmt/compare/v0.4.0...v0.5.0)
- github.com/go-logr/logr: [v0.4.0 → v1.2.2](https://github.com/go-logr/logr/compare/v0.4.0...v1.2.2)
- github.com/go-openapi/jsonpointer: [v0.19.3 → v0.19.5](https://github.com/go-openapi/jsonpointer/compare/v0.19.3...v0.19.5)
- github.com/go-openapi/jsonreference: [v0.19.3 → v0.19.5](https://github.com/go-openapi/jsonreference/compare/v0.19.3...v0.19.5)
- github.com/go-openapi/swag: [v0.19.5 → v0.19.14](https://github.com/go-openapi/swag/compare/v0.19.5...v0.19.14)
- github.com/godbus/dbus/v5: [v5.0.6 → v5.1.0](https://github.com/godbus/dbus/v5/compare/v5.0.6...v5.1.0)
- github.com/google/btree: [v1.0.0 → v1.0.1](https://github.com/google/btree/compare/v1.0.0...v1.0.1)
- github.com/google/go-cmp: [v0.5.6 → v0.5.8](https://github.com/google/go-cmp/compare/v0.5.6...v0.5.8)
- github.com/google/gofuzz: [v1.1.0 → v1.2.0](https://github.com/google/gofuzz/compare/v1.1.0...v1.2.0)
- github.com/googleapis/gax-go/v2: [v2.1.1 → v2.1.0](https://github.com/googleapis/gax-go/v2/compare/v2.1.1...v2.1.0)
- github.com/grpc-ecosystem/go-grpc-middleware: [v1.2.2 → v1.3.0](https://github.com/grpc-ecosystem/go-grpc-middleware/compare/v1.2.2...v1.3.0)
- github.com/hashicorp/consul/api: [v1.11.0 → v1.10.1](https://github.com/hashicorp/consul/api/compare/v1.11.0...v1.10.1)
- github.com/hashicorp/errwrap: [v1.0.0 → v1.1.0](https://github.com/hashicorp/errwrap/compare/v1.0.0...v1.1.0)
- github.com/hashicorp/go-cleanhttp: [v0.5.2 → v0.5.1](https://github.com/hashicorp/go-cleanhttp/compare/v0.5.2...v0.5.1)
- github.com/hashicorp/go-hclog: [v1.0.0 → v0.12.0](https://github.com/hashicorp/go-hclog/compare/v1.0.0...v0.12.0)
- github.com/hashicorp/go-immutable-radix: [v1.3.1 → v1.0.0](https://github.com/hashicorp/go-immutable-radix/compare/v1.3.1...v1.0.0)
- github.com/hashicorp/mdns: [v1.0.4 → v1.0.1](https://github.com/hashicorp/mdns/compare/v1.0.4...v1.0.1)
- github.com/hashicorp/memberlist: [v0.3.0 → v0.2.2](https://github.com/hashicorp/memberlist/compare/v0.3.0...v0.2.2)
- github.com/hashicorp/serf: [v0.9.6 → v0.9.5](https://github.com/hashicorp/serf/compare/v0.9.6...v0.9.5)
- github.com/insomniacslk/dhcp: [ad197bc → 3c283ff](https://github.com/insomniacslk/dhcp/compare/ad197bc...3c283ff)
- github.com/jinzhu/copier: [v0.3.4 → v0.3.5](https://github.com/jinzhu/copier/compare/v0.3.4...v0.3.5)
- github.com/jonboulle/clockwork: [v0.2.0 → v0.2.2](https://github.com/jonboulle/clockwork/compare/v0.2.0...v0.2.2)
- github.com/julienschmidt/httprouter: [v1.2.0 → v1.3.0](https://github.com/julienschmidt/httprouter/compare/v1.2.0...v1.3.0)
- github.com/klauspost/compress: [v1.14.1 → v1.15.4](https://github.com/klauspost/compress/compare/v1.14.1...v1.15.4)
- github.com/mailru/easyjson: [v0.7.0 → v0.7.6](https://github.com/mailru/easyjson/compare/v0.7.0...v0.7.6)
- github.com/mattn/go-colorable: [v0.1.12 → v0.1.11](https://github.com/mattn/go-colorable/compare/v0.1.12...v0.1.11)
- github.com/miekg/dns: [v1.1.41 → v1.1.35](https://github.com/miekg/dns/compare/v1.1.41...v1.1.35)
- github.com/miekg/pkcs11: [v1.0.3 → v1.1.1](https://github.com/miekg/pkcs11/compare/v1.0.3...v1.1.1)
- github.com/mitchellh/mapstructure: [v1.4.3 → v1.4.2](https://github.com/mitchellh/mapstructure/compare/v1.4.3...v1.4.2)
- github.com/moby/sys/mountinfo: [v0.5.0 → v0.6.1](https://github.com/moby/sys/mountinfo/compare/v0.5.0...v0.6.1)
- github.com/moby/sys/symlink: [v0.1.0 → v0.2.0](https://github.com/moby/sys/symlink/compare/v0.1.0...v0.2.0)
- github.com/mwitkow/go-conntrack: [cc309e4 → 2f06839](https://github.com/mwitkow/go-conntrack/compare/cc309e4...2f06839)
- github.com/onsi/gomega: [v1.16.0 → v1.19.0](https://github.com/onsi/gomega/compare/v1.16.0...v1.19.0)
- github.com/opencontainers/runc: [v1.1.0 → v1.1.2](https://github.com/opencontainers/runc/compare/v1.1.0...v1.1.2)
- github.com/opencontainers/selinux: [v1.10.0 → v1.10.1](https://github.com/opencontainers/selinux/compare/v1.10.0...v1.10.1)
- github.com/openshift/imagebuilder: [87f3e48 → 009dbc6](https://github.com/openshift/imagebuilder/compare/87f3e48...009dbc6)
- github.com/ostreedev/ostree-go: [759a8c1 → 719684c](https://github.com/ostreedev/ostree-go/compare/759a8c1...719684c)
- github.com/pascaldekloe/goe: [v0.1.0 → 57f6aae](https://github.com/pascaldekloe/goe/compare/v0.1.0...57f6aae)
- github.com/prometheus/client_golang: [v1.7.1 → v1.11.1](https://github.com/prometheus/client_golang/compare/v1.7.1...v1.11.1)
- github.com/prometheus/common: [v0.10.0 → v0.30.0](https://github.com/prometheus/common/compare/v0.10.0...v0.30.0)
- github.com/prometheus/procfs: [v0.6.0 → v0.7.3](https://github.com/prometheus/procfs/compare/v0.6.0...v0.7.3)
- github.com/rootless-containers/rootlesskit: [v0.14.6 → v1.0.1](https://github.com/rootless-containers/rootlesskit/compare/v0.14.6...v1.0.1)
- github.com/sagikazarmark/crypt: [v0.3.0 → v0.1.0](https://github.com/sagikazarmark/crypt/compare/v0.3.0...v0.1.0)
- github.com/sergi/go-diff: [v1.1.0 → v1.2.0](https://github.com/sergi/go-diff/compare/v1.1.0...v1.2.0)
- github.com/soheilhy/cmux: [v0.1.4 → v0.1.5](https://github.com/soheilhy/cmux/compare/v0.1.4...v0.1.5)
- github.com/spf13/cobra: [v1.3.0 → v1.4.0](https://github.com/spf13/cobra/compare/v1.3.0...v1.4.0)
- github.com/spf13/viper: [v1.10.0 → v1.9.0](https://github.com/spf13/viper/compare/v1.10.0...v1.9.0)
- github.com/stretchr/testify: [v1.7.0 → v1.7.1](https://github.com/stretchr/testify/compare/v1.7.0...v1.7.1)
- github.com/tmc/grpc-websocket-proxy: [3cfed13 → e5319fd](https://github.com/tmc/grpc-websocket-proxy/compare/3cfed13...e5319fd)
- github.com/tv42/httpunix: [b75d861 → 2ba4b9c](https://github.com/tv42/httpunix/compare/b75d861...2ba4b9c)
- github.com/urfave/cli/v2: [v2.3.0 → v2.5.1](https://github.com/urfave/cli/v2/compare/v2.3.0...v2.5.1)
- github.com/vbauerster/mpb/v7: [v7.3.0 → v7.4.2](https://github.com/vbauerster/mpb/v7/compare/v7.3.0...v7.4.2)
- github.com/xeipuuv/gojsonpointer: [df4f5c8 → 02993c4](https://github.com/xeipuuv/gojsonpointer/compare/df4f5c8...02993c4)
- github.com/yuin/goldmark: [v1.4.0 → v1.4.1](https://github.com/yuin/goldmark/compare/v1.4.0...v1.4.1)
- go.etcd.io/etcd/api/v3: v3.5.1 → v3.5.0
- go.etcd.io/etcd/client/pkg/v3: v3.5.1 → v3.5.0
- go.etcd.io/etcd/client/v2: v2.305.1 → v2.305.0
- go.opentelemetry.io/proto/otlp: v0.7.0 → v0.11.0
- golang.org/x/crypto: 5e0467b → 7b82a4e
- golang.org/x/mod: v0.5.0 → 9b9b3d8
- golang.org/x/net: 69e39ba → 27dd868
- golang.org/x/oauth2: d3ed0bb → 2bc19b1
- golang.org/x/sys: da31bd3 → bc2c85a
- golang.org/x/term: 6886f2d → 03fcf44
- golang.org/x/time: 3af7569 → 1f47c86
- golang.org/x/tools: v0.1.7 → v0.1.10
- google.golang.org/api: v0.62.0 → v0.56.0
- google.golang.org/genproto: 3a66f56 → 325a892
- google.golang.org/grpc: v1.42.0 → v1.44.0
- google.golang.org/protobuf: v1.27.1 → v1.28.0
- gopkg.in/check.v1: 8fa4692 → 10cb982
- gopkg.in/ini.v1: v1.66.2 → v1.63.2
- k8s.io/api: v0.22.4 → v0.22.5
- k8s.io/apimachinery: v0.22.4 → v0.22.5
- k8s.io/apiserver: v0.20.6 → v0.22.5
- k8s.io/client-go: v0.20.6 → v0.22.5
- k8s.io/component-base: v0.20.6 → v0.22.5
- k8s.io/cri-api: v0.20.6 → v0.23.1
- k8s.io/klog/v2: v2.9.0 → v2.30.0
- k8s.io/utils: 67b214c → cb0fa31
- sigs.k8s.io/apiserver-network-proxy/konnectivity-client: v0.0.15 → v0.0.22

### Removed
- github.com/DataDog/datadog-go: [v3.2.0+incompatible](https://github.com/DataDog/datadog-go/tree/v3.2.0)
- github.com/circonus-labs/circonus-gometrics: [v2.3.1+incompatible](https://github.com/circonus-labs/circonus-gometrics/tree/v2.3.1)
- github.com/circonus-labs/circonusllhist: [v0.1.3](https://github.com/circonus-labs/circonusllhist/tree/v0.1.3)
- github.com/hashicorp/go-retryablehttp: [v0.5.3](https://github.com/hashicorp/go-retryablehttp/tree/v0.5.3)
- github.com/iancoleman/strcase: [v0.2.0](https://github.com/iancoleman/strcase/tree/v0.2.0)
- github.com/lyft/protoc-gen-star: [v0.5.3](https://github.com/lyft/protoc-gen-star/tree/v0.5.3)
- github.com/mtrmac/gpgme: [v0.1.2](https://github.com/mtrmac/gpgme/tree/v0.1.2)
- github.com/vbauerster/mpb/v6: [v6.0.4](https://github.com/vbauerster/mpb/v6/tree/v6.0.4)
