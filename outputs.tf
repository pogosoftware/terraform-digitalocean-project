output "project_id" {
  description = "The id of the project"
  value       = try(digitalocean_project.this[0].id, "")
}

output "project_owner_uuid" {
  description = "The unique universal identifier of the project owner"
  value       = try(digitalocean_project.this[0].owner_uuid, "")
}

output "project_owner_id" {
  description = "The id of the project owner"
  value       = try(digitalocean_project.this[0].owner_id, "")
}
