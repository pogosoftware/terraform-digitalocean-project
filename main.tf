resource "digitalocean_project" "this" {
  count = !var.attach_resources ? 1 : 0

  name        = var.project_name
  description = var.project_description
  purpose     = var.project_purpose
  environment = var.project_environment
}

resource "digitalocean_project_resources" "this" {
  count = var.attach_resources ? 1 : 0

  project   = data.digitalocean_project.this[0].id
  resources = var.resources
}
