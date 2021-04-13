#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

# Uncomment the following line to debug stub failures
# export BUILDKITE_AGENT_STUB_DEBUG=/dev/tty

@test "Successfully calls GitHub Status API" {
  export BUILDKITE_PLUGIN_GITHUB_STATUS_CONTEXT=test-status
  export BUILDKITE_REPO=git@github.com:ailohq/github-status-buildkite-plugin.git
  export BUILDKITE_COMMIT=104b8f03cfd1f61b6fd7cf913a1d4542d35aff21
  export BUILDKITE_COMMAND_EXIT_STATUS=0

  run "$PWD/hooks/post-command"

  assert_success
}