
## Objective 5: Interact with Terraform modules

<details><summary>Contrast module source options</summary>
<p>

- Module Overview 
  - Definition - a set of configuration files in a single directory. 
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
 modules/child modules	Input Variables,Calling a Child Module
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