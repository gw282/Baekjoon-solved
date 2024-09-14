-- 코드를 입력하세요
SELECT FP.PRODUCT_ID, FP.PRODUCT_NAME, SUM(FO.AMOUNT * FP.PRICE) as TOTAL_SALES
FROM FOOD_PRODUCT as FP
JOIN FOOD_ORDER as FO ON FP.PRODUCT_ID = FO.PRODUCT_ID
WHERE FO.PRODUCE_DATE LIKE "2022-05%"
GROUP BY FO.PRODUCT_ID
ORDER BY TOTAL_SALES DESC, FP.PRODUCT_ID ASC;