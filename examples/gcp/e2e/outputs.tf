output "gcp_public_ip" {
  value          = module.gcp_machine.machine_ip
  project_region = var.project_region
}
