# Technical task - cloud & system engineering
## eps.lt

### Option 2
#### Your task is to create a repo in Gitlab or GitHub and solve the below problem:
1. [ ] Create a new namespace in Kubernetes and deploy all solutions in that namespace.
1. [ ] Create a Kubernetes deployment, svc, hpa, pdb service account in the Kubernetes cluster, it can be PaaS/Minikube.
1. [ ] Deployment needs a secret with the name API_KEY.
1. [ ] Mount this secret in deployment.
1. [ ] Create a Kubernetes role binding so that this secret is readable only from this namespace.
1. [ ] E.g., namespace ns1 users can access secret s1 namespace ns2 app/users can not access secret s1.
#### Acceptance criteria:
* [ ] You must provide your code in full with Kubernetes manifest or pipelines or scripts.
* [ ] You must use either the public cloud provider: AWS, GCP, Azure or Minikube to run the above manifest file. You do not need to provide access to the cluster in the public cloud, only the code.
* [ ] Your code must be clean, readable self explanable, self documented.
* [ ] You must document any steps that are not automated in the README.md You must have a dedicated service account for deployment.
* [ ] You must have a NodePort Type of service for the application.
* [ ] You must have a minimum of 2 pods always up and running.
* [ ] You must have only 1 pod unavailable during Rolling Update or Deployment.
#### Assumptions:
1. Can use any open-source tools/language to solve a problem.
2. Create extra code if needed like infra (Terraform, scripts), etc in the same repository. 3. Choose simple applications from the internet e.g. nginx, httpd
Bonus:
1. The deployment container is scanned before getting deployed. If there is a high severity vulnerability the pipeline should stop as a failure.
2. Container in Pod, should not be running as root.
3. Scan the application repository code to see static code analysis in the pipeline.
4. Provide any code that you require to accomplish this task.
5. YoumustdocumentanystepsthatarenotautomatedintheREADME.md
