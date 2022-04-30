##########################################################################
### REQUIRED
##########################################################################
variable "project_name" {
  description = "The name of the Project"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "project_description" {
  default     = null
  description = "The description of the project"
  type        = string
}

variable "project_purpose" {
  default     = "Web Application"
  description = "The purpose of the project. Default is `Web Application`"
  type        = string
}

variable "project_environment" {
  default     = "Development"
  description = "The environment of the project's resources. The possible values are: `Development`, `Staging`, `Production`). Default is `Development`"
  type        = string
}

variable "attach_resources" {
  default     = false
  description = "Determinates if `resources` should be attach to the project or not"
  type        = bool
}

variable "resources" {
  default     = null
  description = "Required if `attach_resources` is set to `true`. A list of uniform resource names (URNs) for the resources associated with the project"
  type        = list(string)
}
