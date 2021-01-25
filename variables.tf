variable "region" {
  type    = string
  default = "us-east1"
}

variable "project_id" {
  type    = string
  default = "devops-catalog-gke"
}

variable "cluster_name" {
  type    = string
  default = "devops-catalog"
}

variable "k8s_version" {
  type = string
  default = "1.17.14-gke.1200"
}

variable "min_node_count" {
  type    = number
  default = 1
}

variable "max_node_count" {
  type    = number
  default = 1
}

variable "machine_type" {
  type    = string
  default = "e2-small"
}

variable "preemptible" {
  type    = bool
  default = true
}

variable "state_bucket" {
  type    = string
  default = "doc-20210103190310"
}
