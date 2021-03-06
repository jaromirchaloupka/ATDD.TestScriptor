codeunit 50106 "LookupValue Posting"
{
    // [FEATURE] LookupValue Posting
    SubType = Test;
    
    [Test]
    procedure CheckThatPostedSalesInvoiceAndShipmentInheritLookupValueFromSalesOrder()
    // [FEATURE] LookupValue Posting
    begin
        // [SCENARIO #0022] Check that posted sales invoice and shipment inherit lookup value from sales order
        Initialize();
        
        // [GIVEN] A sales order with a lookup value
        CreateASalesOrderWithALookupValue();
        
        // [WHEN] Sales order is posted (invoice & ship)
        SalesOrderIsPostedInvoiceShip();
        
        // [THEN] Posted sales invoice has lookup value from sales order
        VerifyPostedSalesInvoiceHasLookupValueFromSalesOrder();
        
        // [THEN] Sales shipment has lookup value from sales order
        VerifySalesShipmentHasLookupValueFromSalesOrder();
        
    end;
    
    [Test]
    procedure CheckPostingThrowsErrorOnSalesOrderWithEmptyLookupValue()
    // [FEATURE] LookupValue Posting
    begin
        // [SCENARIO #0027] Check posting throws error on sales order with empty lookup value
        Initialize();
        
        // [GIVEN] A sales order without a lookup value
        CreateASalesOrderWithoutALookupValue();
        
        // [WHEN] Sales order is posted (invoice & ship)
        SalesOrderIsPostedInvoiceShip();
        
        // [THEN] Missing lookup value on sales order error thrown
        VerifyMissingLookupValueOnSalesOrderErrorThrown();
        
    end;
    
    [Test]
    procedure CheckThatPostedWarehouseShipmentLineInheritsLookupValueFromSalesOrderThroughWarehouseShipmentLine()
    // [FEATURE] LookupValue Posting
    begin
        // [SCENARIO #0023] Check that posted warehouse shipment line inherits lookup value from sales order through warehouse shipment line
        Initialize();
        
        // [GIVEN] A location with require shipment
        CreateALocationWithRequireShipment();
        
        // [GIVEN] A warehouse employee for current user
        CreateAWarehouseEmployeeForCurrentUser();
        
        // [GIVEN] A warehouse shipment line with a lookup value created from a sales order
        CreateAWarehouseShipmentLineWithALookupValueCreatedFromASalesOrder();
        
        // [WHEN] Warehouse shipment is posted
        WarehouseShipmentIsPosted();
        
        // [THEN] Posted warehouse shipment line has lookup value from warehouse shipment line
        VerifyPostedWarehouseShipmentLineHasLookupValueFromWarehouseShipmentLine();
        
    end;
    
    [Test]
    procedure CheckPostingThrowsErrorOnSalesOrderWithEmptyLookupValue()
    // [FEATURE] LookupValue Posting
    begin
        // [SCENARIO #0025] Check posting throws error on sales order with empty lookup value
        Initialize();
        
        // [GIVEN] A location with require shipment
        CreateALocationWithRequireShipment();
        
        // [GIVEN] A warehouse employee for current user
        CreateAWarehouseEmployeeForCurrentUser();
        
        // [GIVEN] A warehouse shipment line created from a sales order without  lookup value
        CreateAWarehouseShipmentLineCreatedFromASalesOrderWithoutLookupValue();
        
        // [WHEN] Warehouse shipment is posted
        WarehouseShipmentIsPosted();
        
        // [THEN] Missing lookup value on sales order error thrown
        VerifyMissingLookupValueOnSalesOrderErrorThrown();
        
    end;
    
    var
        IsInitialized: Boolean;
    
    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"LookupValue Posting");
        
        if IsInitialized then
            exit;
        
        LibraryTestInitialize.OnBeforeTestSuiteInitialize(Codeunit::"LookupValue Posting");
        
        IsInitialized := true;
        Commit();
        
        LibraryTestInitialize.OnAfterTestSuiteInitialize(Codeunit::"LookupValue Posting");
    end;
    
    local procedure CreateALocationWithRequireShipment()
    begin
    end;
    
    local procedure CreateASalesOrderWithALookupValue()
    begin
    end;
    
    local procedure CreateASalesOrderWithoutALookupValue()
    begin
    end;
    
    local procedure CreateAWarehouseEmployeeForCurrentUser()
    begin
    end;
    
    local procedure CreateAWarehouseShipmentLineCreatedFromASalesOrderWithoutLookupValue()
    begin
    end;
    
    local procedure CreateAWarehouseShipmentLineWithALookupValueCreatedFromASalesOrder()
    begin
    end;
    
    local procedure SalesOrderIsPostedInvoiceShip()
    begin
    end;
    
    local procedure VerifyMissingLookupValueOnSalesOrderErrorThrown()
    begin
    end;
    
    local procedure VerifyPostedSalesInvoiceHasLookupValueFromSalesOrder()
    begin
    end;
    
    local procedure VerifyPostedWarehouseShipmentLineHasLookupValueFromWarehouseShipmentLine()
    begin
    end;
    
    local procedure VerifySalesShipmentHasLookupValueFromSalesOrder()
    begin
    end;
    
    local procedure WarehouseShipmentIsPosted()
    begin
    end;
    
}

