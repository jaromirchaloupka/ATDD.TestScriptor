Install-Module -Name ATDD.TestScriptor
$Features = @()
$Features += 
Feature 'LookupValue UT Customer' {
     Scenario 1 'Assign lookup value to customer' {
         Given 'A lookup value'
         Given 'A customer'
         When 'Set lookup value on customer'
         Then 'Customer has lookup value code field populated'
     }
     Scenario 2 'Assign non-existing lookup value to customer' {
         Given 'A non-existing lookup value'
         Given 'A customer record variable'
         When 'Set non-existing lookup value on customer'
         Then 'Non existing lookup value error thrown'
     }
     Scenario 3 'Assign lookup value on customer card' {
         Given 'A lookup value'
         Given 'A customer card'
         When 'Set lookup value on customer card'
         Then 'Customer has lookup value code field populated'
     }
 }

$Features | `
ConvertTo-ALTestCodeunit `
    -CodeunitID 50100 `
    -CodeunitName 'LookupValue UT Customer' `
    -InitializeFunction `
    -GivenFunctionName "Create {0}" `
    -ThenFunctionName "Verify {0}" `
      | Out-File 'C:\Users\j.chaloupka\OneDrive - PRODWARE\Prodware\AL\Demo\TestScriptor\Output\.al\LookupValueUTCustomer.al'
