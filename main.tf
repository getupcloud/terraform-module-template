### Place your code here ###

resource "shell_script" "example" {
  lifecycle_commands {
    create = "echo '{\"cluster_name\":\"$CLUSTER_NAME\"}'"
    update = "echo '{\"example\":\"$CLUSTER_NAME\"}'"
    read   = "echo '{\"example\":\"$CLUSTER_NAME\"}'"
    delete = "echo '{}'"
  }

  environment = {
    KUBECONFIG   = local.kubeconfig
    CLUSTER_NAME = var.cluster_name
  }
}
