locals {
  env = merge(
    yamldecode(file(find_in_parent_folders("env.yaml")))
  )
}

terraform {
  source = "${path_relative_from_include()}//modules/resource_group"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  name = local.env.name
  location = local.env.location
  tags = merge(local.env.env_tags, {})
}