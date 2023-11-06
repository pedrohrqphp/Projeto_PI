DELIMITER $$

CREATE PROCEDURE sp_agendamentoInsert(
	IN id_cli int,
	IN id_func int,
	IN servico varchar(50),
	IN profissional varchar(50),
	IN valor decimal(10,2),
	IN dt_agend date,
	IN hr_agend time,
	IN status_agend varchar(30))
BEGIN
	INSERT INTO agendamento
		(id_cli, id_func, nm_servico, nm_profissional, 
        val_servico, dt_agend, hr_agend, status_agend)
	VALUES
		(id_cli, id_func, servico, profissional, 
        valor, dt_agend, hr_agend, status_agend);
END $$

DELIMITER ;

-- CALL sp_agendamentoInsert();


DELIMITER $$

CREATE PROCEDURE sp_agendamentoUpdate(
	IN cd_agend int,
	IN id_cli int,
	IN id_func int,
	IN servico varchar(50),
	IN profissional varchar(50),
	IN valor decimal(10,2),
	IN dt_agend date,
	IN hr_agend time,
	IN status_agend varchar(30))
BEGIN
	UPDATE agendamento
	SET
		id_cli = id_cli,
        id_func = id_func,
        nm_servico = servico,
        nm_profissional = profissional, 
        val_servico = valor,
        dt_agend = dt_agend,
        hr_agend = hr_agend,
        status_agend = status_agend
	WHERE
		cd_agend = cd_agend;
END $$

DELIMITER ;

-- CALL sp_agendamentoUpdate();


DELIMITER $$

CREATE PROCEDURE sp_agendamentoDelete(
	IN cd_agend int)
BEGIN
	DELETE FROM agendamento
	WHERE cd_agend = cd_agend;
END $$

DELIMITER ;

-- CALL sp_agendamentoDelete();
