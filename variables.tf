variable "kibana_synthetics_monitors" {
  description = <<EOT
Map of kibana_synthetics_monitors, attributes below
Required:
    - name
Optional:
    - alert
    - browser
    - enabled
    - http
    - icmp
    - labels
    - locations
    - namespace
    - params
    - private_locations
    - retest_on_failure
    - schedule
    - service_name
    - space_id
    - tags
    - tcp
    - timeout
    - timeouts
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    name = string
    alert = optional(object({
      status = optional(object({
        enabled = optional(bool)
      }))
      tls = optional(object({
        enabled = optional(bool)
      }))
    }))
    browser = optional(object({
      ignore_https_errors = optional(bool)
      inline_script       = string
      playwright_options  = optional(string)
      screenshots         = optional(string)
      synthetics_args     = optional(list(string))
    }))
    enabled = optional(bool)
    http = optional(object({
      check                       = optional(string)
      ipv4                        = optional(bool)
      ipv6                        = optional(bool)
      max_redirects               = optional(number)
      mode                        = optional(string)
      password                    = optional(string)
      proxy_header                = optional(string)
      proxy_url                   = optional(string)
      response                    = optional(string)
      ssl_certificate             = optional(string)
      ssl_certificate_authorities = optional(list(string))
      ssl_key                     = optional(string)
      ssl_key_passphrase          = optional(string)
      ssl_supported_protocols     = optional(list(string))
      ssl_verification_mode       = optional(string)
      url                         = string
      username                    = optional(string)
    }))
    icmp = optional(object({
      host = string
      wait = optional(number)
    }))
    labels            = optional(map(string))
    locations         = optional(list(string))
    namespace         = optional(string)
    params            = optional(string)
    private_locations = optional(list(string))
    retest_on_failure = optional(bool)
    schedule          = optional(number)
    service_name      = optional(string)
    space_id          = optional(string)
    tags              = optional(list(string))
    tcp = optional(object({
      check_receive               = optional(string)
      check_send                  = optional(string)
      host                        = string
      proxy_url                   = optional(string)
      proxy_use_local_resolver    = optional(bool)
      ssl_certificate             = optional(string)
      ssl_certificate_authorities = optional(list(string))
      ssl_key                     = optional(string)
      ssl_key_passphrase          = optional(string)
      ssl_supported_protocols     = optional(list(string))
      ssl_verification_mode       = optional(string)
    }))
    timeout = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

