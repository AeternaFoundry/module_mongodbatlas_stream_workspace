resource "mongodbatlas_stream_workspace" "stream_workspaces" {
  for_each = var.stream_workspaces

  data_process_region = each.value.data_process_region
  project_id          = each.value.project_id
  workspace_name      = each.value.workspace_name
  failover_regions    = each.value.failover_regions
  stream_config       = each.value.stream_config
}

