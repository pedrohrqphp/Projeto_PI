DELIMITER $$

CREATE PROCEDURE sp_enderecoInsert(
	IN rua varchar(50),
	IN numero int,
	IN bairro varchar(50),
    IN complemento varchar(50),
    IN cidade varchar(50),
    IN cep int(8),
    IN id_cli int)
BEGIN
	INSERT INTO endereco
		(rua, numero, bairro, complemento, cidade, cep, id_cli)
	VALUES
		(rua, numero, bairro, complemento, cidade, cep, id_cli);
END $$

DELIMITER ;

-- CALL sp_enderecoInsert();


DELIMITER $$

CREATE PROCEDURE sp_enderecoUpdate(
	IN rua varchar(50),
	IN numero int,
	IN bairro varchar(50),
    IN complemento varchar(50),
    IN cidade varchar(50),
	IN cep int(8),
    IN id_cli int)
BEGIN
	UPDATE endereco
	SET
		rua = rua,
		numero = numero,
		bairro = bairro,
		complemento = complemento,
		cidade = cidade,
        cep = cep,
		id_cli = id_cli
	WHERE
		id_cli = id_cli;
END $$

DELIMITER ;

-- CALL sp_enderecoUpdate();


DELIMITER $$

CREATE PROCEDURE sp_enderecoDelete(
	IN id int)
BEGIN
	DELETE FROM cliente_endereco
    WHERE id_cli = id;
END $$

DELIMITER ;

-- CALL sp_enderecoDelete();
