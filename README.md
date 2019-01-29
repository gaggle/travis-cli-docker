# travis-cli-docker
Travis CLI, but in Docker

## Installation

Sync and run `make`, this will build the Docker image so it's available on your system

## Usage
Run `travis` script with arguments as you would the normal Travis CLI. E.g.

```bash
$ ./travis report

$ ./travis login

$ ./travis report
Logged In:                as "gaggle"
```

The current working directory is mapped into the Docker process.
Keep in mind Travis can't see outside this directory due to Docker's security model, 
but all subfolders are accessible.

## How it works
Usually Docker images are effectively stateless,
but here the `travis` script commits all changes back on top of the image
so all changes are persisted. This micks how the native Travis CLI works, 
so things like `travis login` persists.

Furthermore the current working directory is mapped into the Docker image
so you can use commands like `encrypt-file`. 
The Docker image is run as your current user
so any files created will have correct permissions.
