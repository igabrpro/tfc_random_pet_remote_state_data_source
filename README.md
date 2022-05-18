# tfc_random_pet_remote_state_data_source


This repo contains code taht creates a resource random pet then uses output command so we can use remote state as data and use the name in diferent workspace using TFC. This is the source repo

[destinatin repo](https://github.com/igabrpro/tfc_random_pet_remote_state_data_destination.git)

## Requirements
You will need to have TFC account and VCS

## Repo content 
```main.tf``` - Terraform configuration file


## Guide
1. First download the repo https://github.com/igabrpro/Terraform_for_each_strings.git
2. Upload the repo in your VCS
3. Link your VCS with TFC
4. Create a workspace using this repo


## How the code works
1.first you have the follwoing variable 
```
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

```
In this example, the output value ```pet``` is available as the ```pet_name``` root module output value. If this configuration didn't include the output ```pet_name``` block then the data would not be accessible via terraform_remote_state

2.Contiune to the follwoing [repo](https://github.com/igabrpro/tfc_random_pet_remote_state_data_destination.git) to use the name and print it in diferent workspace (thisway we are using the remote state of this repo so we can use its value)
