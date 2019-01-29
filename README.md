# travis-cli-docker
Travis CLI, but in Docker

## Installation

Sync and run `make`, this will build the Docker image so it's available on your system

## Usage
Run `travis` script with arguments as you would the normal Travis CLI. E.g.

```bash
./travis report
./travis login
./travis report
```

## How it works
Usually Docker images are considered stateless, 
but here the `travis` script commits all changes back to the image 
which means next time it runs it remembers what happened last.

This allows changes to persit, which micks how the native Travis CLI works
(so things like `travis login` persists)
