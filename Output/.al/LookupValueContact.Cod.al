codeunit 50107 "LookupValue Contact"
{
    // [FEATURE] LookupValue Contact
    SubType = Test;
    
    [Test]
    procedure CheckThatLookupValueIsInheritedFromCustomerTemplateToCustomerWhenCreatingCustomerFromContact()
    // [FEATURE] LookupValue Contact
    begin
        // [SCENARIO #0026] Check that lookup value is inherited from customer template to customer when creating customer from contact
        Initialize();
        
        // [GIVEN] A customer template with lookup value
        CreateACustomerTemplateWithLookupValue();
        
        // [GIVEN] A contact
        CreateAContact();
        
        // [WHEN] Customer is created from contact
        CustomerIsCreatedFromContact();
        
        // [THEN] Customer has lookup value code field populated with lookup value from customer template
        VerifyCustomerHasLookupValueCodeFieldPopulatedWithLookupValueFromCustomerTemplate();
        
    end;
    
    var
        IsInitialized: Boolean;
    
    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"LookupValue Contact");
        
        if IsInitialized then
            exit;
        
        LibraryTestInitialize.OnBeforeTestSuiteInitialize(Codeunit::"LookupValue Contact");
        
        IsInitialized := true;
        Commit();
        
        LibraryTestInitialize.OnAfterTestSuiteInitialize(Codeunit::"LookupValue Contact");
    end;
    
    local procedure CreateAContact()
    begin
    end;
    
    local procedure CreateACustomerTemplateWithLookupValue()
    begin
    end;
    
    local procedure CustomerIsCreatedFromContact()
    begin
    end;
    
    local procedure VerifyCustomerHasLookupValueCodeFieldPopulatedWithLookupValueFromCustomerTemplate()
    begin
    end;
    
}

