 
 --  CREATE TABLE LAYOFFS_STAGGING
--   LIKE LAYOFFS;

--   select * from  LAYOFFS_STAGGING;

--  INSERT LAYOFFS_STAGGINGlayoffslayoffs_stagging
--  SELECT* FROM layoffs;

-- SELECT*,
-- row_number() OVER(
-- PARTITION BY COMPANY,INDUSTRY,TOTAL_LAID_OFF,PERCENTAGE_LAID_OFF,'DATE') AS ROW_NUM
-- FROM layoffs_stagging;

-- WITH DUPLICATE_CTE AS
-- (
-- SELECT*,
-- row_number() OVER(
-- PARTITION BY COMPANY,INDUSTRY,TOTAL_LAID_OFF,PERCENTAGE_LAID_OFF,'DATE',
-- STAGE,country,funds_raised_millions) AS ROW_NUM
-- FROM layoffs_stagging
-- )
--  SELECT*FROM DUPLICATE_CTE;
--  
--   DATE TABLE  `layoffs_stagging2` (
--   `company` text,
--   `location` text,
--   `industry` text,
--   `total_laid_off` int DEFAULT NULL,
--   `percentage_laid_off` text,
--   `date` text,
--   `stage` text,
--   `country` text,
--   `funds_raised_millions` int DEFAULT NULL,
--   `ROW_NUM` INT 
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- SELECT * FROM layoffs_stagging2;

-- INSERT INTO layoffs_stagging2
-- SELECT*,
-- row_number() OVER(
-- PARTITION BY COMPANY,INDUSTRY,TOTAL_LAID_OFF,PERCENTAGE_LAID_OFF,'DATE',
-- STAGE,country,funds_raised_millions) AS ROW_NUM
-- FROM layoffs_stagging;

--  SET SQL_SAFE_UPDATES = 0;
--  
--  DELETE 
--  FROM layoffs_stagging2
--  WHERE ROW_NUM>1;
--  
--   SELECT * FROM layoffs_stagging2
--  WHERE ROW_NUM>1;

-- SELECT COMPANY,TRIM(COMPANY)
-- FROM layoffs_stagging2;

-- UPDATE LAYOFFS_STAGGING2
-- SET COMPANY= TRIM (COMPANY);

--  SELECT* 
-- FROM layoffs_stagging2
-- WHERE INDUSTRY LIKE 'CRYPTO%';

-- UPDATE LAYOFFS_STAGGING2
-- SET INDUSTRY='CRYPTO'
--  WHERE INDUSTRY LIKE 'CRYPTO%';
--  
--  SELECT  distinct COUNTRY, TRIM(TRAILING '.' FROM COUNTRY)
-- FROM layoffs_stagging2
-- ORDER BY 1; 

-- UPDATE LAYOFFS_STAGGING2
-- SET COUNTRY = TRIM(TRAILING '.' FROM COUNTRY)
-- WHERE COUNTRY LIKE 'UNITED STATES';

-- SELECT `DATE` 
-- FROM layoffs_stagging2;  
--  
--  UPDATE LAYOFFS_STAGGING2
-- SET `DATE` = STR_TO_DATE(`DATE`, '%m/%d/%Y');

-- ALTER TABLE layoffs_stagging2
-- MODIFY COLUMN `date` DATE;

--   SELECT *
--  FROM layoffs_stagging2
--  WHERE total_laid_off IS NULL
--  AND percentage_laid_off IS NULL;
--   
--   SELECT*
--   FROM layoffs_stagging2
--   where INDUSTRY IS NULL
--   OR INDUSTRY='';
--   
--   SELECT*
--   FROM layoffs_stagging2
--   WHERE COMPANY='AIRBNB';
--   
-- SELECT TI.INDUSTRY,T2.INDUSTRY
-- FROM layoffs_stagging2 T1
-- JOIN layoffs_stagging2 T2
--       ON T1.COMPANY=T2.COMPANY
--       WHERE(T1.INDUSTRY IS NULL OR T1.INDUSTRY='')
--       AND T2.INDUSTRY IS NOT NULL ;
--       
--       UPDATE LAYOFFS_STAGGING2 T1
--       JOIN LAYOFFS_STAGGING2 T2
--            ON T1.COMPANY= T2.COMPANY
--            SET T1.INDUSTRY=T2.INDUSTRY
--            WHERE T1.INDUSTRY IS NULL 
--       AND T2.INDUSTRY IS NOT NULL ; 
--       
--       select * from layoffs_stagging2;
--       
--   select*
--       from layoffs_stagging2
--       where total_laid_off is null
--       and percentage_laid_off is null;
--       
--       DELETE 
--       FROM layoffs_stagging2
--       WHERE total_laid_off IS NULL
--       AND percentage_laid_off IS NULL;
--       
--       select*
--       from layoffs_stagging2;
--       
--       ALTER TABLE layoffs_stagging2
--       DROP COLUMN ROW_NUM;



  
   