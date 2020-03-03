#Background: Validate if the subscription Exist
Given "I Have Required ResourceGroup in Subscription 1"{
    Select-AzSubscription -Subscription 'Free Trial'
    $ResourceGroup = Get-AzResourceGroup -Name 'Dnb-Demo'
    } 
    And "I Have Required Resources within it"{
        $SQLsvr = Get-AzSqlDatabase -ResourceGroupName $ResourceGroup -ServerName "dnb-server"
        $AzVnet = Get-AzVirtualNetwork -Name "Dnb-Demo-vnet" -ResourceGroupName $ResourceGroup
        
} 