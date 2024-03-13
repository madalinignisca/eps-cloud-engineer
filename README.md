# Technical task - cloud & system engineering

## eps.lt

### How to run it for \[local\] development

#### Requirements

- access to a kubernetes cluster, like minikube, microk8s or a remote provisioned one

#### Steps

- create a `.env.secret` file, use the example one provided `.env.secret.example`
- provision with `kubectl apply -k ./base/`
- to test rolling update, change nginx version, for example to 1.24.0

#### Notes

- alternative environments, like testing, staging, production, should have separate directories with the overrides for each environment, at minimal values to make the difference for min/max of some parameters.
- all secrets and configmaps should be passed by the CI/CD pipeline and not by being saved in this repository! alternative, secrets could be pulled from a specialized service with currect authentification.
- code and documentation quality left for the reviewer.

### Option 2

#### Your task is to create a repo in Gitlab or GitHub and solve the below problem:

1. [x] Create a new namespace in Kubernetes and deploy all solutions in that namespace.
1. [x] Create a Kubernetes deployment, svc, hpa, pdb service account in the Kubernetes cluster, it can be PaaS/Minikube.
1. [x] Deployment needs a secret with the name API_KEY.
1. [x] Mount this secret in deployment.
1. [x] Create a Kubernetes role binding so that this secret is readable only from this namespace. E.g., namespace ns1 users can access secret s1 namespace ns2 app/users can not access secret s1.

#### Acceptance criteria:

* [x] You must provide your code in full with Kubernetes manifest or pipelines or scripts.
* [x] You must use either the public cloud provider: AWS, GCP, Azure or Minikube to run the above manifest file. You do not need to provide access to the cluster in the public cloud, only the code.
* [ ] Your code must be clean, readable self explanable, self documented.
* [ ] You must document any steps that are not automated in the README.md
* [x] You must have a dedicated service account for deployment.
* [x] You must have a NodePort Type of service for the application.
* [x] You must have a minimum of 2 pods always up and running.
* [x] You must have only 1 pod unavailable during Rolling Update or Deployment.

#### Assumptions:

1. Can use any open-source tools/language to solve a problem.
1. Create extra code if needed like infra (Terraform, scripts), etc in the same repository.
1. Choose simple applications from the internet e.g. nginx, httpd

#### Bonus:

1. The deployment container is scanned before getting deployed. If there is a high severity vulnerability the pipeline should stop as a failure.
1. Container in Pod, should not be running as root.
1. Scan the application repository code to see static code analysis in the pipeline.
1. Provide any code that you require to accomplish this task.
1. You must document any steps that are not automated in the README.md
