#!/bin/bash
az login

az group create --name mv-security-rg --location eastus

az deployment group create --resource-group mv-security-rg --template-file template.json --parameters parameters.json