# deezloadermx-docker

Deezloader Remix in a Docker container.

## How to run this

Deezloader Remix will work out of the box, but you should at least set a fixed port for the web interface and mount a folder to the container for where your downloads will go.

You can also map a folder on the host for the config file (mount a local folder to /config/), but that's optional. If they add or rework settings in the future, there is no guarantee that your old configs will work, so beware.

### Example for Docker:
```
$ docker run -d --name Deezldr \
              -v /your/storage/path/:/downloads \
              -v /your/config/location:/config \
              -e PUID=1000 \
              -e PGID=1000 \
              -p 1730:1730 \
              bocki/deezloaderrmx
```

### Example for Docker Compose:
```
version: '3.3'
services:
    deezloaderrmx:
	    image: bocki/deezloaderrmx
        container_name: Deezldr
        volumes:
            - /your/storage/path/:/downloads
            - /your/config/location:/config
        environment:
            - PUID=1000
            - PGID=1000
        ports:
            - 1730:1730
```

### Explanation:

`-v /your/storage/path/:/downloads`     - Path for your music downloads. Adapt the left part of the :

`-v /your/config/location:/config`      - OPTIONAL: Path to your local configuration. Adapt the left part of the :

`-e PUID=1000`                          - OPTIONAL: User ID of the user you want the container to run as in order to fix folder permission issues

`-e PGID=1000`                          - OPTIONAL: Group ID, see above

`-p 1730:1730`                          - Port forwarded to the webinterface. If you want to change the outward facing port, change the left number of the :

`bocki/deezloaderrmx`                   - This container

To access the web interface, go to http://<YOURSERVERIP>:1730 

## Tags

There are only 2 tags right now.
latest      : Latest state of the master branch. Can be considered "working"
latest-dev  : Latest state of the development branch. Highly unstable, can break at any time. You should not generally use this.

## Disclaimer and Links

I am in no way affiliated with the DeezloaderRMX project (or any other Deezloader project for that matter), I just wanted the challenge to create my first Docker container.

Dockerhub link for this container: https://hub.docker.com/r/bocki/deezloaderrmx

Repo for Deezloader Remix: https://notabug.org/RemixDevs/DeezloaderRemix

Issue Tracker for this Docker: https://github.com/Bockiii/deezloadermx-docker/issues


Feel free to open a issue that is Docker related, and not related to Deezloader development. Go to the Deezloader repository for that.