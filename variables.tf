variable "gemini_release_channel_settings" {
  description = <<EOT
Map of gemini_release_channel_settings, attributes below
Required:
    - location
    - release_channel_setting_id
Optional:
    - deletion_policy
    - labels
    - project
    - release_channel
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location                   = string
    release_channel_setting_id = string
    deletion_policy            = optional(string)
    labels                     = optional(map(string))
    project                    = optional(string)
    release_channel            = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

