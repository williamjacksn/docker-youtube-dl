# docker-youtube-dl

A Docker image for [ytdl-org/youtube-dl][a].

[a]: https://github.com/ytdl-org/youtube-dl
```shell
docker image pull ghcr.io/williamjacksn/youtube-dl
```

## Usage

```shell
docker container run -v "$(pwd):/workspace" -w /workspace ghcr.io/williamjacksn/youtube-dl --help
```
