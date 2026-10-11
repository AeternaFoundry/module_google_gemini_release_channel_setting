resource "google_gemini_release_channel_setting" "gemini_release_channel_settings" {
  for_each = var.gemini_release_channel_settings

  location                   = each.value.location
  release_channel_setting_id = each.value.release_channel_setting_id
  deletion_policy            = each.value.deletion_policy
  labels                     = each.value.labels
  project                    = each.value.project
  release_channel            = each.value.release_channel

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

