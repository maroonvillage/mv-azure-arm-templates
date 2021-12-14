#!/bin/bash
az login

az group create --name mv-databases-rg --location eastus

az deployment group create --resource-group mv-databases-rg --template-file template.json --parameters parameters.json