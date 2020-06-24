
## Objective 4: Use the Terraform CLI (outside of core workflow)

<details><summary>Given a scenario: choose when to use terraform fmt to format code</summary>
<p>

```BASH
terraform fmt
```
 - This command is used for rewriting Terraform configuration files to a canonical format and style.
 - It applies the Terraform language style conventions along with other changes for readability.
 - This insures consistency 
 - There might be changes with Terraform versions so it is recommended to run this command on modules after an upgrade.  
</p>

</details>

<details><summary>Given a scenario: choose when to use terraform taint to taint Terraform resources</summary>
<p>

```BASH
terraform taint
```
- Marks a resource as tainted, forcing it to be destroyed and recreated on the next apply.
- It does not modify infrastructure but does modify the state file 
- After a resource is marked the next plan shows it will be destroyed and recreated on the next apply 
- Useful when you want a die effect of a recreation that is not visible in the attributes of the resource. For ex/rebooting the machine from a base image causing a new startup script to run.
- This command can affect resources that depend on the tainted resource. Ex/ DNS resource that uses IP of a server, that resource might need to be updated with the new IP of a tainted server. 

</p>

</details>


<details><summary>Given a scenario: choose when to use terraform import to import existing infrastructure into your Terraform state	</summary>
<p>
Command: import
</p>

</details>


<details><summary>Given a scenario: choose when to use terraform workspace to create workspaces</summary>
<p>
Workspaces
</p>

</details>


<details><summary>Given a scenario: choose when to use terraform state to view Terraform state</summary>
<p>
State Command
</p>

</details>


<details><summary>Given a scenario: choose when to enable verbose logging and what the outcome/value is	</summary>
<p>
Debugging Terraform
</p>

</details>