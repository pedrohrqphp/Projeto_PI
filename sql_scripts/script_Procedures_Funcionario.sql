DELIMITER $$

CREATE PROCEDURE sp_funcionarioInsert(
	IN nome varchar(50),
	IN cargo varchar(30),
	IN salario decimal(10,2),
	IN comissao decimal(10,2),
	IN id_ger int)
BEGIN
	INSERT INTO funcionario
		(nm_func, cargo_func, salario_func, comissao, id_func_ger)
	VALUES
		(nome, cargo, salario, comissao, id_ger);
END $$

DELIMITER ;

-- CALL sp_funcionarioInsert();


DELIMITER $$

CREATE PROCEDURE sp_funcionarioUpdate(
	IN id_func int,
	IN nome varchar(50),
	IN cargo varchar(30),
	IN salario decimal(10,2),
	IN comissao decimal(10,2),
	IN id_ger int)
BEGIN
	UPDATE funcionario
	SET 
		nm_func = nome, 
		cargo_func = cargo,
		salario_func = salario,
		comissao = comissao,
		id_func_ger = id_ger
	WHERE id_func = id_func;
END $$

DELIMITER ;

-- CALL sp_funcionarioUpdate();


DELIMITER $$

CREATE PROCEDURE sp_funcionarioDelete(
	IN id int)
BEGIN
	DELETE FROM funcionario
	WHERE id_func = id;
END $$

DELIMITER ;

-- CALL sp_funcionarioDelete();
