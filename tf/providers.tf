terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.8.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.15.0"
    }
  }
}

provider "kubernetes" {
  config_path = 'C:\Users\Yoav Kobi/.kube/config'
}

provider "helm" {
  kubernetes {
    config_path = 'C:\Users\Yoav Kobi/.kube/config'
  }
}