SELECT 	h.portfolioCode
,		h.id AS holdingId
,		dsCode
,		t.instrumentTypeDescription AS instrumentType
,		h.value
,		h.valueDate
FROM 	pData.portfolioHoldings h
,		pData.instrumentTypes t
WHERE	h.instrumentTypeId = t.instrumentTypeId