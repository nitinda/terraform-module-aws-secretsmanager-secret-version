variable "secret_id" {
  description = "Specifies the secret to which you want to add a new version"
}

variable "secret_string" {
  description = "Specifies text data that you want to encrypt and store in this version of the secret."
  default     = null
  type        = any
}

variable "secret_binary" {
  description = "Specifies binary data that you want to encrypt and store in this version of the secret"
  default     = null
}

variable "version_stages" {
  description = "Specifies a list of staging labels that are attached to this version of the secret."
  default     = null
}
