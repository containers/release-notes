This repo contains tools for generating release notes for
projects in the github containers organization.

The tool is invoked as:

    $ bin/make-release-notes REPO BRANCHTAG [BRANCHTAG...]

e.g.,

    $ bin/make-release-notes podman v4.1 main

It will fetch the kubernetes release-notes tool (which is HUGE, >4G)
into the `.go` subdirectory, then check out the given REPO, identify
the start and end commits for each branch, and run the tool. Output
will be written to the file REPO/BRANCHTAG.md and git-committed.

To generate HTML:

    $ pandoc -f gfm -o podman/main.html podman/main.md
