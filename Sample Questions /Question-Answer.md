## Sample Questions 
### Question 1
<details><summary>Usernames and passwords referenced in the Terraform code, even as variables, will end up in plain text in the state file.</summary>
<p>

#### Answer: True
</p>
</details>

### Question 2
<details><summary>
Consider the following Terraform 0.12 configuration snippet:

```BASH
variable "vpc_cidrs" {
  type = map
  default = {
    us-east-1 = "10.0.0.0/16"
    us-east-2 = "10.1.0.0/16"
    us-west-1 = "10.2.0.0/16"
    us-west-2 = "10.3.0.0/16"
  }
}

resource "aws_vpc" "shared" {
  cidr_block = _____________
}

```
How would we define the `cidr_block` for us-east-1 in the `aws_vpc` resource using a variable?

</summary>

#### Answer: <code>var.vpc_cidrs[“us-east-1”]</code>

</details>

### Question 3

<details>
<summary>
We have defined the values for our variables in the
file <code>terraform.tfvars</code>, and saved it in the same directory as our Terraform configuration. Which of the following commands will use those values when creating an execution plan?
</summary>

- [ ] Incorrect: <code>terraform plan</code>
- [ ] Incorrect: <code>terraform plan -var-file=terraform.tfvars</code>
- [x] Correct: All of the above
- [ ] Incorrect: None of the above
</details>

### Question 4

<details><summary>
Which of the following Terraform commands will automatically refresh the state unless supplied with additional flags or arguments? Choose <b>TWO<b> correct answers.

</summary>

- [x] Correct: `terraform plan`
- [ ] Incorrect: `terraform state`
- [x] Correct: `terraform apply`
- [ ] Incorrect: `terraform validate`
- [ ] Incorrect: `terraform output`
</details>

### Question 5

<details><summary>
What happens when we apply Terraform configuration? Choose <b>TWO</b> correct answers.
</summary>

- [x] Correct: Terraform makes any infrastructure changes defined in our configuration.
- [ ] Incorrect: Terraform gets the plugins that the configuration requires.
- [x] Correct: Terraform updates the state file with any configuration changes it made.
- [ ] Incorrect: Terraform corrects formatting errors in our configuration.
- [ ] Incorrect: Terraform destroys and recreates all our infrastructure from scratch.
</details>

### Question 6

<details><summary>
Which flag is used to find more information about a Terraform command? For example, you need additional information about how to use the <code> plan</code> command. You would type: <code> terraform plan</code> _____. Type your answer in the field provided. The text field is not case-sensitive and all variations of the correct answer are accepted.
</summary>

- [x]  -h
- [x]  -help
- [x]  --help
</details>

-------------------------------

Return to [README.md](/README.md)
