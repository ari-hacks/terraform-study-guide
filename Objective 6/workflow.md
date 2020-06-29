
## Objective 6: Navigate Terraform workflow

<details><summary>Describe Terraform workflow ( Write -> Plan -> Create )</summary>
<p>

- **Write** 
  - Author infrastructure as code 
- **Plan** 
  - Preview changes before applying
- **Create (Apply)**
  - Provision reproducible infrastructure 
- Configuration is written like any program, use version control to keep track of changes 
    ```BASH 
    # Create repository
    $ git init my-infra && cd my-infra
    Initialized empty Git repository in /.../my-infra/.git/
    # Write initial config
    $ vim main.tf
    # Initialize Terraform
    $ terraform init
    Initializing provider plugins...
    # ...
    Terraform has been successfully initialized!
    ```
- running ```Terraform plan``` repeatedly is useful to make sure there are no syntax errors and the correct code is being written per the desired outcome.
-  First run ```Terraform apply``` before pushing to git to make sure the provisions are correct 
-  While working in teams it is best to use branches to avoid code collision. 
   ```BASH
   $ git checkout -b <branch-name>
    Switched to a new branch <branch-name>
   ``` 
- **Teams** can review changes via Terraform plans and pull requests 
- Terraform cloud helps streamline this process in a team setting
  - Write - secure location for storing variables and state with the "remote" backend, then a Terraform Cloud API key is used to edit the configuration and run plans against the state file.
  ```BASH
    terraform {
    backend "remote" {
        organization = "my-org"
        workspaces {
        prefix = "my-app-"
     }
    }
   }
   #--------------------------------------
   $ terraform workspace select my-app-dev
   Switched to workspace "my-app-dev".
   $ terraform plan
   Running plan remotely in Terraform Enterprise.
   Output will stream here. To view this plan in a browser, visit:
   https://app.terraform.io/my-org/my-app-dev/.../
   Refreshing Terraform state in-memory prior to plan...
   # ...
   Plan: 1 to add, 0 to change, 0 to destroy.
  ```
  - Plan - plans are automatically run when a pull request is created. Status updates are shown in the pull request view. 
  - Apply - A confirm and apply is needed after merging to run an ```apply```. 
</p>

</details>

<details><summary>Initialize a Terraform working directory (terraform init)</summary>
<p>
Command: init
</p>

</details>


<details><summary>Validate a Terraform configuration (terraform validate)</summary>
<p>
Command: validate
</p>

</details>

<details><summary>Generate and review an execution plan for Terraform (terraform plan)</summary>
<p>
Command: plan
</p>

</details>

<details><summary>Execute changes to infrastructure with Terraform (terraform apply)</summary>
<p>
Command: apply
</p>

</details>

<details><summary>Destroy Terraform managed infrastructure (terraform destroy)</summary>
<p>
Command: destroy
</p>

</details>


-------------------------------

[⏮️](/Objective%205/modules.md) Objective 5 
 &nbsp;
 ||
 &nbsp;
Objective 7 [⏩](/Objective%207/manage-state.md)

[🔙](/README.md) README