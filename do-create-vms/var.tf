variable do_token {
  type        = string
  default     = ""
  description = "dop_v1_814980be5ccc184d1ac9422049e8a9524730f7bbdbc25f31719e4a21afef542f"
}

variable ssh_key {
  type        = string
  default     = ""
  description = "b7:e9:72:77:81:b9:db:e4:aa:9b:f9:c1:02:52:77:0d"
}
variable "droplet_names" {
  type    = list(string)
  default = ["master", "worker1", "worker2"]
}