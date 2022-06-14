.PHONY: all
all:	podman buildah

# FIXME: there must be a better way to obtain these
PODMAN_ACTIVE_BRANCHES  = v4.1 main
BUILDAH_ACTIVE_BRANCHES = release-1.23 release-1.24 release-1.26 main

.PHONY: podman buildah
podman:
	bin/make-release-notes $@ $(PODMAN_ACTIVE_BRANCHES)

buildah:
	bin/make-release-notes $@ $(BUILDAH_ACTIVE_BRANCHES)
