#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

# Uncomment the following line to debug stub failures
# export BUILDKITE_AGENT_STUB_DEBUG=/dev/tty

@test "Creates an annotation with the file count" {
  export BUILDKITE_PLUGIN_GITHUB_STATUS_CONTEXT=test-status

  run "$PWD/hooks/post-command"

  assert_success

  unstub buildkite-agent
}