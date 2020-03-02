#Background: Validate if the subscription Exist
Given "I Have Required ResourceGroup in Subscription 1"{
    Select-AzureRmSubscription -Subscription 'Free Trial'
    $ResourceGroup = Get-AzureRmResourceGroup -Name 'Dnb-Demo'
    } 
    And "I Have Required Resources within it"{
        $SQLsvr = Get-AzureRmSqlDatabase -ResourceGroupName "Dnb-Demo" -ServerName "dnb-server"
        $AzVnet = Get-AzVirtualNetwork -Name "Dnb-Demo-vnet" -ResourceGroupName "Dnb-Demo"
        
} 