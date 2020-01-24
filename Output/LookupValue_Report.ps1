Install-Module -Name ATDD.TestScriptor
$Features = @()
$Features += 
Feature 'LookupValue Report' {
     Scenario 29 'Test that lookup value shows on CustomerList report' {
         Given '2 customers with different lookup value'
         When 'Run report CustomerList'
         Then 'Report dataset contains both customers with lookup value'
     }
 }

$Features | `
ConvertTo-ALTestCodeunit `
    -CodeunitID 50108 `
    -CodeunitName 'LookupValue Report' `
    -InitializeFunction `
    -GivenFunctionName "Create {0}" `
    -ThenFunctionName "Verify {0}" `
      | Out-File 'C:\Users\j.chaloupka\OneDrive - PRODWARE\Prodware\AL\Demo\TestScriptor\Output\.al\LookupValueReport.al'
