INSERT INTO pData.instrumentTypes (instrumentTypeDescription)
VALUES("Equities");

INSERT INTO pData.portfolioCodes (portfolioCode, portfolioDescription)
VALUES	("Test_Portfolio_1" ,"Portfolio for testing purposes only");


INSERT INTO pData.portfolioHolding
(		portfolioCode
,		dsCode
,		instrumentType
,		value
,		valueDate)
VALUES
(		"Test_Portfolio_1"
,		"WIKI_CMC"
,		1
,		100000
,		str_to_date("01/05/2016","%d/%m/%Y"));
