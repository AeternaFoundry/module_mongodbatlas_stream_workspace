variable "stream_workspaces" {
  description = <<EOT
Map of stream_workspaces, attributes below
Required:
    - data_process_region
    - project_id
    - workspace_name
Optional:
    - failover_regions
    - stream_config
EOT

  type = map(object({
    data_process_region = object({
      cloud_provider = string
      region         = string
    })
    project_id     = string
    workspace_name = string
    failover_regions = optional(list(object({
      cloud_provider = string
      region         = string
    })))
    stream_config = optional(object({
      max_tier_size = optional(string)
      tier          = optional(string)
    }))
  }))
}

