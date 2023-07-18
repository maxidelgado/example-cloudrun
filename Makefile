#!make
include .env
.EXPORT_ALL_VARIABLES:

gcr-build:
	gcloud builds submit --tag gcr.io/$(PROJECT_ID)/$(APP_IMAGE)

gcr-deploy: gcr-build
	gcloud run deploy --image gcr.io/$(PROJECT_ID)/$(APP_IMAGE) --platform managed