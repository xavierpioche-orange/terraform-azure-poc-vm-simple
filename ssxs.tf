module "ssxs" {
 source="./modules/vm/"
 dc_env = "dv"
 dc_vm_count = 2
 dc_vm_prefix = "dcrm"
 dc_vm_suffix = "ssxs"
 dc_vm_data_disk_size = 300
 dc_subnet_id = azurerm_subnet.sn-base.id
 dc_region = azurerm_resource_group.rg-base.location 
}


output "v_ip" {
  value = module.ssxs.vms_ip
}

output "v_vms" {
    value = module.ssxs.vms_name
}

output "v_pass" {
    value = module.ssxs.vms_pass
}