#Scenario: Validate if require server and database are present
When "I will search for ResourceGroup in Subscription 1"{

}
Then "I will find that ResourceGroup has dnb-server"{ 
    $SQLsvr.ServerName | should contain 'dnb-server'
    } 
    And "a Dnb-DB Database"{       
        $SQLsvr.DatabaseName | Should contain 'Dnb-DB'  
}

        }


#Scenario: Validate if required vNET is present and location is centralus
When "I will search for ResourceGroup in Subscription 1"{

}
Then "I will find that ResourceGroup has Dnb-Demo-vnet  vnet"{
    $Vnet.Name | Should -BeLike 'Dnb-Demo-vnet'
    } 
    And "vnet has location as westeurope"{
      $Vnet.location | Should -BeLike 'westeurope'
}

  #Scenario: Validate whether D-dos and Vm protection are enabled or not
        When "i search for Vnet in Resource ResourceGroup"{
          $Vnet = Get-AzVirtualNetwork -Name Dnb-Demo-vnet  -ResourceGroupName Dnb-Demo
        }
        Then "i will find that D-dos is disabled "{
          $Vnet.EnableDdosProtection | Should be 'false' 

        } 
        And "Virtual machine protection is disabled"{
          $Vnet.EnableVmProtection | Should be 'False'
        }
  
  #Scenario: validate adress prefix of 'defualt' subnet
  When "i search for subnet"{
    $SubNet = Get-AzVirtualNetworkSubnetConfig  -VirtualNetwork $Vnet

  }
  Then "i will find that subnet name is default"{
    $SubNet.Name | Should be 'default'

  }
  And "adress prefix is '10.0.0.0/24'"{
     $SubNet.AddressPrefix | Should be '10.0.0.0/24'
 
  }


 #Scenario: Validate whether service endpoints and subnet delegation service are configured as per DOc
  When "i search for subnet"{
    $SubNet = Get-AzVirtualNetworkSubnetConfig  -VirtualNetwork $Vnet

  }
  Then "i will find that service endpoint should be 'microsoft.azure active directory services'"{
     $SubNet.ServiceEndpoints.Service | Should be 'Microsoft.AzureActiveDirectory'

  }

        