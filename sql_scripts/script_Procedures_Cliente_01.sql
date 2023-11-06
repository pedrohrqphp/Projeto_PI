DELIMITER $$

CREATE PROCEDURE sp_clienteInsert01(
	IN nome varchar(50),
	IN apelido varchar(20),
	IN cpf int(11))
BEGIN
	INSERT INTO cliente
		(nm_cli, apelido_cli, cpf_cli)
	VALUES
		(nome, apelido, cpf);
END $$

DELIMITER ;

-- CALL sp_clienteInsert01();


DELIMITER $$

CREATE PROCEDURE sp_clienteUpdate01(
	IN id int,
	IN nome varchar(50),
	IN apelido varchar(20),
	IN cpf int(11))
BEGIN
	UPDATE cliente
    SET
		nm_cli = nome,
		apelido_cli = apelido, 
		cpf_cli = cpf
	WHERE
		id_cli = id;
END $$

DELIMITER ;

-- CALL sp_clienteUpdate01();


DELIMITER $$

CREATE PROCEDURE sp_clienteDelete01(
	IN id int)
BEGIN
	DELETE FROM cliente
	WHERE id_cli = id;
    
    DELETE FROM cliente_indicacao
	WHERE id_cli = id;

	DELETE FROM cliente_tel_celular
    WHERE id_cli = id;

    DELETE FROM cliente_observacao
    WHERE id_cli = id;
    
    DELETE FROM cliente_endereco
    WHERE id_cli = id;
END $$

DELIMITER ;

-- CALL sp_clienteDelete01();
