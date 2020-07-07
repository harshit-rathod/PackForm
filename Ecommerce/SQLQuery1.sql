 CREATE TABLE orders (
    [id] INT NOT NULL PRIMARY KEY ,
    [created_at] VARCHAR(20),
    [order_name] VARCHAR(9),
    [customer_id] VARCHAR(4)
);
INSERT INTO orders VALUES
    (1,'2020-01-02T15:34:12Z',N'PO #001-I',N'ivan'),
    (2,'2020-01-15T17:34:12Z',N'PO #002-I',N'ivan'),
    (3,'2020-01-05T05:34:12Z',N'PO #003-I',N'ivan'),
    (4,'2020-02-02T15:34:12Z',N'PO #004-I',N'ivan'),
    (5,'2020-01-03T10:34:12Z',N'PO #005-I',N'ivan'),
    (6,'2020-01-02T15:34:12Z',N'PO #001-P',N'petr'),
    (7,'2020-01-15T17:34:12Z',N'PO #002-P',N'petr'),
    (8,'2020-01-05T05:34:12Z',N'PO #003-P',N'petr'),
    (9,'2020-02-02T15:34:12Z',N'PO #004-P',N'petr'),
    (10,'2020-01-03T10:34:12Z',N'PO #005-P',N'petr');
