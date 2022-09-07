// locals {
//   env = merge(
//     yamldecode(file(find_in_parent_folders("env.yaml")))
//   )
// }

// terraform {
//   source = "${path_relative_from_include()}//modules/network"
// }

// include {
//   path = find_in_parent_folders()
// }

// inputs = {
//   name = local.env.name
//   tags = merge(local.env.region_tags, local.env.tags, {})
// }
