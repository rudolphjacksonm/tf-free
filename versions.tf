terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.69.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "3.69.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "3.42.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.61.0"
    }
  }
}

provider "aws" {
  region     = var.aws_default_region
  access_key = var.aws_account_id
  secret_key = var.aws_account_key
}

provider "google" {
  project     = var.gcp_project_id
  region      = var.gcp_project_region
  credentials = file("/root/keys/application_default_credentials.json")

}
provider "google-beta" {
  project     = var.gcp_project_id
  region      = var.gcp_project_region
  credentials = file("/root/keys/application_default_credentials.json")
}

provider "azurerm" {
  features {}
}
