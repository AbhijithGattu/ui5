namespace cap_tutorial;


entity SalesOrders {
      @title: 'Sales Order Number'
  key soNumber        : String;

      @title: 'Order Date'
      orderDate       : Date;

      @title: 'Customer Name'
      customerName    : String;

      @title: 'Customer Number'
      customerNumber  : String;

      @title: 'PO Number'
      PoNumber        : String;

      @title: 'Inquiry Number'
      inquiryNumber   : String;

      @title: 'Total Sales Order'
      totalOrderItems : Integer;
}

entity Customers {
  key CustomerID  : String;
      CompanyName : String;
      ContactName : String;
      ContactTitle : String;
      Address     : String;
      City        : String;
      Region      : String;
      PostalCode  : String;
      Country     : String;
      Phone       : String;
      Fax         : String;
      orderInfo   : Association to one Orders on orderInfo.CustomerID = $self.CustomerID
}

entity Orders {
  key OrderID        : Integer;
      CustomerID     : String;
      OrderDate      : Date;
      RequiredDate   : Date;
      ShippedDate    : Date;
      ShipVia        : String;
      Freight        : String;
      ShipName       : String;
      ShipAddress    : String;
      ShipCity       : String;
      ShipRegion     : String;
      ShipPostalCode : String;
      ShipCountry    : String;
      CustomerInfo   : Association to one Customers on CustomerInfo.CustomerID = $self.CustomerID;
      OrderedBy      : Integer;
}

entity Products {
  key ProductID       : Integer;
      ProductName     : String;
      SupplierID      : Integer;
      CategoryID      : Integer;
      QuantityPerUnit : String;
      UnitPrice       : Decimal(12,2);
      UnitsInStock    : Integer;
      UnitsOnOrder    : Integer;
      ReorderLevel    : Integer;
      Discontinued    : Integer;
      OrderedBy       : Integer;
      OrderedByinfo   : Association to many Orders on OrderedByinfo.OrderedBy = $self.OrderedBy;

}
entity Countries {
  key Country :String;
  CountryCode :String;
  Currency    :String;
  Code        :String;
}
