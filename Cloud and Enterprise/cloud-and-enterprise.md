## Objective 9: Understand Terraform Cloud and Enterprise capabilities	


<details><summary>Describe the benefits of Sentinel, registry, and workspaces</summary>
<p>

- Sentinel
  - An embedded [policy as a code](https://www.hashicorp.com/blog/why-policy-as-code/) framework used with Enterprise products. Policies written in the [Sentinel language](https://docs.hashicorp.com/sentinel/writing/)
  - Used for logic based policy decisions and can be extended to use information form external sources. 
  - ```tfe_sentinel_policy``` resource can be used to upload a policy using Terraform itself 
  - Sentinel can be used with Terraform Cloud as well by: 
    - Defining the policies - Policies are defined using the policy language with imports for parsing the Terraform plan, state and configuration.
    - Managing policies for organizations -  Users with permission to manage policies can add policies to their organization by configuring VCS integration or uploading policy sets through the API. They also define which workspaces the policy sets are checked against during runs. (More about permissions.)
    - Enforcing policy checks on runs - Policies are checked when a run is performed, after the terraform plan but before it can be confirmed or the terraform apply is executed.
    - Mocking Sentinel Terraform data -  Terraform Cloud provides the ability to generate mock data for any run within a workspace. This data can be used with the Sentinel CLI to test policies before deployment.
  

- Module Registry
  - Private module registry helps you share Terraform modules with other organizations. 
  - Support includes module versioning, search and filtering list of modules, and a configuration designer to build workspaces 
  - Similar to the [public Registry](https://www.terraform.io/docs/registry/index.html)
  - [Module Registry Announcement](https://www.hashicorp.com/blog/hashicorp-terraform-module-registry/)

- Workspaces	
  - 
</p>

</details>

<details><summary>Differentiate OSS and Terraform Cloud workspaces</summary>
<p>
CLI Workspaces

Enterprise/Cloud Workspaces	
</p>

</details>

<details><summary>Summarize features of Terraform Cloud</summary>
<p>
Terraform Cloud
</p>

</details>
