
## Objective 8: Read, generate, and modify configuration	


<details><summary>Demonstrate use of variables and outputs</summary>
<p>

[Input Variables Tutorial](https://learn.hashicorp.com/terraform/getting-started/variables)

[Output Variables Tutorial](https://learn.hashicorp.com/terraform/getting-started/outputs)
</p>

</details>

<details><summary>Describe secure secret injection best practice</summary>
<p>

**Vault Provider for Terraform**
- Best Practices 
  - avoid putting secret or sensitive variables in config or state files. 
  - [Webinar walk-through on Best Practices](https://www.youtube.com/watch?v=fOybhcbuxJ0)
  - set secret variables for provider config block in environment variables. 

```BASH
#auth_login Usage with userpass backend
variable login_username {}
variable login_password {}

provider "vault" {
  auth_login {
    path = "auth/userpass/login/${var.login_username}"

    parameters = {
      password = var.login_password
    }
  }
}
#auth_login Usage with approle 
variable login_approle_role_id {}
variable login_approle_secret_id {}

provider "vault" {
  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id   = var.login_approle_role_id
      secret_id = var.login_approle_secret_id
    }
  }
}
#For multiple namespace in vault use alias
provider "vault" {
  alias = "ns1"
  namespace = "ns1"
}

provider "vault" {
  alias = "ns2"
  namespace = "ns2"
}

resource "vault_generic_secret" "secret"{
  provider = "vault.ns1"
  ...
}
```
</p>

</details>

<details><summary>Understand the use of collection and structural types</summary>
<p>

Complex Types
- 
</p>

</details>

<details><summary>Create and differentiate resource and data configuration</summary>
<p>
Resources, Data Sources
</p>

</details>

<details><summary>Use resource addressing and resource parameters to connect resources together</summary>
<p>
Resource Addressing

References to Named Values
</p>

</details>

<details><summary>Use Terraform built-in functions to write configuration</summary>
<p>
Built-in Functions
</p>

</details>

<details><summary>Configure resource using a dynamic block</summary>
<p>
Dynamic Blocks
</p>

</details>

<details><summary>Describe built-in dependency management (order of execution based)</summary>
<p>
Resource Dependencies
</p>

</details>

-------------------------------

[⏮️](/Objective%207/manage-state.md) Objective 7 
 &nbsp;
 ||
 &nbsp;
Objective 9 [⏩](/Objective%209/cloud-and-enterprise.md)

[🔙](/README.md) README