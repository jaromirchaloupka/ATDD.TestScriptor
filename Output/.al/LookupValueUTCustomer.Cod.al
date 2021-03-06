codeunit 50100 "LookupValue UT Customer"
{
    // [FEATURE] LookupValue UT Customer
    SubType = Test;
    
    [Test]
    procedure AssignLookupValueToCustomer()
    // [FEATURE] LookupValue UT Customer
    begin
        // [SCENARIO #0001] Assign lookup value to customer
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A customer
        CreateACustomer();
        
        // [WHEN] Set lookup value on customer
        SetLookupValueOnCustomer();
        
        // [THEN] Customer has lookup value code field populated
        VerifyCustomerHasLookupValueCodeFieldPopulated();
        
    end;
    
    [Test]
    procedure AssignNonExistingLookupValueToCustomer()
    // [FEATURE] LookupValue UT Customer
    begin
        // [SCENARIO #0002] Assign non-existing lookup value to customer
        Initialize();
        
        // [GIVEN] A non-existing lookup value
        CreateANonExistingLookupValue();
        
        // [GIVEN] A customer record variable
        CreateACustomerRecordVariable();
        
        // [WHEN] Set non-existing lookup value on customer
        SetNonExistingLookupValueOnCustomer();
        
        // [THEN] Non existing lookup value error thrown
        VerifyNonExistingLookupValueErrorThrown();
        
    end;
    
    [Test]
    procedure AssignLookupValueOnCustomerCard()
    // [FEATURE] LookupValue UT Customer
    begin
        // [SCENARIO #0003] Assign lookup value on customer card
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A customer card
        CreateACustomerCard();
        
        // [WHEN] Set lookup value on customer card
        SetLookupValueOnCustomerCard();
        
        // [THEN] Customer has lookup value code field populated
        VerifyCustomerHasLookupValueCodeFieldPopulated();
        
    end;
    
    var
        IsInitialized: Boolean;
    
    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"LookupValue UT Customer");
        
        if IsInitialized then
            exit;
        
        LibraryTestInitialize.OnBeforeTestSuiteInitialize(Codeunit::"LookupValue UT Customer");
        
        IsInitialized := true;
        Commit();
        
        LibraryTestInitialize.OnAfterTestSuiteInitialize(Codeunit::"LookupValue UT Customer");
    end;
    
    local procedure CreateACustomer()
    begin
    end;
    
    local procedure CreateACustomerCard()
    begin
    end;
    
    local procedure CreateACustomerRecordVariable()
    begin
    end;
    
    local procedure CreateALookupValue()
    begin
    end;
    
    local procedure CreateANonExistingLookupValue()
    begin
    end;
    
    local procedure SetLookupValueOnCustomer()
    begin
    end;
    
    local procedure SetLookupValueOnCustomerCard()
    begin
    end;
    
    local procedure SetNonExistingLookupValueOnCustomer()
    begin
    end;
    
    local procedure VerifyCustomerHasLookupValueCodeFieldPopulated()
    begin
    end;
    
    local procedure VerifyNonExistingLookupValueErrorThrown()
    begin
    end;
    
}

