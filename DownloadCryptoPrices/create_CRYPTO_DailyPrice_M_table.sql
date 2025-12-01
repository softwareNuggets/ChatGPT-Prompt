--SoftwareNuggets
--Youtube Channel:  https://www.youtube.com/c/softwarenuggets


--create a table to store crypto_prices from https://coinmarketcap.com


DROP TABLE IF EXISTS dbo.CRYPTO_DailyPrice_M;
GO

CREATE TABLE dbo.CRYPTO_DailyPrice_M
(
    id 			int 			IDENTITY(1,1) NOT NULL,
	symbol 		varchar(16) 	NOT NULL,
	price_date 	datetime2(3) 	NOT NULL,
	price_usd 	decimal(19, 12) NOT NULL
);
GO

ALTER TABLE dbo.CRYPTO_DailyPrice_M
	ADD CONSTRAINT PK_CRYPTO_DailyPrice_M 
    PRIMARY KEY (id);
GO

ALTER TABLE dbo.CRYPTO_DailyPrice_M
	ADD CONSTRAINT UQ_CRYPTO_DailyPrice_M_Symbol_Date 
    UNIQUE (symbol, price_date);
GO