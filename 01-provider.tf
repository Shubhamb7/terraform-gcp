terraform {
  required_version = "~> 1.10.4"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.27.0"
    }
  }
}

provider "google" {
  project     = "home-nonprod"
  region      = "us-central1"
}

