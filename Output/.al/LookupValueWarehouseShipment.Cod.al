codeunit 50103 "LookupValue Warehouse Shipment"
{
    // [FEATURE] LookupValue Warehouse Shipment
    SubType = Test;
    
    [Test]
    procedure AssignLookupValueToWarehouseShipmentLine()
    // [FEATURE] LookupValue Warehouse Shipment
    begin
        // [SCENARIO #0015] Assign lookup value to warehouse shipment line
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A location with require shipment
        CreateALocationWithRequireShipment();
        
        // [GIVEN] A warehouse employee for current user
        CreateAWarehouseEmployeeForCurrentUser();
        
        // [GIVEN] A warehouse shipment from released sales order with line with require shipment location
        CreateAWarehouseShipmentFromReleasedSalesOrderWithLineWithRequireShipmentLocation();
        
        // [WHEN] Set lookup value on warehouse shipment line
        SetLookupValueOnWarehouseShipmentLine();
        
        // [THEN] Warehouse shipment line has lookup value code field populated
        VerifyWarehouseShipmentLineHasLookupValueCodeFieldPopulated();
        
    end;
    
    [Test]
    procedure AssignNonExistingLookupValueOnWarehouseShipmentLine()
    // [FEATURE] LookupValue Warehouse Shipment
    begin
        // [SCENARIO #0016] Assign non-existing lookup value on warehouse shipment line
        Initialize();
        
        // [GIVEN] A non-existing lookup value
        CreateANonExistingLookupValue();
        
        // [GIVEN] A warehouse shipment line record variable
        CreateAWarehouseShipmentLineRecordVariable();
        
        // [WHEN] Set non-existing lookup value to warehouse shipment line
        SetNonExistingLookupValueToWarehouseShipmentLine();
        
        // [THEN] Non existing lookup value error was thrown
        VerifyNonExistingLookupValueErrorWasThrown();
        
    end;
    
    [Test]
    procedure AssignLookupValueToWarehouseShipmentLineOnWarehouseShipmentDocumentPage()
    // [FEATURE] LookupValue Warehouse Shipment
    begin
        // [SCENARIO #0017] Assign lookup value to warehouse shipment line on warehouse shipment document page
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A location with require shipment
        CreateALocationWithRequireShipment();
        
        // [GIVEN] A warehouse employee for current user
        CreateAWarehouseEmployeeForCurrentUser();
        
        // [GIVEN] A warehouse shipment from released sales order with line with require shipment location
        CreateAWarehouseShipmentFromReleasedSalesOrderWithLineWithRequireShipmentLocation();
        
        // [WHEN] Set lookup value on warehouse shipment line on warehouse shipment document page
        SetLookupValueOnWarehouseShipmentLineOnWarehouseShipmentDocumentPage();
        
        // [THEN] Warehouse shipment line has lookup value code field populated
        VerifyWarehouseShipmentLineHasLookupValueCodeFieldPopulated();
        
    end;
    
    [Test]
    procedure CreateWarehouseShipmentFromSalesOrderWithLookupValue()
    // [FEATURE] LookupValue Warehouse Shipment
    begin
        // [SCENARIO #0030] Create warehouse shipment from sales order with lookup value
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A location with require shipment
        CreateALocationWithRequireShipment();
        
        // [GIVEN] A warehouse employee for current user
        CreateAWarehouseEmployeeForCurrentUser();
        
        // [WHEN] Create warehouse shipment from released sales order with lookup value and with line with require shipment location
        CreateWarehouseShipmentFromReleasedSalesOrderWithLookupValueAndWithLineWithRequireShipmentLocation();
        
        // [THEN] Warehouse shipment line has lookup value code field populated
        VerifyWarehouseShipmentLineHasLookupValueCodeFieldPopulated();
        
    end;
    
    [Test]
    procedure GetSalesOrderWithLookupValueOnWarehouseShipment()
    // [FEATURE] LookupValue Warehouse Shipment
    begin
        // [SCENARIO #0031] Get sales order with lookup value on warehouse shipment
        Initialize();
        
        // [GIVEN] A lookup value
        CreateALookupValue();
        
        // [GIVEN] A location with require shipment
        CreateALocationWithRequireShipment();
        
        // [GIVEN] A warehouse employee for current user
        CreateAWarehouseEmployeeForCurrentUser();
        
        // [GIVEN] A released sales order with lookup value and with line with require shipment location
        CreateAReleasedSalesOrderWithLookupValueAndWithLineWithRequireShipmentLocation();
        
        // [GIVEN] A warehouse shipment without lines
        CreateAWarehouseShipmentWithoutLines();
        
        // [WHEN] Get sales order with lookup value on warehouse shipment
        GetSalesOrderWithLookupValueOnWarehouseShipment();
        
        // [THEN] Warehouse shipment line has lookup value code field populated
        VerifyWarehouseShipmentLineHasLookupValueCodeFieldPopulated();
        
    end;
    
    var
        IsInitialized: Boolean;
    
    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"LookupValue Warehouse Shipment");
        
        if IsInitialized then
            exit;
        
        LibraryTestInitialize.OnBeforeTestSuiteInitialize(Codeunit::"LookupValue Warehouse Shipment");
        
        IsInitialized := true;
        Commit();
        
        LibraryTestInitialize.OnAfterTestSuiteInitialize(Codeunit::"LookupValue Warehouse Shipment");
    end;
    
    local procedure CreateALocationWithRequireShipment()
    begin
    end;
    
    local procedure CreateALookupValue()
    begin
    end;
    
    local procedure CreateANonExistingLookupValue()
    begin
    end;
    
    local procedure CreateAReleasedSalesOrderWithLookupValueAndWithLineWithRequireShipmentLocation()
    begin
    end;
    
    local procedure CreateAWarehouseEmployeeForCurrentUser()
    begin
    end;
    
    local procedure CreateAWarehouseShipmentFromReleasedSalesOrderWithLineWithRequireShipmentLocation()
    begin
    end;
    
    local procedure CreateAWarehouseShipmentLineRecordVariable()
    begin
    end;
    
    local procedure CreateAWarehouseShipmentWithoutLines()
    begin
    end;
    
    local procedure CreateWarehouseShipmentFromReleasedSalesOrderWithLookupValueAndWithLineWithRequireShipmentLocation()
    begin
    end;
    
    local procedure GetSalesOrderWithLookupValueOnWarehouseShipment()
    begin
    end;
    
    local procedure SetLookupValueOnWarehouseShipmentLine()
    begin
    end;
    
    local procedure SetLookupValueOnWarehouseShipmentLineOnWarehouseShipmentDocumentPage()
    begin
    end;
    
    local procedure SetNonExistingLookupValueToWarehouseShipmentLine()
    begin
    end;
    
    local procedure VerifyNonExistingLookupValueErrorWasThrown()
    begin
    end;
    
    local procedure VerifyWarehouseShipmentLineHasLookupValueCodeFieldPopulated()
    begin
    end;
    
}

