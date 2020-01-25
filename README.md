# ATDD.TestScriptor
The Acceptance Test-Driven Development (ATDD) Test Scriptor allows the user to define in a managed matter ATDD test scenarios and convert it into a code structure to facilate fast test code development. At this moment this conversion is only implemented for `.al`.
This repository extends the original [ATDD.TestScriptor](https://github.com/fluxxus-nl/ATDD.TestScriptor) feature provided by Jan Hoek and Luc van Vugt.

The ATDD pattern is defined by so called tags:

*	FEATURE: defines what feature(s) the test or collection of test cases is testing
*	SCENARIO: defines for a single test the scenario being teste
*	GIVEN: defines what data setup is needed; a test case can have multiple GIVEN tags when data setup is more complex
*	WHEN: defines the action under test; each test case should have only one WHEN tag
*	THEN: defines the result of the action, or more specifically the verification of the result; if multiple results apply, multiple THEN tags will be needed

## Installation instructions
Type either of the following in a PowerShell prompt:

- to install for all users; requires prompt with admin privileges: 
```powershell
Install-Module ATDD.TestScriptor 
```
- to install for current user only; no admin privileges required:
```powershell
Install-Module ATDD.TestScriptor -Scope CurrentUser 
```

Note that you may be asked for confirmation if you didn't previously mark the PowerShell Gallery repository as a trusted module source.

## Build/usage instructions (Demo)

In this Demo there are the following ATDD Scenario Features mentioned in `ATDD.Scenarios.xlsx` file:

- LookupValue UT Customer
- LookupValue UT Sales Document
- LookupValue UT Customer Template
- LookupValue Warehouse Shipment
- LookupValue Sales Archive
- LookupValue Inheritance
- LookupValue Posting
- LookupValue Contact
- LookupValue Report

Once `ATDD.TestScriptor.ps1` script is executed then the following `.ps1` files will be generated in `Output` folder:

- `LookupValue UT_Customer.ps1`
- `LookupValue UT_Sales Document.ps1`
- `LookupValue UT_Customer Template.ps1`
- `LookupValue_Warehouse Shipment.ps1`
- `LookupValue_Sales Archive.ps1`
- `LookupValue_Inheritance.ps1`
- `LookupValue_Posting.ps1`
- `LookupValue_Contact.ps1`
- `LookupValue_Report.ps1`

These `.ps1` files will be then processed by the  [ATDD.TestScriptor](https://www.powershellgallery.com/packages/ATDD.TestScriptor/0.0.7) module in order to  construct the skeleton of the associated `.al` Test Codeunits stored in `Output\.al` folder:

- `LookupValueUTCustomer.al`
- `LookupValueUTSalesDocument.al`
- `LookupValueUTCustomerTemplate.al`
- `LookupValueWarehouseShipment.al`
- `LookupValueSalesArchive.al`
- `LookupValueInheritance.al`
- `LookupValuePosting.al`
- `LookupValueContact.al`
- `LookupValueReport.al`

After that you can finally copy the `.al` Test Codeunits into your solution and write Testing logic.