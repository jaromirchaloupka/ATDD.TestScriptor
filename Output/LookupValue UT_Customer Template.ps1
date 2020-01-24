Install-Module -Name ATDD.TestScriptor
$Features = @()
$Features += 
Feature 'LookupValue UT Customer Template' {
     Scenario 12 'Assign lookup value to customer template' {
         Given 'A lookup value'
         Given 'A customer template'
         When 'Set lookup value on customer template'
         Then 'Customer template has lookup value code field populated'
     }
     Scenario 13 'Assign non-existing lookup value to customer template' {
         Given 'A non-existing lookup value'
         Given 'A customer template record variable'
         When 'Set non-existing lookup value to customer template'
         Then 'Non existing lookup value error was thrown'
     }
     Scenario 14 'Assign lookup value on customer template card' {
         Given 'A lookup value'
         Given 'A customer template card'
         When 'Set lookup value on customer template card'
         Then 'Customer template has lookup value code field populated'
     }
 }

$Features | `
ConvertTo-ALTestCodeunit `
    -CodeunitID 50102 `
    -CodeunitName 'LookupValue UT Customer Template' `
    -InitializeFunction `
    -GivenFunctionName "Create {0}" `
    -ThenFunctionName "Verify {0}" `
      | Out-File 'C:\Users\j.chaloupka\OneDrive - PRODWARE\Prodware\AL\Demo\TestScriptor\Output\.al\LookupValueUTCustomerTemplate.al'
