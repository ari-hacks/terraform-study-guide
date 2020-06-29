
## Objective 7: Implement and maintain state	

<details><summary>Describe default local backend</summary>
<p>

- **Backends** - by default Terraform uses 'local' backend
  - This is an abstraction that determines how state is loaded and how an operation is execution. It allows such actions as non-local file state storage and remote execution 
  - Benefits:
    - Working in a team - can store state remotely and use locks to prevent corruption in state 
    - Keeping sensitive information off disk - state in backends are only stored in memory 
    - Remote operations - ```terraform apply``` can take time for larger infrastructures, some backends can use remote operations instead to execute commands remotely 
- Local example config:
  ```BASH
    terraform {
        backend "local" {
        path = "relative/path/to/terraform.tfstate"
    }
    }
  ```
</p>

</details>

<details><summary>Outline state locking	</summary>
<p>

State Locking
- if supported by your backend state can be locked so others cannot change it while another change is being made. 
- this is automatic for all operations that can write state 
- Backends types supporting locking:(standard)artifactory,azurerm,consul,cos,etcd,etcdv3,gcs,http,manta,oss,pg,s3,swift,terraform enterprise, and in enhanced backends there are remote operations as well (plan, apply, etc.)
- A lock can be forced open with ```force-unlock``` which requires a unique nonce lock ID 
</p>

</details>

<details><summary>Handle backend authentication methods	</summary>
<p>

- Different backends have different configuration for authentication, authentication can be done different ways within a backend.
- Example with azurerm:
  ```BASH  
    #authenticating using the Azure CLI or a Service Principal:
    terraform {
    backend "azurerm" {
        resource_group_name  = "StorageAccount-ResourceGroup"
        storage_account_name = "abcd1234"
        container_name       = "tfstate"
         key                 = "prod.terraform.tfstate"
        }
    } 

    #----------------------------------
    #authenticating using Managed Service Identity (MSI):
     terraform {
        backend "azurerm" {
            storage_account_name = "abcd1234"
            container_name       = "tfstate"
            key                  = "prod.terraform.tfstate"
            use_msi              = true
            subscription_id  = "00000000-0000-0000-0000-000000000000"
            tenant_id        = "00000000-0000-0000-0000-000000000000"
            }
    }
  ``` 	
</p>

</details>

<details><summary>Describe remote state storage mechanisms and supported standard backends</summary>
<p>

Remote State Storage 
- Uses Terraform Cloud as a backend, allows free remote state management 
- [Tutorial for Remote State Storage](https://learn.hashicorp.com/terraform/getting-started/remote)

Standard backends 
- artifactory,azurerm,consul,cos,etcd,etcdv3,gcs,http,manta,oss,pg,s3,swift,terraform enterprise
</p>

</details>

<details><summary>Describe effect of Terraform refresh on state	</summary>
<p>

- ```terraform refresh```
- reconciles the state Terraform knows about via the state file. 
- refresh does not modify the infrastructure, it modifies the state file. 
</p>

</details>

<details><summary>Describe backend block in configuration and best practices for partial configurations	</summary>
<p>
Backend Configuration
</p>

</details>

<details><summary>Understand secret management in state files</summary>
<p>
Sensitive Data in State
</p>

</details>

-------------------------------

[⏮️](/Objective%206/workflow.md) Objective 6 
 &nbsp;
 ||
 &nbsp;
Objective 8 [⏩](/Objective%208/hcl-features.md)

[🔙](/README.md) README
