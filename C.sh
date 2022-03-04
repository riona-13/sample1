export PROJECT_ID=$(gcloud config get-value project)

gsutil mb gs://$PROJECT_ID



#gcloud sql instances create $PROJECT_ID \
#--database-version=MYSQL_5_7 \
#--region=us-central1


#gcloud sql users set-password root \
#--host=% \
#--instance $PROJECT_ID \
#--password 123456

#gcloud sql connect  $PROJECT_ID --user=root



## Task 2: Upload CSV files to Cloud Storage

gsutil cp *_data.csv gs://$PROJECT_ID

## Task 3: Create a Cloud SQL instance
gcloud sql instances create $PROJECT_ID --tier=db-n1-standard-2 --region=us-central1 --root-password=123456

## Task 4: Create a database
gcloud sql databases create bike --instance=$PROJECT_ID

# gcloud sql connect  qwiklabs-demo --user=root
