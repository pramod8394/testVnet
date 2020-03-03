Install-Module -Name "Pester" -Force -SkipPublisherCheck
Import-Module Pester
Invoke-Gherkin -Script "*pramod8394/testVnet/demo*" -OutputFile "./Test-Pester.XML" -OutputFormat 'NUnitXML'
