variable "iam_token" {
  description = "yandex IAM token"
  type        = string
  sensitive   = true
}

variable "yc_cloud_id" {
  type        = string
  description = "yc_cloud_id"
  sensitive   = true
}

variable "yc_folder_id" {
  type        = string
  sensitive   = true
  description = "description"
}
