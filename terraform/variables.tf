variable "service_name" {
  description = "Name of the Render web service"
  type        = string
  default     = "terraform-render-docker"
}

variable "render_region" {
  description = "Render service region"
  type        = string
  default     = "frankfurt"
}

variable "render_plan" {
  description = "Render service plan"
  type        = string
  default     = "starter"
}

variable "repository_url" {
  description = "GitHub repository URL"
  type        = string
}

variable "repository_branch" {
  description = "GitHub branch"
  type        = string
  default     = "main"
}