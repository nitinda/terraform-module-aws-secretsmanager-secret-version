# _Terraform Module: terraform-module-aws-secretsmanager-secret-version_
_Terraform Module for_ **_AWS Secretsmanager Secret Version_**

---

**_NOTE_**_: If the_ **_AWSCURRENT_** _staging label is present on this version during resource deletion, that label cannot be removed and will be skipped to prevent errors when fully deleting the secret. That label will leave this secret version active even after the resource is deleted from Terraform unless the secret itself is deleted. Move the_ **_AWSCURRENT_** _staging label before or after deleting this resource from Terraform to fully trigger version deprecation if necessary._


<!--BEGIN STABILITY BANNER-->
---

![_Code : Stable_](https://img.shields.io/badge/Code-Stable-brightgreen?style=for-the-badge&logo=github)

> **_This is a stable example. It should successfully build out of the box_**
>
> _This examples does is built on Construct Libraries marked "Stable" and does not have any infrastructure prerequisites to build._

---
<!--END STABILITY BANNER-->


## _General_

_This module may be used to create_ **_Secretsmanager Secret_** _resources in AWS cloud provider......_

---


## _Prerequisites_

_This module needs_ **_Terraform 0.12.24_** _or newer._
_You can download the latest Terraform version from_ [here](https://www.terraform.io/downloads.html).

_This module deploys aws services details are in respective feature branches._


---



## _Features_

_Below we are able to check the resources that are being created as part of this module call:_

* **_Secretsmanager Secret Version_**



---

## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_

```tf
module "secretsmanager_secret_version" {
  source = "git::https://github.com/nitinda/terraform-module-aws-secretsmanager-secret-version.git?ref=master"

  providers = {
    aws = aws.services
  }

  secret_id = module.secretsmanager_secret.id
  secret_string = "test"
}
```

```tf
module "secretsmanager_secret_version" {
  source = "git::https://github.com/nitinda/terraform-module-aws-secretsmanager-secret-version.git?ref=master"

  providers = {
    aws = aws.services
  }

  secret_id = module.secretsmanager_secret.id
  secret_string = jsonencode({
      key1 = "value1"
      key2 = "value2"
  })
}
```

---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_


|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** | **_Default Value_** |
|:----|:----|-----:|:---:|:---:|
| **_secret\_id_** | _Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist._ | _string_ | **_Required_** |  |
| **_secret\_string_** | _Specifies text data that you want to encrypt and store in this version of the secret. This is required if_ **_secret\_binary_** _is not set._ | _string_ | **_Optional_** | **_null_** |
| **_secret\_binary_** | _Specifies binary data that you want to encrypt and store in this version of the secret. This is required if_ **_secret\_string_** _is not set. Needs to be encoded to base64._ | _string_ | **_Optional_** | **_null_** |
| **_version\_stages_** | _Specifies a list of staging labels that are attached to this version of the secret_ | _string_ | **_Optional_** | **_null_** |


---

## _Outputs_

### _General_

_This module has the following outputs:_

* **_version\_id_**
* **_id_**
* **_arn_**

---


### _Usage_

_In order for the variables to be accessed on module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```

_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<module_name>.<output_variable_name>
```

---

## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**