#!/bin/sh

RESOURCE_GROUP_NAME="Azure-Terraform"
RESOURCE_GROUP_LOCATION="westeurope"
STORAGE_ACCOUNT_NAME="azureterraformfortests"

# Create Resource Group
az group create -l $RESOURCE_GROUP_LOCATION -n $RESOURCE_GROUP_NAME

# Create Storage Account
az storage account create -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME -l $RESOURCE_GROUP_LOCATION --sku Standard_LRS

# Create Storage Account blob
az storage container create  --name tfstate --account-name $STORAGE_ACCOUNT_NAME