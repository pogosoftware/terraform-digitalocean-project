# terraform-digitalocean-project

Provides a DigitalOcean Project resource.

Projects allow you to organize your resources into groups that fit the way you work. You can group resources (like Droplets, Spaces, Load Balancers, domains, and Floating IPs) in ways that align with the applications you host on DigitalOcean.

The following resource types can be associated with a project:

* Database Clusters
* Domains
* Droplets
* Floating IP
* Kubernetes Cluster
* Load Balancers
* Spaces Bucket
* Volume

> **_NOTE:_** <br>
A Terraform managed project cannot be set as a default project.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | ~> 2.20 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.21.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_project.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project) | resource |
| [digitalocean_project_resources.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project_resources) | resource |
| [digitalocean_project.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attach_resources"></a> [attach\_resources](#input\_attach\_resources) | Determinates if `resources` should be attach to the project or not | `bool` | `false` | no |
| <a name="input_project_description"></a> [project\_description](#input\_project\_description) | The description of the project | `string` | `null` | no |
| <a name="input_project_environment"></a> [project\_environment](#input\_project\_environment) | The environment of the project's resources. The possible values are: `Development`, `Staging`, `Production`). Default is `Development` | `string` | `"Development"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The name of the Project | `string` | n/a | yes |
| <a name="input_project_purpose"></a> [project\_purpose](#input\_project\_purpose) | The purpose of the project. Default is `Web Application` | `string` | `"Web Application"` | no |
| <a name="input_resources"></a> [resources](#input\_resources) | Required if `attach_resources` is set to `true`. A list of uniform resource names (URNs) for the resources associated with the project | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | The id of the project |
| <a name="output_project_owner_id"></a> [project\_owner\_id](#output\_project\_owner\_id) | The id of the project owner |
| <a name="output_project_owner_uuid"></a> [project\_owner\_uuid](#output\_project\_owner\_uuid) | The unique universal identifier of the project owner |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->