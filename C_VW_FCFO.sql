
CREATE OR REPLACE VIEW bronze.C_VW_FCFO AS

WITH fcfo AS (
	SELECT 	
		* 
	FROM 
		landing.C_VW_FCFO 
)

SELECT

CODCFO                            AS ID_CFO,
CAST(CODCOLIGADA AS INT)          AS ID_COLIGADA,
CGCCFO                            AS COD_CGCCFO,
INSCRESTADUAL                     AS COD_INSCRESTADUAL,
NOME                              AS NOM_CLIENTE,
NOMEFANTASIA                      AS NOM_FANTASIA_CLIENTE,
CIDADE                            AS NOM_CIDADE,
BAIRRO                            AS NOM_BAIRRO,
RUA                               AS DES_RUA,
COMPLEMENTO                       AS DES_COMPLEMENTO,
NUMERO                            AS NUM_NUMERO,
CAST(DATA_ALTERACAO AS DATETIME) AS DAT_ALTERACAO,
CAST(TIME_STAMP AS TIMESTAMP)     AS DAT_CARGA

FROM 
	fcfo