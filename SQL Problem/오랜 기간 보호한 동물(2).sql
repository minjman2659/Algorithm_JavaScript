-- https://programmers.co.kr/learn/courses/30/lessons/59411#qna

SELECT ANIMAL_OUTS.ANIMAL_ID, ANIMAL_OUTS.NAME
FROM ANIMAL_OUTS
JOIN ANIMAL_INS
ON ANIMAL_INS.ANIMAL_ID = ANIMAL_OUTS.ANIMAL_ID
ORDER BY DATEDIFF(ANIMAL_OUTS.DATETIME, ANIMAL_INS.DATETIME) DESC
LIMIT 2
-- MySQL에서는 DATEDIFF의 인자 순서가 다르다는 것을 기억하자
-- DATEDIFF(최근 날짜, 이전 날짜)