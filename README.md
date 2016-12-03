# terraform-framework

Use [Terraform](https://www.terraform.io/) to automagically create instances on different providers.

# Organization
## Root Files
**modules.tf**

This contains the modules that will be used.

**variables.tf**

Where the variables are defined.

**providers.tf**

The providers that will be used.

## Private files
**terraform.tfvars**

Where you actually define the variables. This file is ignored by .gitignore.

# Setup
1. Read the documentation provided by Terraform from the link above.
2. If you clone the instance you'll need to do the following in order to get the modules sync'd.
```bash
terraform get
```

# Gotchas

## Module Variables
Within a module you declare a variables.tf file.
The root variables that are defined in terraform.tfvars must be passed into the module.
Look at an example below.

**modules.tf**
```javascript
module "example" {
  source = "./example"
  subnet_id = "${var.example_subnet_id}"
}
```

**/variables.tf**
```javascript
variable "example_subnet_id" {}
```

**/terraform.tfvars**
```javascript
example_subnet_id = "subnet-1234"
```

**/example/variables.tf**
```javascript
variable "subnet_id" {}
```

**/example/main.tf**
```javascript
resource "aws_instance" "sample" {
  subnet_id = "${var.subnet_id}"
}
```
