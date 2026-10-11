output "stream_workspaces_id" {
  description = "Map of id values across all stream_workspaces, keyed the same as var.stream_workspaces except keys with no id are omitted"
  value       = { for k, v in mongodbatlas_stream_workspace.stream_workspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stream_workspaces_data_process_region" {
  description = "Map of data_process_region values across all stream_workspaces, keyed the same as var.stream_workspaces except keys with no data_process_region are omitted"
  value       = { for k, v in mongodbatlas_stream_workspace.stream_workspaces : k => v.data_process_region if v.data_process_region != null && length(v.data_process_region) > 0 }
}
output "stream_workspaces_failover_regions" {
  description = "Map of failover_regions values across all stream_workspaces, keyed the same as var.stream_workspaces except keys with no failover_regions are omitted"
  value       = { for k, v in mongodbatlas_stream_workspace.stream_workspaces : k => v.failover_regions if v.failover_regions != null && length(v.failover_regions) > 0 }
}
output "stream_workspaces_hostnames" {
  description = "Map of hostnames values across all stream_workspaces, keyed the same as var.stream_workspaces except keys with no hostnames are omitted"
  value       = { for k, v in mongodbatlas_stream_workspace.stream_workspaces : k => v.hostnames if v.hostnames != null && length(v.hostnames) > 0 }
}
output "stream_workspaces_project_id" {
  description = "Map of project_id values across all stream_workspaces, keyed the same as var.stream_workspaces except keys with no project_id are omitted"
  value       = { for k, v in mongodbatlas_stream_workspace.stream_workspaces : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "stream_workspaces_stream_config" {
  description = "Map of stream_config values across all stream_workspaces, keyed the same as var.stream_workspaces except keys with no stream_config are omitted"
  value       = { for k, v in mongodbatlas_stream_workspace.stream_workspaces : k => v.stream_config if v.stream_config != null && length(v.stream_config) > 0 }
}
output "stream_workspaces_workspace_name" {
  description = "Map of workspace_name values across all stream_workspaces, keyed the same as var.stream_workspaces except keys with no workspace_name are omitted"
  value       = { for k, v in mongodbatlas_stream_workspace.stream_workspaces : k => v.workspace_name if v.workspace_name != null && length(v.workspace_name) > 0 }
}

