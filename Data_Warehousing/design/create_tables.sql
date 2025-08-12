# Cell F: Save the SQL create statements (SQLite syntax) to file
create_sql = """
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS CustomerDim (
    CustomerKey INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerID INTEGER UNIQUE,
    Country TEXT,
    TotalPurchases REAL,
    NumTransactions INTEGER
);

CREATE TABLE IF NOT EXISTS ProductDim (
    ProductKey INTEGER PRIMARY KEY AUTOINCREMENT,
    StockCode TEXT UNIQUE,
    Description TEXT,
    Category TEXT,
    AvgUnitPrice REAL
);

CREATE TABLE IF NOT EXISTS TimeDim (
    TimeKey INTEGER PRIMARY KEY AUTOINCREMENT,
    InvoiceDate TEXT UNIQUE,
    Day INTEGER,
    Month INTEGER,
    MonthName TEXT,
    Quarter INTEGER,
    Year INTEGER
);

CREATE TABLE IF NOT EXISTS SalesFact (
    SalesKey INTEGER PRIMARY KEY AUTOINCREMENT,
    InvoiceNo TEXT,
    ProductKey INTEGER,
    CustomerKey INTEGER,
    TimeKey INTEGER,
    Quantity INTEGER,
    UnitPrice REAL,
    TotalSales REAL,
    FOREIGN KEY(ProductKey) REFERENCES ProductDim(ProductKey),
    FOREIGN KEY(CustomerKey) REFERENCES CustomerDim(CustomerKey),
    FOREIGN KEY(TimeKey) REFERENCES TimeDim(TimeKey)
);
"""
with open("Data_Warehousing/Task1_Design/create_tables.sql", "w", encoding="utf-8") as f:
    f.write(create_sql)
print("Saved Data_Warehousing/Task1_Design/create_tables.sql")
