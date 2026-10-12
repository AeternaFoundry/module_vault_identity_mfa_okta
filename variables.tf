variable "identity_mfa_okta" {
  description = <<EOT
Map of identity_mfa_okta, attributes below
Required:
    - api_token
    - org_name
Optional:
    - base_url
    - namespace
    - primary_email
    - username_format
EOT

  type = map(object({
    api_token       = string
    org_name        = string
    base_url        = optional(string)
    namespace       = optional(string)
    primary_email   = optional(bool)
    username_format = optional(string)
  }))
}

