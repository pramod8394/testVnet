Install-Module -Name "Pester" -Force -SkipPublisherCheck
Import-Module Pester
Invoke-Gherkin -Path ./demo.feature -OutputFile "./Test-Pester.XML" -OutputFormat 'NUnitXML'
