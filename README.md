# deezloadermx-docker

Deezloader Remix in a docker container

## How to run this

Deezloader Remix will work out of the box, but you should at least set a fixed port for the webinterface and map a folder to the docker where your downloads go.

You can also map a local drive for the config file (It's under /config/ in the container), but that is optional. If they add settings or rework settings in the future, there is no guarantee that your old configs will work. So beware

```
$ docker run -d --name Deezldr \
              -v /your/storage/path/:/downloads \
              -v /your/config/location:/config \
              -p 1730:1730 \
              bocki/deezloaderrmx
```

To access the webinterface, go to http://YOURSERVERIP:1730 

## Disclaimer and Links

I am in no way affiliated with the DeezloaderRMX project (or any other Deezloader project for that matter), I just wanted the challenge to create my first docker

Repo for Deezloader Remix: https://notabug.org/RemixDevs/DeezloaderRemix
Issue Tracker for this Docker: https://github.com/Bockiii/deezloadermx-docker/issues

Feel free to open a request in github that is docker related, not for Deezloader development. Go to their repo for that.