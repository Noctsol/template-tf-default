/*
Created Date - 2022-08-21
Author: Noctsol
Summary:
    Your summary
*/


resource "digitalocean_project" "proj" {
  name        = var.DO_PROJECT_NAME
  description = "Some description"
  purpose     = "Analytics"
  environment = "some-env"

}

# Create a virtual private network
resource "digitalocean_vpc" "vpc" {
  name   = "myvpc"
  region = var.DO_REGION
}

resource "digitalocean_project_resources" "proj_resources" {
  project = digitalocean_project.proj.id
  resources = [
    # Enter your resources here
  ]
}