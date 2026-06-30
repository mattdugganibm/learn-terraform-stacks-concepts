component "manifest" {
  source = "./modules/manifest-module"

  inputs = {
    parent_directory = var.parent_directory
    environment_name = var.environment_name
    additional_files = component.pets.pet_filenames
  }

  providers = {
    time = provider.time.this
  }
}

