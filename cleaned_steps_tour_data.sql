SELECT *
FROM messy2
;
WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY 'Rank',
Peak,
'All Time Peak',
'ActualÂ gross', 
'AdjustedÂ gross (in 2022 dollars)',
Artist,
'Tour title',
'Year(s)',
Shows,
'Average gross',
'Ref.') AS row_num
FROM messy2
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1
;


CREATE TABLE `messy3` (
  `Rank` int DEFAULT NULL,
  `Peak` text,
  `All Time Peak` text,
  `ActualÂ gross` text,
  `AdjustedÂ gross (in 2022 dollars)` text,
  `Artist` text,
  `Tour title` text,
  `Year(s)` text,
  `Shows` int DEFAULT NULL,
  `Average gross` text,
  `Ref.` json DEFAULT NULL,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT *
FROM messy3
WHERE row_num > 1
;
INSERT INTO messy3
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY 'Rank',
Peak,
'All Time Peak',
'ActualÂ gross', 
'AdjustedÂ gross (in 2022 dollars)',
Artist,
'Tour title',
'Year(s)',
Shows,
'Average gross',
'Ref.') AS row_num
FROM messy2
;

SELECT *
FROM messy3
;

DELETE
FROM messy3
WHERE row_num > 1
;

SELECT DISTINCT Artist
FROM messy3
ORDER BY 1
;

SELECT *
FROM messy3
WHERE Artist LIKE 'Beyonc%';

UPDATE messy3
SET Artist = 'Beyoncé'
WHERE Artist LIKE 'Beyonc%'
;

SELECT *
FROM messy3
;

SELECT DISTINCT ActualÂ gross, TRIM(TRAILING '[e]' FROM ActualÂ gross)
FROM messy3
ORDER BY 1
;
UPDATE messy3
SET ActualÂ gross = TRIM(TRAILING '[e]' FROM ActualÂ gross)
;

SELECT *
FROM messy3
;

UPDATE messy3
SET `Year(s)` = REPLACE(REPLACE(REPLACE(`Year(s)`, 'â', ''), '€', ''), '‟', '')
;

SELECT *
FROM messy3
;

UPDATE messy3
SET `Year(s)` = REPLACE(`Year(s)`, '“', '-')
;

SELECT *
FROM messy3
;

UPDATE messy3
SET `Tour title` = REPLACE(REPLACE(REPLACE(`Tour title`, 'â', ''), '€', ''), '*', '')
;

SELECT *
FROM messy3
;

UPDATE messy3
SET `Tour title` = REPLACE(REPLACE(REPLACE(`Tour title`, 'i', ''), '[4]', ''), '[a]', '')
;

SELECT *
FROM messy3
;

ALTER TABLE messy3
DROP COLUMN Peak,
DROP COLUMN `All Time Peak`
;

SELECT *
FROM messy3
;

SET @rank := 0;
UPDATE messy3
SET `Rank` = (@rank := @rank +1)
ORDER BY Artist
;

SELECT *
FROM messy3
;
DESCRIBE messy3
;
ALTER TABLE messy3
DROP COLUMN row_num
;

SELECT *
FROM messy3
;
ALTER TABLE messy3
ADD COLUMN id INT
AUTO_INCREMENT PRIMARY KEY FIRST
;

SELECT *
FROM messy3
;
ALTER TABLE messy3
DROP COLUMN `Rank`;

ALTER TABLE messy3
CHANGE COLUMN id `Rank` INT NOT NULL
;

SELECT *
FROM messy3
;


