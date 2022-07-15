- [podman main](#podman-main)
- [Changelog since v4.0.0-rc2](#changelog-since-v400-rc2)
  - [Changes by Kind](#changes-by-kind)
    - [Test-Flake](#test-flake)
    - [Feature](#feature)
    - [Documentation](#documentation)
    - [Bug or Regression](#bug-or-regression)
    - [Uncategorized](#uncategorized)
  - [Dependencies](#dependencies)
    - [Added](#added)
    - [Changed](#changed)
    - [Removed](#removed)

# podman main

The release notes have been generated for the commit range
[v4.0.0-rc2...b4c09bef668dd41e1cc55b8d379992e2d22714b7](https://github.com/containers/podman/compare/v4.0.0-rc2...b4c09bef668dd41e1cc55b8d379992e2d22714b7) on Fri Jul 15 06:17:11 AM MDT 2022.

# Changelog since v4.0.0-rc2

## Changes by Kind

### Test-Flake
 - Fix --sdnotify=conmon to sent the MAINPID once and not twice. ([#14215](https://github.com/containers/podman/pull/14215), [@vrothberg](https://github.com/vrothberg))

### Feature
 - Add new `podman-play-kube@.service` systemd template to dispatch K8s YAML files in systemd.
  The path to the YAML file must be escaped: `systemctl --user start podman-play-kube@$(systemd-escape $YAML).service` ([#14256](https://github.com/containers/podman/pull/14256), [@vrothberg](https://github.com/vrothberg))
 - Add new noquota option for volumes ([#14051](https://github.com/containers/podman/pull/14051), [@giuseppe](https://github.com/giuseppe))
 - If developer provides a unix domain socket whose name matches machine_events.*\.sock in  XDG_RUNTIME_DIR/podman
  or by setting the environment variable PODMAN_MACHINE_EVENTS_SOCK, then podman machine will publish events to
  that socket using the Event type from the events package rendered in JSON. ([#14085](https://github.com/containers/podman/pull/14085), [@jwhonce](https://github.com/jwhonce))
 - Podman create/run/cp can now autocomplete paths in the image/container via the shell completion ([#14457](https://github.com/containers/podman/pull/14457), [@Luap99](https://github.com/Luap99))
 - Podman pod create --share now supports "+" prefix, allowing users to add to default namespaces ([#14333](https://github.com/containers/podman/pull/14333), [@rhatdan](https://github.com/rhatdan))
 - Podman pod create now accepts a name argument. ([#14334](https://github.com/containers/podman/pull/14334), [@rhatdan](https://github.com/rhatdan))

### Documentation
 - Add doc outlining the kube yaml fields supported by podman play kube ([#14318](https://github.com/containers/podman/pull/14318), [@umohnani8](https://github.com/umohnani8))
 - Added a Windows tutorial ([#14141](https://github.com/containers/podman/pull/14141), [@n1hility](https://github.com/n1hility))
 - Clarifies documentation on mount propagation with named or internal volumes ([#14405](https://github.com/containers/podman/pull/14405), [@rhatdan](https://github.com/rhatdan))

### Bug or Regression
 - Fix a bug in the resolution of images in the Docker compat API when resolving short names for images that do not live on Docker Hub. ([#14294](https://github.com/containers/podman/pull/14294), [@vrothberg](https://github.com/vrothberg))
 - Fix a bug where bind-mounting /dev in conjunction with using --init failed to start the container. ([#14281](https://github.com/containers/podman/pull/14281), [@vrothberg](https://github.com/vrothberg))
 - Fix a bug where the pause image of a Pod with a custom ID mapping could not be built (https://bugzilla.redhat.com/show_bug.cgi?id=2083997). ([#14232](https://github.com/containers/podman/pull/14232), [@vrothberg](https://github.com/vrothberg))
 - Fix a potential race when cleaning up systemd health-check units and timers. ([#14395](https://github.com/containers/podman/pull/14395), [@vrothberg](https://github.com/vrothberg))
 - Fixed a bug where a dangling ID in the database could render Podman unusable. ([#14321](https://github.com/containers/podman/pull/14321), [@mheon](https://github.com/mheon))
 - Fixed a bug where network cleanup was not happening when a container used a custom user namespace and were initialized via API ([#14465](https://github.com/containers/podman/issues/14465)). ([#14507](https://github.com/containers/podman/pull/14507), [@Luap99](https://github.com/Luap99))
 - Fixed a bug where podman container restore would fail if the container used --network none or ns:/path ([#14433](https://github.com/containers/podman/pull/14433), [@Luap99](https://github.com/Luap99))
 - Fixed a bug where removing a container with a zombie exec session would fail the first time, but succeed for subsequent calls ([#14252](https://github.com/containers/podman/issues/14252)). ([#14258](https://github.com/containers/podman/pull/14258), [@mheon](https://github.com/mheon))
 - Fixes a bug in the parsing of --security-opt ([#14415](https://github.com/containers/podman/pull/14415), [@nicrowe00](https://github.com/nicrowe00))
 - Fixes premature container termination on Windows when API forwarding is not running ([#14250](https://github.com/containers/podman/pull/14250), [@n1hility](https://github.com/n1hility))
 - Podman machine ssh will now preserve exit code from the ssh command ([#14417](https://github.com/containers/podman/pull/14417), [@Luap99](https://github.com/Luap99))
 - Podman stats now works correctly with custom network interface names and when network disconnect was used. ([#14421](https://github.com/containers/podman/pull/14421), [@Luap99](https://github.com/Luap99))
 - Podman system reset now properly deletes all podman machines and associated files. ([#14066](https://github.com/containers/podman/pull/14066), [@ashley-cui](https://github.com/ashley-cui))
 - Podman-remote no longer joins user NS ([#14010](https://github.com/containers/podman/pull/14010), [@vrothberg](https://github.com/vrothberg))
 - REST API libpod/pods/stats endpoint has two new params: stream and delay ([#14825](https://github.com/containers/podman/pull/14825), [@jmguzik](https://github.com/jmguzik))
 - The default network mode is now assigned by the server and not the client. ([#14436](https://github.com/containers/podman/pull/14436), [@Luap99](https://github.com/Luap99))

### Uncategorized
 - A new `podman volume reload` command was added to sync the state from volume plugins into the libpod db. ([#14713](https://github.com/containers/podman/pull/14713), [@Luap99](https://github.com/Luap99))
 - Add --filter flag for podman stop ([#14832](https://github.com/containers/podman/pull/14832), [@karthikelango137](https://github.com/karthikelango137))
 - Add podman machine info command, which displays info about the machine
  host as well as version info. ([#14762](https://github.com/containers/podman/pull/14762), [@ashley-cui](https://github.com/ashley-cui))
 - Add support for -c as an alias for --cpu-shares to be compatible with Docker. ([#14916](https://github.com/containers/podman/pull/14916), [@rhatdan](https://github.com/rhatdan))
 - Add supports for running containers from manifest list with --platform ([#14827](https://github.com/containers/podman/pull/14827), [@flouthoc](https://github.com/flouthoc))
 - Add the volume creation option --opt=o=timeout=INT allowing users to specify a volume specific creation timeout for custom drivers. ([#14449](https://github.com/containers/podman/pull/14449), [@cdoern](https://github.com/cdoern))
 - Added Regexp support to filtering volumes by name ([#14597](https://github.com/containers/podman/pull/14597), [@boaz0](https://github.com/boaz0))
 - Added support for `network ls --filter dangling=true/false` ([#14643](https://github.com/containers/podman/pull/14643), [@clobrano](https://github.com/clobrano))
 - Adds support for build which allows using build-cache with --squash-all using --layers
  - Adds support for new buildah feature --build-context where users can specify additional build context
  - Adds support --cpp-flag in podman build which allows additional flags to pass to the C Preprocessor cpp with Containerfile.in ([#14320](https://github.com/containers/podman/pull/14320), [@flouthoc](https://github.com/flouthoc))
 - Adds support for non-volatile `upperdir`,`workdir` for anonymous overlay volumes ([#14474](https://github.com/containers/podman/pull/14474), [@flouthoc](https://github.com/flouthoc))
 - Allow `podman machine` to only be run rootless, as the VM refuses to boot when run as root. ([#14706](https://github.com/containers/podman/pull/14706), [@ashley-cui](https://github.com/ashley-cui))
 - Allow user to clone pods using the CLI. New options include --start --destroy and --name ([#14299](https://github.com/containers/podman/pull/14299), [@cdoern](https://github.com/cdoern))
 - Allow users to utilize the --shm-size flag on a pod level. ([#14625](https://github.com/containers/podman/pull/14625), [@cdoern](https://github.com/cdoern))
 - Allows users to use relative values with mounting paths directly as overlay. Example `-v .:/target:O` ([#14798](https://github.com/containers/podman/pull/14798), [@flouthoc](https://github.com/flouthoc))
 - Be more precise about the problem when  RunRoot is not writable ([#14255](https://github.com/containers/podman/pull/14255), [@hiredman](https://github.com/hiredman))
 - Bindings: Manifest package now exposes ManifestRemove to remove manifest list from local storage ([#14740](https://github.com/containers/podman/pull/14740), [@flouthoc](https://github.com/flouthoc))
 - Builds with GPGME now require GPGME ≥ 1.13.0. ([#14300](https://github.com/containers/podman/pull/14300), [@mtrmac](https://github.com/mtrmac))
 - Change Windows installer to open tutorial after install ([#14631](https://github.com/containers/podman/pull/14631), [@n1hility](https://github.com/n1hility))
 - Changed help message from megabytes to mebibytes. ([#14467](https://github.com/containers/podman/pull/14467), [@karthikelango137](https://github.com/karthikelango137))
 - Containers created by system service running under systemd survive after the Podman daemon is stopped ([#14596](https://github.com/containers/podman/pull/14596), [@giuseppe](https://github.com/giuseppe))
 - Enables additional build context for podman-remote and macOS using --build-context ([#14453](https://github.com/containers/podman/pull/14453), [@flouthoc](https://github.com/flouthoc))
 - Fix a bug in the wait logic to enable Podman on Gitlab runner. ([#14685](https://github.com/containers/podman/pull/14685), [@mheon](https://github.com/mheon))
 - Fix a bug where `--file-locks` flag is ignored in `podman container restore` so that file locks checkpointed by `podman container checkpoint --file-locks` are not restored. ([#14542](https://github.com/containers/podman/pull/14542), [@hshiina](https://github.com/hshiina))
 - Fix a bug where `podman cp` would overwrite directories with non-directories and vice versa.  A new `--overwrite` flag allows for opting into the old behavior if needed. ([#14526](https://github.com/containers/podman/pull/14526), [@vrothberg](https://github.com/vrothberg))
 - Fix an issue in `podman image mount` where the pretty table for multiple images was not printed.
  - Add auto-completion to `podman search --filter`. ([#14341](https://github.com/containers/podman/pull/14341), [@vrothberg](https://github.com/vrothberg))
 - Fix interrupting a machine start leaves the machine unstartable ([#14610](https://github.com/containers/podman/pull/14610), [@shanesmith](https://github.com/shanesmith))
 - Fix memory limit failures when running under a root cgroup ([#14308](https://github.com/containers/podman/pull/14308), [@n1hility](https://github.com/n1hility))
 - Fix network inspect comapt API w.r.t netmask of SecondaryIPAddresses/SecondaryIPv6Addresses ([#14673](https://github.com/containers/podman/pull/14673), [@idleroamer](https://github.com/idleroamer))
 - Fix: #14416 : `machine init` fails when ran from C:\Windows\System32 on Windows ([#14570](https://github.com/containers/podman/pull/14570), [@Clivar](https://github.com/Clivar))
 - Fixed a bug where Podman could print error messages when signals were forwarded to a container via `--sig-proxy` to a container as the container process exited. ([#14533](https://github.com/containers/podman/pull/14533), [@mheon](https://github.com/mheon))
 - Fixed a bug where Podman with docker-compose did not update the network MTU ([#14534](https://github.com/containers/podman/pull/14534), [@jakecorrenti](https://github.com/jakecorrenti))
 - Fixed a bug where `podman -h` did not show the help output. ([#14619](https://github.com/containers/podman/pull/14619), [@Luap99](https://github.com/Luap99))
 - Fixed a bug where `podman system df --format "{{ json . }}"` would not output the `Size` and `Reclaimable` fields (#14769) ([#14805](https://github.com/containers/podman/pull/14805), [@jakecorrenti](https://github.com/jakecorrenti))
 - Fixed a bug where disabling healthchecks in a docker-compose.yml file was improperly handled (#14493) ([#14626](https://github.com/containers/podman/pull/14626), [@jakecorrenti](https://github.com/jakecorrenti))
 - Fixed a bug where podman machine fails to start with memory > 3072 on M1 ([#14563](https://github.com/containers/podman/pull/14563), [@ashley-cui](https://github.com/ashley-cui))
 - Fixed a bug where podman machine start failed to start the qemu VM when the machine name starts with a number. ([#14850](https://github.com/containers/podman/pull/14850), [@Luap99](https://github.com/Luap99))
 - Fixed a bug where podman machine with proxy variables could not be started more than once. ([#14893](https://github.com/containers/podman/pull/14893), [@Luap99](https://github.com/Luap99))
 - Fixed a bug where privileged containers were not able to restart if the host devices changed. (#13899) ([#14483](https://github.com/containers/podman/pull/14483), [@jakecorrenti](https://github.com/jakecorrenti))
 - Fixed a bug where the /libpod/containers/json endpoint did not return the application/json content type header when the container list is empty. ([#14662](https://github.com/containers/podman/pull/14662), [@Luap99](https://github.com/Luap99))
 - Fixed a bug where the API nor `podman events` were generating health_status events (#13493) ([#14705](https://github.com/containers/podman/pull/14705), [@jakecorrenti](https://github.com/jakecorrenti))
 - Fixed a bug where the `podman system reset` command could race against other Podman commands. ([#14466](https://github.com/containers/podman/pull/14466), [@mheon](https://github.com/mheon))
 - Fixed a bug where using the `podman stats` command on a non-running container would return an error instead of zeroed values ([#14580](https://github.com/containers/podman/pull/14580), [@jakecorrenti](https://github.com/jakecorrenti))
 - Fixed a bug with podman play kube on 32 bit systems where the total memory was calculated incorrectly. ([#14823](https://github.com/containers/podman/pull/14823), [@Luap99](https://github.com/Luap99))
 - Fixed running machine start twice at the same time resulting in failure for both ([#14469](https://github.com/containers/podman/pull/14469), [@shanesmith](https://github.com/shanesmith))
 - Fixes runtime warning on podman machine commands on Windows ([#14206](https://github.com/containers/podman/pull/14206), [@n1hility](https://github.com/n1hility))
 - Force removing a machine now stops the machine before deleting the files. ([#14470](https://github.com/containers/podman/pull/14470), [@shanesmith](https://github.com/shanesmith))
 - If /run is on a volume then the file `/run/.containerenv` is not created automatically anymore ([#14582](https://github.com/containers/podman/pull/14582), [@giuseppe](https://github.com/giuseppe))
 - Implement --format flag for podman machine inspect. Example:
  
  $ podman machine inspect foo --format '{{.Name}}' ([#14099](https://github.com/containers/podman/pull/14099), [@jwhonce](https://github.com/jwhonce))
 - Implement Proxy support on Windows ([#14806](https://github.com/containers/podman/pull/14806), [@n1hility](https://github.com/n1hility))
 - Implement podman pod create --memory which allows users to set a memory limit for all ctrs in a pod. ([#14802](https://github.com/containers/podman/pull/14802), [@cdoern](https://github.com/cdoern))
 - Improve shell completion for the --format option. ([#14216](https://github.com/containers/podman/pull/14216), [@Luap99](https://github.com/Luap99))
 - Improve the documentation of pull policies for `podman-{build,create,run}`. ([#14870](https://github.com/containers/podman/pull/14870), [@vrothberg](https://github.com/vrothberg))
 - Improved autocompletion for some commands ([#14053](https://github.com/containers/podman/pull/14053), [@Luap99](https://github.com/Luap99))
 - Improved handling for the --format option shell completion. ([#14263](https://github.com/containers/podman/pull/14263), [@Luap99](https://github.com/Luap99))
 - Improved shell completion for podman create/run --stop-signal. ([#14330](https://github.com/containers/podman/pull/14330), [@Luap99](https://github.com/Luap99))
 - It solves a problem with new runc versions where it is not possible to remove a paused container. ([#14765](https://github.com/containers/podman/pull/14765), [@giuseppe](https://github.com/giuseppe))
 - None, cgroupfs seems to have been acting this way before. ([#14764](https://github.com/containers/podman/pull/14764), [@cdoern](https://github.com/cdoern))
 - Now play kube supports --userns=[auto|host] to run pods in a separate user namespace ([#14140](https://github.com/containers/podman/pull/14140), [@giuseppe](https://github.com/giuseppe))
 - Now podman ps doesn't race with podman pod rm ([#14741](https://github.com/containers/podman/pull/14741), [@giuseppe](https://github.com/giuseppe))
 - Now volume create supports copy and nocopy to control whether files from the container image must be copied up to the newly created volume on the first run. ([#14734](https://github.com/containers/podman/pull/14734), [@giuseppe](https://github.com/giuseppe))
 - Podman --remote push now supports --remove-signatures ([#14560](https://github.com/containers/podman/pull/14560), [@rhatdan](https://github.com/rhatdan))
 - Podman automatically creates a sub-cgroup and moves itself there when running inside a container ([#14904](https://github.com/containers/podman/pull/14904), [@giuseppe](https://github.com/giuseppe))
 - Podman build now supports the --omit-history option which eliminates the history field from images. 
  podman build now supports --logsplit which allows you to specify a directory for build logs when using multiple platforms.  One log for each platform will be generated in the specified directory. ([#14561](https://github.com/containers/podman/pull/14561), [@rhatdan](https://github.com/rhatdan))
 - Podman create/run --network host will use the correct nameservers from the host [#14055](https://github.com/containers/podman/issues/14055) ([#14062](https://github.com/containers/podman/pull/14062), [@Luap99](https://github.com/Luap99))
 - Podman events now supports `-f` as an alias for `--filter` ([#14923](https://github.com/containers/podman/pull/14923), [@rhatdan](https://github.com/rhatdan))
 - Podman image scp API support added as well as image tagging. This fixes a bug in the syntax allowing users to specify a destination before a source. The API endpoint takes a source, destination, and quiet boolean all in the query itself. ([#14400](https://github.com/containers/podman/pull/14400), [@cdoern](https://github.com/cdoern))
 - Podman load CLI now mirrors docker load's imported image list output format ([#14460](https://github.com/containers/podman/pull/14460), [@cipherboy](https://github.com/cipherboy))
 - Podman logs will now correctly display all output when the last line did not end with an newline. ([#14477](https://github.com/containers/podman/pull/14477), [@Luap99](https://github.com/Luap99))
 - Podman machine init on Windows now fetches an image with packages pre-installed ([#14919](https://github.com/containers/podman/pull/14919), [@gbraad](https://github.com/gbraad))
 - Podman machine inspect now shows the exported podman socket for external use. ([#14448](https://github.com/containers/podman/pull/14448), [@baude](https://github.com/baude))
 - Podman now supports image_volume_mode setting in containers.conf, which allows you to modify the system defaults for the podman run/create --image-volume option. ([#14301](https://github.com/containers/podman/pull/14301), [@rhatdan](https://github.com/rhatdan))
 - Podman parses correctly the wildcard for the device major number to `--device-cgroup-rule` ([#14795](https://github.com/containers/podman/pull/14795), [@giuseppe](https://github.com/giuseppe))
 - Podman pod unpause only shows paused pods when using autocomplete ([#14370](https://github.com/containers/podman/pull/14370), [@umohnani8](https://github.com/umohnani8))
 - Podman system service automatically creates a sub-cgroup when running in the root cgroup ([#14787](https://github.com/containers/podman/pull/14787), [@giuseppe](https://github.com/giuseppe))
 - Podman wait an now take multiple --condition flags ([#14818](https://github.com/containers/podman/pull/14818), [@rhatdan](https://github.com/rhatdan))
 - Podman will now check for nameservers in /run/NetworkManager/no-stub-resolv.conf if the /etc/resolv.conf file only contains a localhost server. ([#14220](https://github.com/containers/podman/pull/14220), [@Luap99](https://github.com/Luap99))
 - Podman-remote manifest rm now actually removes only manifest list and not image
  - libpod REST API for image removal now supports additional LookupManifest parameter
     which allows end-users to remove manifest instead of images. ([#14783](https://github.com/containers/podman/pull/14783), [@flouthoc](https://github.com/flouthoc))
 - Relative volume paths now supported ([#14687](https://github.com/containers/podman/pull/14687), [@cdoern](https://github.com/cdoern))
 - Results from `podman search` are now truncated by default ([#14047](https://github.com/containers/podman/pull/14047), [@vrothberg](https://github.com/vrothberg))
 - Set ports and hostname correctly in the generated kube yaml. ([#14181](https://github.com/containers/podman/pull/14181), [@umohnani8](https://github.com/umohnani8))
 - Silence setlocale warning in machine ssh ([#14824](https://github.com/containers/podman/pull/14824), [@shanesmith](https://github.com/shanesmith))
 - Support specification of the 9p security model for `podman machine` volumes ([#13784](https://github.com/containers/podman/issues/13784)). ([#14803](https://github.com/containers/podman/pull/14803), [@bugfood](https://github.com/bugfood))
 - The Compat API now supports the v1.41 API. ([#14219](https://github.com/containers/podman/pull/14219), [@mheon](https://github.com/mheon))
 - The HTTP handler shows the memory limit as specified at creation time ([#14677](https://github.com/containers/podman/pull/14677), [@giuseppe](https://github.com/giuseppe))
 - The RunAsUser, RunAsGroup, SupplementalGroups settings from the pod security context are honored. ([#14167](https://github.com/containers/podman/pull/14167), [@giuseppe](https://github.com/giuseppe))
 - The `podman kill` command now works on paused containers. ([#14329](https://github.com/containers/podman/pull/14329), [@mheon](https://github.com/mheon))
 - The `podman machine stop` command on macOS now waits for the machine to be completely stopped. ([#14666](https://github.com/containers/podman/pull/14666), [@shanesmith](https://github.com/shanesmith))
 - The command "podman kube play" replaces the "podman play kube" command.
  "podman play kube" can still be used in the same manner as before as it is now an alias of
  "podman kube play". ([#14772](https://github.com/containers/podman/pull/14772), [@nicrowe00](https://github.com/nicrowe00))
 - This fix prevents the OCI runtime directory from remaining. It also prevents other bugs occurring. ([#14720](https://github.com/containers/podman/pull/14720), [@sstosh](https://github.com/sstosh))
 - Update supported kube fields for configMap and deployment kind in play kube docs ([#14842](https://github.com/containers/podman/pull/14842), [@umohnani8](https://github.com/umohnani8))
 - User enables to remove unused networks using podman system prune command. ([#14556](https://github.com/containers/podman/pull/14556), [@sstosh](https://github.com/sstosh))
 - Users can now specify the --uts option when creating pods, specifying a pod wide uts mode for all containers. ([#14501](https://github.com/containers/podman/pull/14501), [@cdoern](https://github.com/cdoern))
 - Users will be able to see a tangible change when settings resource limits on pods ([#14654](https://github.com/containers/podman/pull/14654), [@cdoern](https://github.com/cdoern))
 - `podman auto-update` will now create an event. ([#14292](https://github.com/containers/podman/pull/14292), [@vrothberg](https://github.com/vrothberg))
 - `podman machine init --now` now respects the proxy environment variables like `podman machine start`. ([#14665](https://github.com/containers/podman/pull/14665), [@Luap99](https://github.com/Luap99))

## Dependencies

### Added
- github.com/AdaLogics/go-fuzz-headers: [6c3934b](https://github.com/AdaLogics/go-fuzz-headers/tree/6c3934b)
- github.com/ProtonMail/go-crypto: [88bb529](https://github.com/ProtonMail/go-crypto/tree/88bb529)
- github.com/benbjohnson/clock: [v1.0.3](https://github.com/benbjohnson/clock/tree/v1.0.3)
- github.com/blang/semver/v4: [v4.0.0](https://github.com/blang/semver/v4/tree/v4.0.0)
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
- github.com/sylabs/sif/v2: [v2.7.1](https://github.com/sylabs/sif/v2/tree/v2.7.1)
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
- github.com/Microsoft/hcsshim: [v0.9.2 → v0.9.3](https://github.com/Microsoft/hcsshim/compare/v0.9.2...v0.9.3)
- github.com/NYTimes/gziphandler: [56545f4 → v1.1.1](https://github.com/NYTimes/gziphandler/compare/56545f4...v1.1.1)
- github.com/alecthomas/units: [c3de453 → f65c72e](https://github.com/alecthomas/units/compare/c3de453...f65c72e)
- github.com/armon/go-metrics: [v0.3.10 → f0300d1](https://github.com/armon/go-metrics/compare/v0.3.10...f0300d1)
- github.com/buger/goterm: [v1.0.1 → v1.0.4](https://github.com/buger/goterm/compare/v1.0.1...v1.0.4)
- github.com/cenkalti/backoff/v4: [v4.1.1 → v4.1.2](https://github.com/cenkalti/backoff/v4/compare/v4.1.1...v4.1.2)
- github.com/census-instrumentation/opencensus-proto: [v0.3.0 → v0.2.1](https://github.com/census-instrumentation/opencensus-proto/compare/v0.3.0...v0.2.1)
- github.com/checkpoint-restore/checkpointctl: [54b4ebf → 33f4a66](https://github.com/checkpoint-restore/checkpointctl/compare/54b4ebf...33f4a66)
- github.com/cilium/ebpf: [v0.7.0 → v0.9.0](https://github.com/cilium/ebpf/compare/v0.7.0...v0.9.0)
- github.com/cncf/xds/go: [a8f9461 → cb28da3](https://github.com/cncf/xds/go/compare/a8f9461...cb28da3)
- github.com/cockroachdb/datadriven: [80d97fb → bf6692d](https://github.com/cockroachdb/datadriven/compare/80d97fb...bf6692d)
- github.com/container-orchestrated-devices/container-device-interface: [46367ec → v0.4.0](https://github.com/container-orchestrated-devices/container-device-interface/compare/46367ec...v0.4.0)
- github.com/containerd/cgroups: [v1.0.1 → v1.0.3](https://github.com/containerd/cgroups/compare/v1.0.1...v1.0.3)
- github.com/containerd/containerd: [v1.5.9 → v1.6.6](https://github.com/containerd/containerd/compare/v1.5.9...v1.6.6)
- github.com/containerd/continuity: [v0.1.0 → v0.2.2](https://github.com/containerd/continuity/compare/v0.1.0...v0.2.2)
- github.com/containerd/go-cni: [v1.0.2 → v1.1.6](https://github.com/containerd/go-cni/compare/v1.0.2...v1.1.6)
- github.com/containerd/imgcrypt: [v1.1.1 → v1.1.4](https://github.com/containerd/imgcrypt/compare/v1.1.1...v1.1.4)
- github.com/containerd/stargz-snapshotter/estargz: [v0.10.1 → v0.11.4](https://github.com/containerd/stargz-snapshotter/estargz/compare/v0.10.1...v0.11.4)
- github.com/containernetworking/cni: [v1.0.1 → v1.1.1](https://github.com/containernetworking/cni/compare/v1.0.1...v1.1.1)
- github.com/containernetworking/plugins: [v1.0.1 → v1.1.1](https://github.com/containernetworking/plugins/compare/v1.0.1...v1.1.1)
- github.com/containers/buildah: [d744ebc → e66309e](https://github.com/containers/buildah/compare/d744ebc...e66309e)
- github.com/containers/common: [0e7aca7 → dd1c331](https://github.com/containers/common/compare/0e7aca7...dd1c331)
- github.com/containers/image/v5: [v5.18.0 → 929f14a](https://github.com/containers/image/v5/compare/v5.18.0...929f14a)
- github.com/containers/libtrust: [14b9617 → 9c3a6c2](https://github.com/containers/libtrust/compare/14b9617...9c3a6c2)
- github.com/containers/ocicrypt: [v1.1.2 → v1.1.5](https://github.com/containers/ocicrypt/compare/v1.1.2...v1.1.5)
- github.com/containers/storage: [v1.38.0 → 7df6428](https://github.com/containers/storage/compare/v1.38.0...7df6428)
- github.com/coreos/etcd: [v3.3.10+incompatible → v3.3.13+incompatible](https://github.com/coreos/etcd/compare/v3.3.10...v3.3.13)
- github.com/cpuguy83/go-md2man/v2: [v2.0.1 → v2.0.2](https://github.com/cpuguy83/go-md2man/v2/compare/v2.0.1...v2.0.2)
- github.com/docker/distribution: [v2.7.1+incompatible → v2.8.1+incompatible](https://github.com/docker/distribution/compare/v2.7.1...v2.8.1)
- github.com/docker/docker: [v20.10.12+incompatible → v20.10.17+incompatible](https://github.com/docker/docker/compare/v20.10.12...v20.10.17)
- github.com/docker/go-connections: [v0.4.0 → 58542c7](https://github.com/docker/go-connections/compare/v0.4.0...58542c7)
- github.com/envoyproxy/go-control-plane: [v0.10.1 → cf90f65](https://github.com/envoyproxy/go-control-plane/compare/v0.10.1...cf90f65)
- github.com/envoyproxy/protoc-gen-validate: [v0.6.2 → v0.1.0](https://github.com/envoyproxy/protoc-gen-validate/compare/v0.6.2...v0.1.0)
- github.com/form3tech-oss/jwt-go: [v3.2.2+incompatible → v3.2.3+incompatible](https://github.com/form3tech-oss/jwt-go/compare/v3.2.2...v3.2.3)
- github.com/frankban/quicktest: [v1.11.3 → v1.14.0](https://github.com/frankban/quicktest/compare/v1.11.3...v1.14.0)
- github.com/fsnotify/fsnotify: [v1.5.1 → v1.5.4](https://github.com/fsnotify/fsnotify/compare/v1.5.1...v1.5.4)
- github.com/fsouza/go-dockerclient: [v1.7.7 → v1.8.1](https://github.com/fsouza/go-dockerclient/compare/v1.7.7...v1.8.1)
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
- github.com/imdario/mergo: [v0.3.12 → v0.3.13](https://github.com/imdario/mergo/compare/v0.3.12...v0.3.13)
- github.com/insomniacslk/dhcp: [ad197bc → 3c283ff](https://github.com/insomniacslk/dhcp/compare/ad197bc...3c283ff)
- github.com/jinzhu/copier: [v0.3.4 → v0.3.5](https://github.com/jinzhu/copier/compare/v0.3.4...v0.3.5)
- github.com/jonboulle/clockwork: [v0.2.0 → v0.2.2](https://github.com/jonboulle/clockwork/compare/v0.2.0...v0.2.2)
- github.com/julienschmidt/httprouter: [v1.2.0 → v1.3.0](https://github.com/julienschmidt/httprouter/compare/v1.2.0...v1.3.0)
- github.com/klauspost/compress: [v1.14.1 → v1.15.6](https://github.com/klauspost/compress/compare/v1.14.1...v1.15.6)
- github.com/kr/pretty: [v0.2.1 → v0.3.0](https://github.com/kr/pretty/compare/v0.2.1...v0.3.0)
- github.com/mailru/easyjson: [v0.7.0 → v0.7.6](https://github.com/mailru/easyjson/compare/v0.7.0...v0.7.6)
- github.com/mattn/go-colorable: [v0.1.12 → v0.1.11](https://github.com/mattn/go-colorable/compare/v0.1.12...v0.1.11)
- github.com/miekg/dns: [v1.1.41 → v1.1.35](https://github.com/miekg/dns/compare/v1.1.41...v1.1.35)
- github.com/miekg/pkcs11: [v1.0.3 → v1.1.1](https://github.com/miekg/pkcs11/compare/v1.0.3...v1.1.1)
- github.com/mitchellh/mapstructure: [v1.4.3 → v1.4.2](https://github.com/mitchellh/mapstructure/compare/v1.4.3...v1.4.2)
- github.com/moby/sys/mount: [v0.2.0 → v0.3.3](https://github.com/moby/sys/mount/compare/v0.2.0...v0.3.3)
- github.com/moby/sys/mountinfo: [v0.5.0 → v0.6.2](https://github.com/moby/sys/mountinfo/compare/v0.5.0...v0.6.2)
- github.com/moby/sys/symlink: [v0.1.0 → v0.2.0](https://github.com/moby/sys/symlink/compare/v0.1.0...v0.2.0)
- github.com/mwitkow/go-conntrack: [cc309e4 → 2f06839](https://github.com/mwitkow/go-conntrack/compare/cc309e4...2f06839)
- github.com/onsi/gomega: [v1.16.0 → v1.19.0](https://github.com/onsi/gomega/compare/v1.16.0...v1.19.0)
- github.com/opencontainers/runc: [v1.1.0 → 8b9452f](https://github.com/opencontainers/runc/compare/v1.1.0...8b9452f)
- github.com/opencontainers/selinux: [v1.10.0 → v1.10.1](https://github.com/opencontainers/selinux/compare/v1.10.0...v1.10.1)
- github.com/openshift/imagebuilder: [87f3e48 → 009dbc6](https://github.com/openshift/imagebuilder/compare/87f3e48...009dbc6)
- github.com/ostreedev/ostree-go: [759a8c1 → 719684c](https://github.com/ostreedev/ostree-go/compare/759a8c1...719684c)
- github.com/pascaldekloe/goe: [v0.1.0 → 57f6aae](https://github.com/pascaldekloe/goe/compare/v0.1.0...57f6aae)
- github.com/prometheus/client_golang: [v1.7.1 → v1.11.1](https://github.com/prometheus/client_golang/compare/v1.7.1...v1.11.1)
- github.com/prometheus/common: [v0.10.0 → v0.30.0](https://github.com/prometheus/common/compare/v0.10.0...v0.30.0)
- github.com/prometheus/procfs: [v0.6.0 → v0.7.3](https://github.com/prometheus/procfs/compare/v0.6.0...v0.7.3)
- github.com/rootless-containers/rootlesskit: [v0.14.6 → v1.0.1](https://github.com/rootless-containers/rootlesskit/compare/v0.14.6...v1.0.1)
- github.com/sagikazarmark/crypt: [v0.3.0 → v0.1.0](https://github.com/sagikazarmark/crypt/compare/v0.3.0...v0.1.0)
- github.com/seccomp/libseccomp-golang: [3879420 → v0.10.0](https://github.com/seccomp/libseccomp-golang/compare/3879420...v0.10.0)
- github.com/sergi/go-diff: [v1.1.0 → v1.2.0](https://github.com/sergi/go-diff/compare/v1.1.0...v1.2.0)
- github.com/soheilhy/cmux: [v0.1.4 → v0.1.5](https://github.com/soheilhy/cmux/compare/v0.1.4...v0.1.5)
- github.com/spf13/cobra: [v1.3.0 → v1.5.0](https://github.com/spf13/cobra/compare/v1.3.0...v1.5.0)
- github.com/spf13/viper: [v1.10.0 → v1.9.0](https://github.com/spf13/viper/compare/v1.10.0...v1.9.0)
- github.com/stretchr/objx: [v0.2.0 → v0.4.0](https://github.com/stretchr/objx/compare/v0.2.0...v0.4.0)
- github.com/stretchr/testify: [v1.7.0 → v1.8.0](https://github.com/stretchr/testify/compare/v1.7.0...v1.8.0)
- github.com/tmc/grpc-websocket-proxy: [3cfed13 → e5319fd](https://github.com/tmc/grpc-websocket-proxy/compare/3cfed13...e5319fd)
- github.com/tv42/httpunix: [b75d861 → 2ba4b9c](https://github.com/tv42/httpunix/compare/b75d861...2ba4b9c)
- github.com/urfave/cli/v2: [v2.3.0 → v2.5.1](https://github.com/urfave/cli/v2/compare/v2.3.0...v2.5.1)
- github.com/urfave/cli: [v1.22.4 → v1.22.9](https://github.com/urfave/cli/compare/v1.22.4...v1.22.9)
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
- golang.org/x/term: 6886f2d → 065cf7b
- golang.org/x/time: 3af7569 → 1f47c86
- golang.org/x/tools: v0.1.7 → v0.1.10
- google.golang.org/api: v0.62.0 → v0.56.0
- google.golang.org/genproto: 3a66f56 → 325a892
- google.golang.org/grpc: v1.42.0 → v1.44.0
- google.golang.org/protobuf: v1.27.1 → v1.28.0
- gopkg.in/check.v1: 8fa4692 → 10cb982
- gopkg.in/ini.v1: v1.66.2 → v1.63.2
- gopkg.in/yaml.v3: 496545a → v3.0.1
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
- github.com/checkpoint-restore/go-criu/v4: [v4.1.0](https://github.com/checkpoint-restore/go-criu/v4/tree/v4.1.0)
- github.com/circonus-labs/circonus-gometrics: [v2.3.1+incompatible](https://github.com/circonus-labs/circonus-gometrics/tree/v2.3.1)
- github.com/circonus-labs/circonusllhist: [v0.1.3](https://github.com/circonus-labs/circonusllhist/tree/v0.1.3)
- github.com/hashicorp/go-retryablehttp: [v0.5.3](https://github.com/hashicorp/go-retryablehttp/tree/v0.5.3)
- github.com/iancoleman/strcase: [v0.2.0](https://github.com/iancoleman/strcase/tree/v0.2.0)
- github.com/ishidawataru/sctp: [f2269e6](https://github.com/ishidawataru/sctp/tree/f2269e6)
- github.com/lyft/protoc-gen-star: [v0.5.3](https://github.com/lyft/protoc-gen-star/tree/v0.5.3)
- github.com/mtrmac/gpgme: [v0.1.2](https://github.com/mtrmac/gpgme/tree/v0.1.2)
- github.com/vbauerster/mpb/v6: [v6.0.4](https://github.com/vbauerster/mpb/v6/tree/v6.0.4)
