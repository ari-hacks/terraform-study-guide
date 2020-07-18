## Objective 9: Understand Terraform Cloud and Enterprise capabilities	


<details><summary>Describe the benefits of Sentinel, registry, and workspaces</summary>
<p>

- **Sentinel**
  - An embedded [policy as a code](https://www.hashicorp.com/blog/why-policy-as-code/) framework used with Enterprise products. Policies written in the [Sentinel language](https://docs.hashicorp.com/sentinel/writing/)
  - Used for logic based policy decisions and can be extended to use information form external sources. 
  - ```tfe_sentinel_policy``` resource can be used to upload a policy using Terraform itself 
  - Sentinel can be used with Terraform Cloud as well by: 
    - Defining the policies - Policies are defined using the policy language with imports for parsing the Terraform plan, state and configuration.
    - Managing policies for organizations -  Users with permission to manage policies can add policies to their organization by configuring VCS integration or uploading policy sets through the API. They also define which workspaces the policy sets are checked against during runs. (More about permissions.)
    - Enforcing policy checks on runs - Policies are checked when a run is performed, after the terraform plan but before it can be confirmed or the terraform apply is executed.
    - Mocking Sentinel Terraform data -  Terraform Cloud provides the ability to generate mock data for any run within a workspace. This data can be used with the Sentinel CLI to test policies before deployment.
  

- **Module Registry**
  - Private module registry helps us share Terraform modules with other organizations. 
  - Support includes module versioning, search and filtering list of modules, and a configuration designer to build workspaces 
  - Similar to the [Public Registry](https://www.terraform.io/docs/registry/index.html)
  - [Module Registry Announcement](https://www.hashicorp.com/blog/hashicorp-terraform-module-registry/)


- **Workspaces**
  - Using Workspaces is how Terraform Cloud organized infrastructure
  - Workspaces are Collections of Infrastructure - usually organizations have to manage many collections. 
  - Each collection contains a configuration, state data, and variables. 
  - Terraform Cloud manages infrastructure collections with workspaces instead of directories. A workspace contains everything Terraform needs to manage a given collection of infrastructure, and separate workspaces function like completely separate working directories.
  - [Terraform Enterprise: Understanding Workspaces And Modules](https://www.hashicorp.com/resources/terraform-enterprise-understanding-workspaces-and-modules/) 
</p>

</details>

<details><summary>Differentiate OSS (Open Source Software) and Terraform Cloud workspaces</summary>
<p>

- **CLI Workspaces** 
  - relates to persistent data stored in the backend, a feature for using one configuration to manage many similar grouped resources. 
  - uses with a Terraform's command line interface: ```terraform workspace new bar```

- **Enterprise/Cloud Workspaces**	
  - Uses Workspaces to manage break up parts of a system 
</p>

</details>

<details><summary>Summarize features of Terraform Cloud</summary>
<p>

- **Terraform Cloud**
  - [Terraform Cloud Pricing/Features](https://www.hashicorp.com/products/terraform/pricing/)
  - [Terraform Cloud Docs](https://www.terraform.io/docs/cloud/index.html)
  - Main Features
    - Workflow 
      - CLI, Remote Execution(Operations), Support for Local Execution, Organize infra with workspaces, Remote state management, data sharing, and run triggers, version control integration, private module registry    
    - Integrations 
      - Full API, Notifications
    - Access Control and Governance 
      - team based permission systems, sentinel policies, cost estimation 
</p>

</details>

-------------------------------

[⏮️](/Objective%208/hcl-features.md) Objective 8

[🔙](/README.md) README