CREATE TABLE IF NOT EXISTS warga (
	nama 			VARCHAR(6),
	jenis_kelamin 	VARCHAR(6),
	status 			VARCHAR(7),
	PRIMARY KEY (nama, jenis_kelamin, status)
		);

-- CREATE VIEW vw_warga AS
-- -- SELECT *
-- -- FROM warga;
-- DROP VIEW IF EXISTS vw_seluruh_warga;
SELECT 	nama,
		jenis_kelamin,
		status,

IF(jenis_kelamin="pria",
	IF(status="sendiri",
		"PERJAKA",
		IF(status="kawin",
			"MENIKAH",
			"DUDA"
		)
	),

	IF(status="sendiri",
		"PERAWAN",
		IF(status="kawin",
			"MENIKAH",
			"JANDA"
			)
		)
	) AS KETERANGAN_IF,

	CASE jenis_kelamin
		WHEN "pria" THEN
		CASE status
			WHEN "sendiri"	THEN "PERJAKA"
			WHEN "kawin" 	THEN "MENIKAH"
			ELSE "DUDA"
		END
ELSE	
		CASE status
			WHEN "sendiri"	THEN "PERAWAN"
			WHEN "kawin" 	THEN "MENIKAH"
			ELSE "JANDA"
		END
END AS KETERANGAN_CASE
FROM warga;
IF(jenis_kelamin="pria",
		CASE status
				WHEN "sendiri"	THEN "PERJAKA"
				WHEN "kawin" 	THEN "MENIKAH"
				ELSE "DUDA"
			END
		CASE status
				WHEN "sendiri"	THEN "PERAWAN"
				WHEN "kawin" 	THEN "MENIKAH"
				ELSE "JANDA"
			END		
)	AS KETERANGAN_IF_CASE