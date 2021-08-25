# semantic-release-pkg

Packaged version of the official semantic-release Node package to be used
in environments where no Nodejs is installed.

## Requirements

  - Node v14+

## Development

(1) Install dependencies

```bash
$ npm i
# or
$ yarn
```

(3) Build packaged version

```bash
$ ./Taskfile.sh build
```

> See [`./Taskfile.sh`](./Taskfile.sh) for more tasks to help you develop.

## Release

A typical release runs as follows:

(1) A feature/bugfix branch has been merged into the `main` branch via
    pull request.

(2) Create a new release commit:

```bash
$ ./Taskfile release --no-ci
```

> This will update the version number as well as create/update the 
> `./CHANGELOG.md` file and push all changes upstream. The new commit will
> be tagged automatically.
