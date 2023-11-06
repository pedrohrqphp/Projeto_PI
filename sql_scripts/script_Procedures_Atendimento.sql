DELIMITER $$

CREATE PROCEDURE sp_atendimentoInsert(
	IN cd_agend int,
	IN id_func int,
	IN dt_atend date,
	IN hr_atend time,
	IN forma_pagamento varchar(50),
	IN status_atend varchar(30))
BEGIN
	INSERT INTO atendimento
		(cd_agend, id_func, dt_atend, hr_atend, 
        forma_pagamento, status_atend)
	VALUES
		(cd_agend, id_func, dt_atend, hr_atend, 
        forma_pagamento, status_atend);
END $$

DELIMITER ;

-- CALL sp_atendimentoInsert();


DELIMITER $$

CREATE PROCEDURE sp_atendimentoUpdate(
	IN cd_atend int,
	IN cd_agend int,
	IN id_func int,
	IN dt_atend date,
	IN hr_atend time,
	IN forma_pagamento varchar(50),
	IN status_atend varchar(30))
BEGIN
	UPDATE atendimento
	SET
		cd_agend = cd_agend,
        id_func = id_func,
        dt_atend = dt_atend,
        hr_atend = hr_atend,
		forma_pagamento = forma_pagamento,
        status_atend = status_atend
	WHERE
		cd_atend = cd_atend;
END $$

DELIMITER ;

-- CALL sp_atendimentoUpdate();


DELIMITER $$

CREATE PROCEDURE sp_atendimentoDelete(
	IN cd_atend int)
BEGIN
	DELETE FROM atendimento
	WHERE cd_atend = cd_atend;
END $$

DELIMITER ;

-- CALL sp_atendimentoDelete();
