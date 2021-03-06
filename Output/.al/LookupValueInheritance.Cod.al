codeunit 50105 "LookupValue Inheritance"
{
    // [FEATURE] LookupValue Inheritance
    SubType = Test;
    
    [Test]
    procedure AssignCustomerLookupValueToSalesDocument()
    // [FEATURE] LookupValue Inheritance
    begin
        // [SCENARIO #0024] Assign customer lookup value to sales document
        Initialize();
        
        // [GIVEN] A customer with a lookup value
        CreateACustomerWithALookupValue();
        
        // [GIVEN] A sales document (invoice) without a lookup value
        CreateASalesDocumentInvoiceWithoutALookupValue();
        
        // [WHEN] Set customer on sales header
        SetCustomerOnSalesHeader();
        
        // [THEN] Lookup value on sales document is populated with lookup value of customer
        VerifyLookupValueOnSalesDocumentIsPopulatedWithLookupValueOfCustomer();
        
    end;
    
    [Test]
    procedure CreateCustomerFromConfigurationTemplateWithLookupValue()
    // [FEATURE] LookupValue Inheritance
    begin
        // [SCENARIO #0028] Create customer from configuration template with lookup value
        Initialize();
        
        // [GIVEN] A configuration template (customer) with lookup value
        CreateAConfigurationTemplateCustomerWithLookupValue();
        
        // [WHEN] Create customer from configuration template
        CreateCustomerFromConfigurationTemplate();
        
        // [THEN] Lookup value on customer is populated with lookup value of configuration template
        VerifyLookupValueOnCustomerIsPopulatedWithLookupValueOfConfigurationTemplate();
        
    end;
    
    var
        IsInitialized: Boolean;
    
    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"LookupValue Inheritance");
        
        if IsInitialized then
            exit;
        
        LibraryTestInitialize.OnBeforeTestSuiteInitialize(Codeunit::"LookupValue Inheritance");
        
        IsInitialized := true;
        Commit();
        
        LibraryTestInitialize.OnAfterTestSuiteInitialize(Codeunit::"LookupValue Inheritance");
    end;
    
    local procedure CreateAConfigurationTemplateCustomerWithLookupValue()
    begin
    end;
    
    local procedure CreateACustomerWithALookupValue()
    begin
    end;
    
    local procedure CreateASalesDocumentInvoiceWithoutALookupValue()
    begin
    end;
    
    local procedure CreateCustomerFromConfigurationTemplate()
    begin
    end;
    
    local procedure SetCustomerOnSalesHeader()
    begin
    end;
    
    local procedure VerifyLookupValueOnCustomerIsPopulatedWithLookupValueOfConfigurationTemplate()
    begin
    end;
    
    local procedure VerifyLookupValueOnSalesDocumentIsPopulatedWithLookupValueOfCustomer()
    begin
    end;
    
}

