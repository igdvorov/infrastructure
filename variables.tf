variable "yc_iam_token" {
  description = "yandex IAM token"
  type        = string
  sensitive   = true
}

variable "yc_cloud_id" {
  type        = string
  default     = "b1g3jddf4nv5e9okle7p"
  description = "yc_cloud_id"
}

variable "yc_folder_id" {
  type        = string
  default     = "b1gr94c4fmjnth6k8p36"
  description = "yc_folder_id"
}

variable "zones" {
  type        = map
  default     = { 
    "yc_a" = "ru-central1-a" 
    "yc_b" = "ru-central1-b" 
    "yc_c" = "ru-central1-c" 
  }
  description = "zone ru-central1-a"
}

variable "yc_vm_name" {
  type        = string
  default     = "chapter5-lesson2-ivan-dvorov"
  description = "description"
}

variable "yc_subnet_id" {
  type        = string
  default     = "e9bdi1h4rfet06lt0dkq"
  description = "yc_subnet_id"
}

variable yc_image_id {
  type        = string
  default     = "fd80qm01ah03dkqb14lc"
  description = "image id"
}

variable yc_cores {
  type        = number
  default     = 2
  description = "cores"
}
variable yc_memory {
  type        = number
  default     = 2
  description = "memory"
}
