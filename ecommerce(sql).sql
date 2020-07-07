BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "customer_companies" (
	"company_id"	integer,
	"company_name"	text
);
CREATE TABLE IF NOT EXISTS "customers" (
	"user_id"	text,
	"login"	text,
	"password"	blob,
	"name"	text,
	"company_id"	integer,
	"credit_cards"	blob
);
CREATE TABLE IF NOT EXISTS "orders" (
	"id"	integer,
	"created_at"	text,
	"order_name"	blob,
	"customer_id"	text
);
INSERT INTO "customer_companies" VALUES ('company_id','company_name');
INSERT INTO "customer_companies" VALUES (1,'Roga & Kopyta');
INSERT INTO "customer_companies" VALUES (2,'Pupkin & Co');
INSERT INTO "customers" VALUES ('user_id','login','password','name','company_id','credit_cards');
INSERT INTO "customers" VALUES ('ivan','ivan','12345','Ivan Ivanovich',1,'["*****-1234", "*****-5678"]');
INSERT INTO "customers" VALUES ('petr','petr','54321','Petr Petrovich',2,'["*****-4321", "*****-8765"]');
INSERT INTO "orders" VALUES ('id','created_at','order_name','customer_id');
INSERT INTO "orders" VALUES (1,'2020-01-02T15:34:12Z','PO #001-I','ivan');
INSERT INTO "orders" VALUES (2,'2020-01-15T17:34:12Z','PO #002-I','ivan');
INSERT INTO "orders" VALUES (3,'2020-01-05T05:34:12Z','PO #003-I','ivan');
INSERT INTO "orders" VALUES (4,'2020-02-02T15:34:12Z','PO #004-I','ivan');
INSERT INTO "orders" VALUES (5,'2020-01-03T10:34:12Z','PO #005-I','ivan');
INSERT INTO "orders" VALUES (6,'2020-01-02T15:34:12Z','PO #001-P','petr');
INSERT INTO "orders" VALUES (7,'2020-01-15T17:34:12Z','PO #002-P','petr');
INSERT INTO "orders" VALUES (8,'2020-01-05T05:34:12Z','PO #003-P','petr');
INSERT INTO "orders" VALUES (9,'2020-02-02T15:34:12Z','PO #004-P','petr');
INSERT INTO "orders" VALUES (10,'2020-01-03T10:34:12Z','PO #005-P','petr');
COMMIT;
