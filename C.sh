export PROJECT_ID=$(gcloud config get-value project)

gsutil mb gs://$PROJECT_ID



gcloud sql instances create $PROJECT_ID \
--database-version=MYSQL_5_7 \
--region=us-central1


gcloud sql users set-password root \
--host=% \
--instance $PROJECT_ID \
--password 123456

gcloud sql connect  $PROJECT_ID --user=root
