set -e

# Agent proto
bazel build //api/agent:agent_service_go_grpc
diff bazel-bin/api/agent/*/agent_service_go_grpc%/cloudesf.googlesource.com/gcpproxy/src/go/proto/api/agent src/go/proto/api/agent
# HTTP filter common
bazel build //api/envoy/http/common:pattern_proto_go_proto
diff bazel-bin/api/envoy/http/common/*/pattern_proto_go_proto%/cloudesf.googlesource.com/gcpproxy/src/go/proto/api/envoy/http/common src/go/proto/api/envoy/http/common
# HTTP filter service_control
bazel build //api/envoy/http/service_control:config_proto_go_proto
diff bazel-bin/api/envoy/http/service_control/*/config_proto_go_proto%/cloudesf.googlesource.com/gcpproxy/src/go/proto/api/envoy/http/service_control src/go/proto/api/envoy/http/service_control