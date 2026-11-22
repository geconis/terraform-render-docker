terraform {
  required_version = ">= 1.0.0"

  required_providers {
    render = {
      source  = "render-oss/render"
      version = "~> 1.9"
    }
  }
}

provider "render" {}

resource "render_web_service" "app" {
  name   = var.service_name
  plan   = var.render_plan
  region = var.render_region

  start_command = "node index.js"

  runtime_source = {
    docker = {
      repo_url        = var.repository_url
      branch          = var.repository_branch
      dockerfile_path = "Dockerfile"
      context         = "."
      auto_deploy     = false
    }
  }
}