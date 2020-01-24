Install-Module -Name ATDD.TestScriptor
$Features = @()
$Features += 
Feature 'LookupValue Contact' {
     Scenario 26 'Check that lookup value is inherited from customer template to customer when creating customer from contact' {
         Given 'A customer template with lookup value'
         Given 'A contact'
         When 'Customer is created from contact'
         Then 'Customer has lookup value code field populated with lookup value from customer template'
     }
 }

$Features | `
ConvertTo-ALTestCodeunit `
    -CodeunitID 50107 `
    -CodeunitName 'LookupValue Contact' `
    -InitializeFunction `
    -GivenFunctionName "Create {0}" `
    -ThenFunctionName "Verify {0}" `
      | Out-File 'C:\Users\j.chaloupka\OneDrive - PRODWARE\Prodware\AL\Demo\TestScriptor\Output\.al\LookupValueContact.al'
