# Alpine build of Deluge BitTorrent Client

This repository builds the source code of [Deluge BitTorrent Client](https://github.com/deluge-torrent/deluge)
into Alpine/Edge packages (see releases) that will be used to serve Deluge in Alpine Docker containers.
Before building, we made some small changes that are not appropriate to submit to the upstream repo:

- **Version hack**: Because some PT sites don't support version 2.x.x, we had to modify the version number back to 1.3.15.   

- **Removed login for web UI**: Since this package is intended to be use in a Docker container, login is not necessary (at least for me personally).

If that's not the case for you, please consider use [linuxserver/deluge](https://hub.docker.com/r/linuxserver/deluge) docker images.
