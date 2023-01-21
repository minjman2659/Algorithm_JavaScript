-- https://school.programmers.co.kr/learn/courses/30/lessons/131532#qna

SELECT YEAR(ONLINE_SALE.SALES_DATE) AS YEAR, MONTH(ONLINE_SALE.SALES_DATE) AS MONTH,
USER_INFO.GENDER, COUNT(DISTINCT ONLINE_SALE.USER_ID) AS USERS
FROM ONLINE_SALE
INNER JOIN USER_INFO
ON ONLINE_SALE.USER_ID = USER_INFO.USER_ID
WHERE USER_INFO.GENDER IS NOT NULL
GROUP BY YEAR, MONTH, GENDER
ORDER BY YEAR, MONTH, GENDER