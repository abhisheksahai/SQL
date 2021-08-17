select *
from Orders.Customers
insert into Orders.Customers
    (CustName,CustStreet,CustCity,CustStateProv,CustCountry,CustPostalCode,CustSalutation)
values
    ('Abhishek Sahai', 'Madhapur', 'Hyderabad', 'Telangana', 'India', '500081', 'Mr.'),
    ('Archana Verma', 'Kailashpuri', 'Mughalsarai', 'Uttar Pradesh', 'India', '232101', 'Miss')



CREATE TABLE Orders.Customers
(
    CustdID int IDENTITY(1,1) NOT NULL
        CONSTRAINT PK_Customers_CustdID primary key,
    CustName nvarchar(200) NOT NULL,
    CustStreet nvarchar(100) NOT NULL,
    CustCity nvarchar(100) NOT NULL,
    CustStateProv nvarchar(100) NOT NULL,
    CustCountry nvarchar(100) NOT NULL,
    CustPostalCode nvarchar(20) NOT NULL,
    CustSalutation char(5) NOT NULL,
);

select *
from Orders.Stock

insert into Orders.Stock
    (StockSKU,
    StockSize,
    StockName,
    StockPrice
    )
VALUES
    ('OXFORD01', 'Oxford', '10_D', 50.00),
    ('BABYSHO1', 'Baby Sneekers', '3', 20.),
    ('HEELS001', 'Killer Heels', '7', 75.)

drop table Orders.Stock

CREATE TABLE Orders.Stock
(
    StockSKU char(8) NOT NULL,
    StockSize varchar(20) NOT NULL,
    StockName varchar(100) NOT NULL,
    StockPrice numeric(7,2) NOT NULL,
    CONSTRAINT PK_Stock_StockSKU_StockSize PRIMARY key(StockSKU,StockSize)
);

insert into Orders.Orders
    (OrderDate,OrderRequestedDate,CustID,OrderIsExpedited)
values
    ('20190301', '20190401', 1, 0),
    ('20190301', '20190401', 2, 0)

select *
from Orders.Orders
CREATE TABLE Orders.Orders
(
    OrderID int IDENTITY(1,1) NOT NULL
        CONSTRAINT PK_Orders_OrderID primary key,
    OrderDate date not NULL,
    OrderRequestedDate date not NULL,
    OrderDeliveryDate DATETIME2(0),
    CustID int not NULL,
    OrderIsExpedited bit NOT NULL
);

CREATE TABLE Orders.OrderItems
(
    OrderItemID int IDENTITY(1,1) NOT NULL
        CONSTRAINT PK_OrderItems_OrderItemID  primary key,
    OrderID int not NULL,
    StockSKU char(8) NOT NULL,
    StockSize varchar(10) NOT NULL,
    Quantity SMALLINT not NULL,
    Discount numeric(4,2) NOT NULL
);


select *
from Orders.OrderItems
insert into Orders.OrderItems
    (OrderID,StockSKU,StockSize,Quantity,Discount)

