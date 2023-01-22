
Need contributor access on storage account 
tried with just storage account blob contributor but didn't work 
```
Failed to get existing workspaces: Error retrieving keys for Storage Account "terrates901": storage.AccountsClient#ListKeys: Failure responding to request: StatusCode=403 -- Original Error: autorest/azure: Service returned an error. Status=403 Code="AuthorizationFailed" Message="The client '213527c7-b023-214c7e30f7f1' with object id '213527c7-b02-214c7e30f7f1' does not have authorization to perform action 'Microsoft.Storage/storageAccounts/listKeys/action' over scope '/subscriptions/***/resourceGroups/rok-terraform-rg-do-not-delete/providers/Microsoft.Storage/storageAccounts/terrates901' or the scope is invalid. If access was recently granted, please refresh your credentials."
```