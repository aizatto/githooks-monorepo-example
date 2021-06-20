# README

The goal of this repository is to test out how to do precommit hoosk for a 
monorepo.

## Configuration

Get any existing configuration
```sh
git config --get core.hooksPath
```

Set configuration
```sh
git config core.hooksPath ./.githooks
```

Skipping hooks
```sh
git commit -m 'commit message' --no-verify
```

## How it works

When the `git hook` runs, `.githooks/pre-commit` gets fired checking for all files
that exist in `.githooks/pre-commit-hooks`.

It assumes that the `filename` matches the `directory` in the monorepo.

Using `git` it will check if any staged files have been changed. If it has been
changed it will excute the corresponding script.

# Documentation

- https://git-scm.com/docs/git-diff
- https://git-scm.com/docs/githooks