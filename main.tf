terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.1.3"
    }
  }
}

provider "random" {}


resource "random_pet" "pet" {
  length = 1
}


output "pet_name" {
  value = resource.random_pet.pet.id
}

/Test
