DELIMITER $$

CREATE PROCEDURE sp_clienteInsert02(
	IN indicacao varchar(50),
    IN celular int,
    IN observacao varchar(200),
    IN tipo_observacao varchar(50),
	IN id_cli int)
BEGIN
	INSERT INTO cliente_indicacao
		(indicacao_cli, id_cli)
	VALUES
		(indicacao, id_cli);
        
	INSERT INTO cliente_tel_celular
		(num_tel_celular, id_cli)
	VALUES
		(celular, id_cli);

	INSERT INTO cliente_observacao
		(observacao, tipo_observacao, id_cli)
	VALUES
		(observacao, tipo_observacao, id_cli);
END $$

DELIMITER ;

-- CALL sp_clienteInsert02();


DELIMITER $$

CREATE PROCEDURE sp_clienteUpdate02(
	IN indicacao varchar(50),
    IN celular int,
    IN observacao varchar(200),
    IN tipo_observacao varchar(50),
	IN id_cli int)
BEGIN
	UPDATE cliente
    SET
		indicacao_cli = indicacao,
		num_tel_celular = celular,
        observacao_cli = observacao,
        tipo_observacao = tipo_observacao,
        id_cli = id_cli
	WHERE
		id_cli = id_cli;
END $$

DELIMITER ;

-- CALL sp_clienteUpdate02();
