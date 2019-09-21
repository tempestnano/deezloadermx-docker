# deezloadermx-docker

Deezloader Remix in a docker container

## How to run this

Deezloader Remix will work out of the box, but you should at least set a fixed port for the webinterface and map a folder to the docker where your downloads go.

You can also map a local drive for the config file (It's under /config/ in the container), but that is optional. If they add settings or rework settings in the future, there is no guarantee that your old configs will work. So beware

```
$ docker run -d --name Deezldr \
              -v /your/storage/path/:/downloads \
              -v /your/config/location:/config \
              -e PUID=1000 \
              -e PGID=1000 \
              -p 1730:1730 \
              bocki/deezloaderrmx
```

Explanation:
`-v /your/storage/path/:/downloads`     - Path for your music downloads. Adapt the left part of the :
`-v /your/config/location:/config`      - OPTIONAL: Path to your local configuration. Adapt the left part of the :
`-e PUID=1000`                          - OPTIONAL: User ID of the user you want the container to run as in order to fix folder permission issues
`-e PGID=1000`                          - OPTIONAL: Group ID, see above
`-p 1730:1730`                          - Port forwarded to the webinterface. If you want to change the outward facing port, change the left number of the :
`bocki/deezloaderrmx`                   - This container

To access the webinterface, go to http://YOURSERVERIP:1730 

## Tags

There are only 2 tags right now.
latest      : Latest state of the master branch. Can be considered "working"
latest-dev  : Latest state of the development branch. Highly unstable, can break at any time. You should not generally use this.

## Disclaimer and Links

I am in no way affiliated with the DeezloaderRMX project (or any other Deezloader project for that matter), I just wanted the challenge to create my first docker

Dockerhub link for this container: https://hub.docker.com/r/bocki/deezloaderrmx

Repo for Deezloader Remix: https://notabug.org/RemixDevs/DeezloaderRemix

Issue Tracker for this Docker: https://github.com/Bockiii/deezloadermx-docker/issues


Feel free to open a request in github that is docker related, not for Deezloader development. Go to their repo for that.