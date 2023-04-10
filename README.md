# Dare It - Cloud Challenge

## Task 7 | 30.03.2023

❗ Tested but currently non-active (commented out the Terraform code that holds the definition of the resources)

###  :bulb: Goal:

**Create your first CI/CD pipeline and understand the principles of the CI/CD practice.**

*A continuous integration and continuous deployment (CI/CD) pipeline is a series of steps that must be performed in order to deliver a new version of software. CI/CD pipelines are a practice focused on improving software delivery throughout the software development life cycle via automation.*

### ☁️ Steps:

- Create a Service Account for Terraform and generate new private key.

- Remove in Vim all new line characters from the file with key.

- Create a bucket in Google Cloud to store the terraform state file.

- Create a new repository in Github and add new repository secret cointaing private key.

- Create terraform files:
    - *backend.tf*
    - *provider.tf*
    - *main.tf*

- Create file with the definition of the pipeline - *terraform.yml*

- Modify the workflow so that the job will only be triggered whenever a new pull request is opened.

- Create a branch called feat/add-bucket and modify the code of the main.tf to add a new bucket.

### 📁 File Structure

```
├── README.md
├── backend.tf
├── main.tf
├── provider.tf
└── .github
    └── workflows
        └── terraform.yml
```

❗ Tested but currently non-active (commented out the Terraform code that holds the definition of the resources and apply the Terraform)

