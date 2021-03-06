codeunit 50102 "LookupValue UT Customer Template"
{
    // [FEATURE] LookupValue UT Customer Template
    SubType = Test;
    
    [Test]
    procedure AssignLookupValueToCustomerTemplate()
    // [FEATURE] LookupValue UT Customer Template
    begin
        // [SCENARIO #0012] Assign lookup value to customer template
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A customer template
        CreateACustomerTemplate();
        
        // [WHEN] Set lookup value on customer template
        SetLookupValueOnCustomerTemplate();
        
        // [THEN] Customer template has lookup value code field populated
        VerifyCustomerTemplateHasLookupValueCodeFieldPopulated();
        
    end;
    
    [Test]
    procedure AssignNonExistingLookupValueToCustomerTemplate()
    // [FEATURE] LookupValue UT Customer Template
    begin
        // [SCENARIO #0013] Assign non-existing lookup value to customer template
        Initialize();
        
        // [GIVEN] A non-existing lookup value
        CreateANonExistingLookupValue();
        
        // [GIVEN] A customer template record variable
        CreateACustomerTemplateRecordVariable();
        
        // [WHEN] Set non-existing lookup value to customer template
        SetNonExistingLookupValueToCustomerTemplate();
        
        // [THEN] Non existing lookup value error was thrown
        VerifyNonExistingLookupValueErrorWasThrown();
        
    end;
    
    [Test]
    procedure AssignLookupValueOnCustomerTemplateCard()
    // [FEATURE] LookupValue UT Customer Template
    begin
        // [SCENARIO #0014] Assign lookup value on customer template card
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A customer template card
        CreateACustomerTemplateCard();
        
        // [WHEN] Set lookup value on customer template card
        SetLookupValueOnCustomerTemplateCard();
        
        // [THEN] Customer template has lookup value code field populated
        VerifyCustomerTemplateHasLookupValueCodeFieldPopulated();
        
    end;
    
    var
        IsInitialized: Boolean;
    
    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"LookupValue UT Customer Template");
        
        if IsInitialized then
            exit;
        
        LibraryTestInitialize.OnBeforeTestSuiteInitialize(Codeunit::"LookupValue UT Customer Template");
        
        IsInitialized := true;
        Commit();
        
        LibraryTestInitialize.OnAfterTestSuiteInitialize(Codeunit::"LookupValue UT Customer Template");
    end;
    
    local procedure CreateACustomerTemplate()
    begin
    end;
    
    local procedure CreateACustomerTemplateCard()
    begin
    end;
    
    local procedure CreateACustomerTemplateRecordVariable()
    begin
    end;
    
    local procedure CreateALookupValue()
    begin
    end;
    
    local procedure CreateANonExistingLookupValue()
    begin
    end;
    
    local procedure SetLookupValueOnCustomerTemplate()
    begin
    end;
    
    local procedure SetLookupValueOnCustomerTemplateCard()
    begin
    end;
    
    local procedure SetNonExistingLookupValueToCustomerTemplate()
    begin
    end;
    
    local procedure VerifyCustomerTemplateHasLookupValueCodeFieldPopulated()
    begin
    end;
    
    local procedure VerifyNonExistingLookupValueErrorWasThrown()
    begin
    end;
    
}

