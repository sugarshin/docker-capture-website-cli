# docker-capture-website-cli

![GitHub Actions](https://github.com/sugarshin/docker-capture-website-cli/actions/workflows/build-and-push.yml/badge.svg)
[![Docker Version](https://img.shields.io/docker/v/sugarshin/capture-website-cli)](https://hub.docker.com/r/sugarshin/capture-website-cli)
[![Docker Pull](https://img.shields.io/docker/pulls/sugarshin/capture-website-cli)](https://hub.docker.com/r/sugarshin/capture-website-cli)

> https://github.com/sindresorhus/capture-website-cli

## Usage

```sh
$ docker run --cap-add=SYS_ADMIN sugarshin/capture-website-cli:latest 'https://sugarshin.net/' > screenshot.png
```
