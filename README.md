# GitHub Status Buildkite Plugin

Creates GitHub status before/after a Buildkite step is executed.

## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - command: echo 'Deploy preview created'
    plugins:
      - ailohq/github-status#v1.0.0:
          username: trunkbot
          token: abc123
          target_url: https://ailo.io
          context: deploy-preview
```

## Configuration

- `username`, `token` - username and a personal access token to the user having access to use GitHub Status API
- `description`, `target_url`, `context` - see https://docs.github.com/en/rest/reference/repos#create-a-commit-status

## Developing

To lint the `plugin.yml` file:

```sh
docker-compose run --rm lint
```

To run the tests:

```shell
docker-compose run --rm -e BUILDKITE_PLUGIN_GITHUB_STATUS_USERNAME=trunkbot -e BUILDKITE_PLUGIN_GITHUB_STATUS_TOKEN=abc123 tests
```
