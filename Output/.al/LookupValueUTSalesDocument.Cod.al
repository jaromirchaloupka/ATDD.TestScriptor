codeunit 50101 "LookupValue UT Sales Document"
{
    // [FEATURE] LookupValue UT Sales Document
    SubType = Test;
    
    [Test]
    procedure AssignLookupValueToSalesHeader()
    // [FEATURE] LookupValue UT Sales Document
    begin
        // [SCENARIO #0004] Assign lookup value to sales header
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A sales header
        CreateASalesHeader();
        
        // [WHEN] Set lookup value on sales header
        SetLookupValueOnSalesHeader();
        
        // [THEN] Sales header has lookup value code field populated
        VerifySalesHeaderHasLookupValueCodeFieldPopulated();
        
    end;
    
    [Test]
    procedure AssignNonExistingLookupValueOnSalesHeader()
    // [FEATURE] LookupValue UT Sales Document
    begin
        // [SCENARIO #0005] Assign non-existing lookup value on sales header
        Initialize();
        
        // [GIVEN] A non-existing lookup value
        CreateANonExistingLookupValue();
        
        // [GIVEN] A sales header record variable
        CreateASalesHeaderRecordVariable();
        
        // [WHEN] Set non-existing lookup value to sales header
        SetNonExistingLookupValueToSalesHeader();
        
        // [THEN] Non existing lookup value error was thrown
        VerifyNonExistingLookupValueErrorWasThrown();
        
    end;
    
    [Test]
    procedure AssignLookupValueOnSalesQuoteDocumentPage()
    // [FEATURE] LookupValue UT Sales Document
    begin
        // [SCENARIO #0006] Assign lookup value on sales quote document page
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A sales quote document page
        CreateASalesQuoteDocumentPage();
        
        // [WHEN] Set lookup value on sales quote document
        SetLookupValueOnSalesQuoteDocument();
        
        // [THEN] Sales quote has lookup value code field populated
        VerifySalesQuoteHasLookupValueCodeFieldPopulated();
        
    end;
    
    [Test]
    procedure AssignLookupValueOnSalesOrderDocumentPage()
    // [FEATURE] LookupValue UT Sales Document
    begin
        // [SCENARIO #0007] Assign lookup value on sales order document page
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A sales order document page
        CreateASalesOrderDocumentPage();
        
        // [WHEN] Set lookup value on sales order document
        SetLookupValueOnSalesOrderDocument();
        
        // [THEN] Sales order has lookup value code field populated
        VerifySalesOrderHasLookupValueCodeFieldPopulated();
        
    end;
    
    [Test]
    procedure AssignLookupValueOnSalesInvoiceDocumentPage()
    // [FEATURE] LookupValue UT Sales Document
    begin
        // [SCENARIO #0008] Assign lookup value on sales invoice document page
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A sales invoice document page
        CreateASalesInvoiceDocumentPage();
        
        // [WHEN] Set lookup value on sales invoice document
        SetLookupValueOnSalesInvoiceDocument();
        
        // [THEN] Sales invoice has lookup value code field populated
        VerifySalesInvoiceHasLookupValueCodeFieldPopulated();
        
    end;
    
    [Test]
    procedure AssignLookupValueOnSalesCreditMemoDocumentPage()
    // [FEATURE] LookupValue UT Sales Document
    begin
        // [SCENARIO #0009] Assign lookup value on sales credit memo document page
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A sales credit memo document page
        CreateASalesCreditMemoDocumentPage();
        
        // [WHEN] Set lookup value on sales credit memo document
        SetLookupValueOnSalesCreditMemoDocument();
        
        // [THEN] Sales credit memo has lookup value code field populated
        VerifySalesCreditMemoHasLookupValueCodeFieldPopulated();
        
    end;
    
    [Test]
    procedure AssignLookupValueOnSalesReturnOrderDocumentPage()
    // [FEATURE] LookupValue UT Sales Document
    begin
        // [SCENARIO #0010] Assign lookup value on sales return order document page
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A sales return order document page
        CreateASalesReturnOrderDocumentPage();
        
        // [WHEN] Set lookup value on sales return order document
        SetLookupValueOnSalesReturnOrderDocument();
        
        // [THEN] Sales return order has lookup value code field populated
        VerifySalesReturnOrderHasLookupValueCodeFieldPopulated();
        
    end;
    
    [Test]
    procedure AssignLookupValueOnBlanketSalesOrderDocumentPage()
    // [FEATURE] LookupValue UT Sales Document
    begin
        // [SCENARIO #0011] Assign lookup value on blanket sales order document page
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A blanket sales order document page
        CreateABlanketSalesOrderDocumentPage();
        
        // [WHEN] Set lookup value on blanket sales order document
        SetLookupValueOnBlanketSalesOrderDocument();
        
        // [THEN] Blanket sales order has lookup value code field populated
        VerifyBlanketSalesOrderHasLookupValueCodeFieldPopulated();
        
    end;
    
    var
        IsInitialized: Boolean;
    
    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"LookupValue UT Sales Document");
        
        if IsInitialized then
            exit;
        
        LibraryTestInitialize.OnBeforeTestSuiteInitialize(Codeunit::"LookupValue UT Sales Document");
        
        IsInitialized := true;
        Commit();
        
        LibraryTestInitialize.OnAfterTestSuiteInitialize(Codeunit::"LookupValue UT Sales Document");
    end;
    
    local procedure CreateABlanketSalesOrderDocumentPage()
    begin
    end;
    
    local procedure CreateALookupValue()
    begin
    end;
    
    local procedure CreateANonExistingLookupValue()
    begin
    end;
    
    local procedure CreateASalesCreditMemoDocumentPage()
    begin
    end;
    
    local procedure CreateASalesHeader()
    begin
    end;
    
    local procedure CreateASalesHeaderRecordVariable()
    begin
    end;
    
    local procedure CreateASalesInvoiceDocumentPage()
    begin
    end;
    
    local procedure CreateASalesOrderDocumentPage()
    begin
    end;
    
    local procedure CreateASalesQuoteDocumentPage()
    begin
    end;
    
    local procedure CreateASalesReturnOrderDocumentPage()
    begin
    end;
    
    local procedure SetLookupValueOnBlanketSalesOrderDocument()
    begin
    end;
    
    local procedure SetLookupValueOnSalesCreditMemoDocument()
    begin
    end;
    
    local procedure SetLookupValueOnSalesHeader()
    begin
    end;
    
    local procedure SetLookupValueOnSalesInvoiceDocument()
    begin
    end;
    
    local procedure SetLookupValueOnSalesOrderDocument()
    begin
    end;
    
    local procedure SetLookupValueOnSalesQuoteDocument()
    begin
    end;
    
    local procedure SetLookupValueOnSalesReturnOrderDocument()
    begin
    end;
    
    local procedure SetNonExistingLookupValueToSalesHeader()
    begin
    end;
    
    local procedure VerifyBlanketSalesOrderHasLookupValueCodeFieldPopulated()
    begin
    end;
    
    local procedure VerifyNonExistingLookupValueErrorWasThrown()
    begin
    end;
    
    local procedure VerifySalesCreditMemoHasLookupValueCodeFieldPopulated()
    begin
    end;
    
    local procedure VerifySalesHeaderHasLookupValueCodeFieldPopulated()
    begin
    end;
    
    local procedure VerifySalesInvoiceHasLookupValueCodeFieldPopulated()
    begin
    end;
    
    local procedure VerifySalesOrderHasLookupValueCodeFieldPopulated()
    begin
    end;
    
    local procedure VerifySalesQuoteHasLookupValueCodeFieldPopulated()
    begin
    end;
    
    local procedure VerifySalesReturnOrderHasLookupValueCodeFieldPopulated()
    begin
    end;
    
}

