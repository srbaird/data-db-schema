SELECT 	h.portfolioCode
,		h.id AS holdingId
,		dsCode
,		t.instrumentTypeDescription AS instrumentType
,		h.value
,		h.valueDate
FROM 	pData.portfolioHoldings h
,		pData.instrumentTypes t
WHERE	h.instrumentTypeId = t.instrumentTypeId
AND		h.valueDate = 
(		SELECT	Max(h2.valueDate)
		FROM	portfolioCode h2
		WHERE	h.portfolioCode = h2.portfolioCode
		AND		h.dsCode = h2.dsCode
		AND		h2.valueDate >= STR_TO_DATE('01,5,2016','%d,%m,%Y'));