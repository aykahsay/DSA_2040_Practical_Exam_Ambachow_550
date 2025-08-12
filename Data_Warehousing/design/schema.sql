-- Customer Dimension
CREATE TABLE CustomerDim (
    CustomerID INTEGER PRIMARY KEY,
    CustomerName TEXT,
    Location TEXT,
    Country TEXT
);

-- Product Dimension
CREATE TABLE ProductDim (
    ProductID TEXT PRIMARY KEY,
    ProductName TEXT,
    Category TEXT
);

-- Time Dimension
CREATE TABLE TimeDim (
    TimeID INTEGER PRIMARY KEY AUTOINCREMENT,
    Date TEXT,
    Month INTEGER,
    Quarter INTEGER,
    Year INTEGER
);

-- Sales Fact Table
CREATE TABLE SalesFact (
    SaleID INTEGER PRIMARY KEY AUTOINCREMENT,
    InvoiceNo TEXT,
    CustomerID INTEGER,
    ProductID TEXT,
    TimeID INTEGER,
    Quantity INTEGER,
    SalesAmount REAL,
    FOREIGN KEY(CustomerID) REFERENCES CustomerDim(CustomerID),
    FOREIGN KEY(ProductID) REFERENCES ProductDim(ProductID),
    FOREIGN KEY(TimeID) REFERENCES TimeDim(TimeID)
);
