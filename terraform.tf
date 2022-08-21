/*
Created Date - 2022-08-21
Author: Noctsol
Summary:
    Controls the configuration for terraform and the providers used.
*/


terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.22.1"
    }

    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.19.1"
    }

    heroku = {
      source = "heroku/heroku"
      version = "5.1.2"
    }

    aws = {
      source = "hashicorp/aws"
      version = "4.27.0"
    }

    google = {
      source = "hashicorp/google"
      version = "4.32.0"
    }
  }

  cloud "remote" {
    hostname     = "app.terraform.io"
    organization = "myorg"
    workspaces {
      name = "myworkspace"
    }
  }
}

provider "digitalocean" {
    token = var.DO_TOKEN
}


provider "azurerm" {
    features {
        resource_group {
            prevent_deletion_if_contains_resources = true
        }
    }

    subscription_id = ""
    tenant_id = ""
    client_id = ""
    client_secret = ""
}

provider "heroku" {
  email = "my-email"
  api_key = "my-a"
}

provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

provider "google" {
  project     = "my-project-id"
  region      = "us-central1"
  zone        = "us-central1-c"
  credentials = "my-credentials"
}