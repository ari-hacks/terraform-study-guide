
## Objective 5: Interact with Terraform modules

<details><summary>Contrast module source options</summary>
<p>

- Module Overview 
  - Definition - a set of configuration files in a single directory. A container for multiple resources that are used together.  
  - A module that is called by another configuration is sometimes referred to as a "child module" of that configuration.
  - Applications
    - Organize configuration - easier to navigate, understand, and update your configuration by keeping all related parts together. 
    - Encapsulate configuration - put configuration into distinct logical components. Reduces chance of error. Ex/naming two diff resources the same thing. 
    - Re-use configuration - share and re-use modules with the public and teams 
    - Provide consistency and ensure best practices
  
- module source options 
  - we reference a public registry module by declaring the source. 
```BASH
  module "consul" {
  #<NAMESPACE>/<NAME>/<PROVIDER>
  source = "hashicorp/consul/aws"
  version = "0.1.0"
}
```
 - Private Registry Module Sources follow this syntax 
```BASH
module "vpc" {
  #<HOSTNAME>/<NAMESPACE>/<NAME>/<PROVIDER>
  source = "app.terraform.io/example_corp/vpc/aws"
  version = "0.9.3"
}
```
</p>

</details>

<details><summary>Interact with module inputs and outputs</summary>
<p>

[Modules](https://learn.hashicorp.com/terraform/modules/using-modules)
</p>

</details>

<details><summary>Describe variable scope within modules/child modules</summary>
<p>

- variables are parameters for modules 
- variables allow you to customize modules without changing the source code and they allow for modules to be shared between different configurations. 
- root module variables can be set with CLI and environment variables
- When declaring variables in child modules, the calling module should pass values in the module block. 
- Declaring a variable: 
- variable names have to be unique per module 
- any name can be used except for :source, version, providers, count,for_each,lifecycle,depends_on,locals
  ```BASH 
  variable "image_id" {
  type = string  #defines what value types are accepted for the variable
  }

  variable "availability_zone_names" {
  type    = list(string)
  default = ["us-west-1a"]  #default means the variable is considered optional, used if no other value is set  when calling the module or running Terraform
  }

  variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))

  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]
  } 
  ```
 </p>

</details>

<details><summary>Discover modules from the public Terraform Module Registry	</summary>
<p>

- Finding and Using Modules 
  - [Terraform Registry](https://registry.terraform.io/)
 </p>

</details>

<details><summary>Defining module version</summary>
<p>

- Use the version attribute in the module block to specify versions:
```BASH
module "consul" {
  source  = "hashicorp/consul/aws"
  version = "0.0.5"  #single explicit version 
  #or
  version = >= 1.2.0  #version constraint expression 
  servers = 3
}
```

</p>

</details>


-------------------------------

[⏮️](/Objective%204/terraform-cli.md) Objective 4
 &nbsp;
 ||
 &nbsp;
Objective 6 [⏩](/Objective%206/workflow.md)

[🔙](/README.md) README