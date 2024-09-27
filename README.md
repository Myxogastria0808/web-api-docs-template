---
title: Web API
emoji: 🚀
colorFrom: indigo
colorTo: indigo
sdk: docker
pinned: false
license: mit
---

# Web API Template

This is a template of web API.

## Setup (Nix を利用するパターン)

Nix を使用して環境の構築

> [!WARNING]
> Nix がインストールされている必要があります。

```sh
nix-shell
```

Web API の起動

```sh
cd src
Rscript pr.R
```

## Setup (Docker を利用するパターン)

```sh
docker-compose up -d
```
