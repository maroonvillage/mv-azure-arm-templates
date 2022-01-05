#!/bin/bash

#TODO: Add logic to check if login is necessary 
az login

az group create --name mv-security-rg --location eastus

az deployment group create --resource-group mv-security-rg --template-file template.json --parameters parameters.json



az group create --name colepsecurity-rg --location westus
az keyvault create \
  --name colep-keyvault-wus \
  --resource-group colepsecurity-rg \
  --location westus \
  --enabled-for-template-deployment true
az keyvault secret set --vault-name colep-keyvault-wus --name "cosmosdbprimarykey" --value "jypdxBXO1xl1u4yaqrFGV0HIcQd1TzS9EeO01ouiLn8UVRBW3zqCea1PVB3caPGf3MI4X76kdsTZQJHuKhMGsw=="