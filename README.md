# terraform-gke

Create iam service-accounts  and attached to gcp project and attached the add-iam-policy-binding on the service account

export TF_VAR_project_id=vishal-293614


terraform init 
terraform plan 
terraform apply --auto-approve 


Fetch kubeconfig
gcloud container clusters get-credentials $(terraform output cluster_name) --project $(terraform output project_id) --region $(terraform output region)




Create Cluster Role

kubectl create clusterrolebinding \
    cluster-admin-binding \
    --clusterrole \
    cluster-admin \
    --user \
    $(gcloud config get-value account)
kubectl get nodes
