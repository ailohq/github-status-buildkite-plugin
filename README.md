# GitHub Status Buildkite Plugin

Creates GitHub status before/after a Buildkite step is executed.

## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - command: echo 'Deploy preview created'
    plugins:
      - ailohq/github-status#v1.0.0:
          username-env: GITHUB_USERNAME # optional
          token-env: GITHUB_TOKEN # optional
          target_url: https://ailo.io # optional
          description: Deploy preview # optional
          context: deploy-preview # optional (recommended though)
```

## Configuration

- `username-env`, `token-env` - names of env variables containing the username and personal access token to the user having access to use GitHub Status API. By default set to `GITHUB_USERNAME` and `GITHUB_TOKEN`.

- `description`, `target_url`, `context` - see https://docs.github.com/en/rest/reference/repos#create-a-commit-status . By default empty.

## Developing

To lint the `plugin.yml` file:

```sh
docker-compose run --rm lint
```

To run the tests:

```shell
docker-compose run --rm -e GITHUB_USERNAME=trunkbot -e GITHUB_TOKEN=abc123 tests
```
