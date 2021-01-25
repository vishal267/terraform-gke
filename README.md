# terraform-gke

export TF_VAR_project_id=vishal-293614


terraform init 
terraform plan 
terraform apply --auto-approve 


gcloud container clusters \
    get-credentials \
    $(terraform output cluster_name) \
    --project \
    $(terraform output project_id) \
    --region \
    $(terraform output region)

kubectl create clusterrolebinding \
    cluster-admin-binding \
    --clusterrole \
    cluster-admin \
    --user \
    $(gcloud config get-value account)
kubectl get nodes
