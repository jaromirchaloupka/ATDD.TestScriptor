codeunit 50104 "LookupValue Sales Archive"
{
    // [FEATURE] LookupValue Sales Archive
    SubType = Test;
    
    [Test]
    procedure ArchiveSalesOrderWithLookupValue()
    // [FEATURE] LookupValue Sales Archive
    begin
        // [SCENARIO #0018] Archive sales order with lookup value
        Initialize();
        
        // [GIVEN] A sales order with a lookup value
        CreateASalesOrderWithALookupValue();
        
        // [WHEN] Sales order is archived
        SalesOrderIsArchived();
        
        // [THEN] Archived sales order has lookup value from sales order
        VerifyArchivedSalesOrderHasLookupValueFromSalesOrder();
        
    end;
    
    [Test]
    procedure ArchiveSalesQuoteWithLookupValue()
    // [FEATURE] LookupValue Sales Archive
    begin
        // [SCENARIO #0019] Archive sales quote with lookup value
        Initialize();
        
        // [GIVEN] A sales quote with a lookup value
        CreateASalesQuoteWithALookupValue();
        
        // [WHEN] Sales quote is archived
        SalesQuoteIsArchived();
        
        // [THEN] Archived sales quote has lookup value from sales quote
        VerifyArchivedSalesQuoteHasLookupValueFromSalesQuote();
        
    end;
    
    [Test]
    procedure ArchiveSalesReturnOrderWithLookupValue()
    // [FEATURE] LookupValue Sales Archive
    begin
        // [SCENARIO #0020] Archive sales return order with lookup value
        Initialize();
        
        // [GIVEN] A sales return order with a lookup value
        CreateASalesReturnOrderWithALookupValue();
        
        // [WHEN] Sales return order is archived
        SalesReturnOrderIsArchived();
        
        // [THEN] Archived sales return order has lookup value from sales return order
        VerifyArchivedSalesReturnOrderHasLookupValueFromSalesReturnOrder();
        
    end;
    
    [Test]
    procedure CheckThatLookupValueIsShownRightOnSalesListArchive()
    // [FEATURE] LookupValue Sales Archive
    begin
        // [SCENARIO #0021] Check that lookup value is shown right on Sales List Archive
        Initialize();
        
        // [GIVEN] A sales document with a lookup value
        CreateASalesDocumentWithALookupValue();
        
        // [WHEN] Sales document is archived
        SalesDocumentIsArchived();
        
        // [THEN] Archived sales document has lookup value from sales document
        VerifyArchivedSalesDocumentHasLookupValueFromSalesDocument();
        
        // [THEN] lookup value is shown right on Sales List Archive
        VerifyLookupValueIsShownRightOnSalesListArchive();
        
    end;
    
    var
        IsInitialized: Boolean;
    
    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"LookupValue Sales Archive");
        
        if IsInitialized then
            exit;
        
        LibraryTestInitialize.OnBeforeTestSuiteInitialize(Codeunit::"LookupValue Sales Archive");
        
        IsInitialized := true;
        Commit();
        
        LibraryTestInitialize.OnAfterTestSuiteInitialize(Codeunit::"LookupValue Sales Archive");
    end;
    
    local procedure CreateASalesDocumentWithALookupValue()
    begin
    end;
    
    local procedure CreateASalesOrderWithALookupValue()
    begin
    end;
    
    local procedure CreateASalesQuoteWithALookupValue()
    begin
    end;
    
    local procedure CreateASalesReturnOrderWithALookupValue()
    begin
    end;
    
    local procedure SalesDocumentIsArchived()
    begin
    end;
    
    local procedure SalesOrderIsArchived()
    begin
    end;
    
    local procedure SalesQuoteIsArchived()
    begin
    end;
    
    local procedure SalesReturnOrderIsArchived()
    begin
    end;
    
    local procedure VerifyArchivedSalesDocumentHasLookupValueFromSalesDocument()
    begin
    end;
    
    local procedure VerifyArchivedSalesOrderHasLookupValueFromSalesOrder()
    begin
    end;
    
    local procedure VerifyArchivedSalesQuoteHasLookupValueFromSalesQuote()
    begin
    end;
    
    local procedure VerifyArchivedSalesReturnOrderHasLookupValueFromSalesReturnOrder()
    begin
    end;
    
    local procedure VerifyLookupValueIsShownRightOnSalesListArchive()
    begin
    end;
    
}

