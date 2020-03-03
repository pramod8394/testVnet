Connect-AzAccount -Tenant "927ede5c-2f25-4481-bbb1-b2d98307c0aa" -SubscriptionId "b59393fe-37a8-4e8c-880e-d7c55234f362"
Invoke-Gherkin -Script "*pramod8394/testVnet/demo*" -OutputFile "./Test-Pester.XML" -OutputFormat 'NUnitXML'
