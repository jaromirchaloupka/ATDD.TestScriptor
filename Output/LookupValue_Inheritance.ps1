Install-Module -Name ATDD.TestScriptor
$Features = @()
$Features += 
Feature 'LookupValue Inheritance' {
     Scenario 24 'Assign customer lookup value to sales document' {
         Given 'A customer with a lookup value'
         Given 'A sales document (invoice) without a lookup value'
         When 'Set customer on sales header'
         Then 'Lookup value on sales document is populated with lookup value of customer'
     }
     Scenario 28 'Create customer from configuration template with lookup value' {
         Given 'A configuration template (customer) with lookup value'
         When 'Create customer from configuration template'
         Then 'Lookup value on customer is populated with lookup value of configuration template'
     }
 }

$Features | `
ConvertTo-ALTestCodeunit `
    -CodeunitID 50105 `
    -CodeunitName 'LookupValue Inheritance' `
    -InitializeFunction `
    -GivenFunctionName "Create {0}" `
    -ThenFunctionName "Verify {0}" `
      | Out-File 'C:\Users\j.chaloupka\OneDrive - PRODWARE\Prodware\AL\Demo\TestScriptor\Output\.al\LookupValueInheritance.al'
