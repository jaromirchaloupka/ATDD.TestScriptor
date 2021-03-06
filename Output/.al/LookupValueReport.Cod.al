codeunit 50108 "LookupValue Report"
{
    // [FEATURE] LookupValue Report
    SubType = Test;
    
    [Test]
    procedure TestThatLookupValueShowsOnCustomerListReport()
    // [FEATURE] LookupValue Report
    begin
        // [SCENARIO #0029] Test that lookup value shows on CustomerList report
        Initialize();
        
        // [GIVEN] 2 customers with different lookup value
        Create2CustomersWithDifferentLookupValue();
        
        // [WHEN] Run report CustomerList
        RunReportCustomerList();
        
        // [THEN] Report dataset contains both customers with lookup value
        VerifyReportDatasetContainsBothCustomersWithLookupValue();
        
    end;
    
    var
        IsInitialized: Boolean;
    
    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"LookupValue Report");
        
        if IsInitialized then
            exit;
        
        LibraryTestInitialize.OnBeforeTestSuiteInitialize(Codeunit::"LookupValue Report");
        
        IsInitialized := true;
        Commit();
        
        LibraryTestInitialize.OnAfterTestSuiteInitialize(Codeunit::"LookupValue Report");
    end;
    
    local procedure Create2CustomersWithDifferentLookupValue()
    begin
    end;
    
    local procedure RunReportCustomerList()
    begin
    end;
    
    local procedure VerifyReportDatasetContainsBothCustomersWithLookupValue()
    begin
    end;
    
}

