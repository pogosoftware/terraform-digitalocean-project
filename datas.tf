data "digitalocean_project" "this" {
  count = var.attach_resources ? 1 : 0

  name = var.project_name
}
