DELIMITER $$

CREATE PROCEDURE sp_gerenteInsert(
	IN nome varchar(50),
	IN cargo varchar(30),
	IN salario decimal(10,2),
	IN comissao decimal(10,2),
	IN id_ger int)
BEGIN
	INSERT INTO funcionario
		(nm_func, cargo_func, salario_func, comissao)
	VALUES
		(nome, cargo, salario, comissao);
	
	INSERT INTO funcionario_gerente
		(id_func_ger)
	VALUES
		(id_ger);
END $$

DELIMITER ;

-- CALL sp_gerenteInsert();


DELIMITER $$

CREATE PROCEDURE sp_gerenteUpdate(
	IN id_func int,
	IN nome varchar(50),
	IN cargo varchar(30),
	IN salario decimal(10,2),
	IN comissao decimal(10,2))
BEGIN
	UPDATE funcionario
	SET 
		nm_func = nome, 
		cargo_func = cargo,
		salario_func = salario,
		comissao = comissao
	WHERE id_func = id_func;
END $$

DELIMITER ;

-- CALL sp_gerenteUpdate();


DELIMITER $$

CREATE PROCEDURE sp_gerenteDelete(
	IN id_func int,
    IN id_ger int)
BEGIN
	DELETE FROM funcionario
	WHERE id_func = id_func;
    
    DELETE FROM funcionario_gerente
	WHERE id_func_ger = id_ger;
END $$

DELIMITER ;

-- CALL sp_gerenteDelete();
