#0-vars.tf

variable "zone" {
  description = ""
  type        = string
  default     = "us-central1-c"  # You can set a default value or leave it empty
}

variable "project" {
  description = "gcp-cw-project-453819"
  type        = string
  default     = "cloudwarrior-primary-project"  # You can set a default value or leave it empty
