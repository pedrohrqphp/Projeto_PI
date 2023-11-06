CREATE DATABASE IF NOT EXISTS hairly_manager;
USE hairly_manager;

CREATE TABLE funcionario(
	id_func int PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nm_func varchar(50) NOT NULL,
	cargo_func varchar(30) NOT NULL,
	salario_func decimal(10,2) NOT NULL,
	comissao decimal(10,2) NULL,
	id_func_ger int NOT NULL,
	FOREIGN KEY(id_func_ger) REFERENCES funcionario_gerente(id_func_ger)
);

CREATE TABLE funcionario_gerente(
	id_func_ger int PRIMARY KEY AUTO_INCREMENT NOT NULL
);

CREATE TABLE cep(
	id_cep int PRIMARY KEY NOT NULL
);

CREATE TABLE cliente(
	id_cli int PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nm_cli varchar(50) NOT NULL,
	apelido_cli varchar(20) NOT NULL,
	cpf_cli int(11) UNIQUE NOT NULL,
	id_cep int NULL,
	FOREIGN KEY(id_cep) REFERENCES cep(id_cep)
);

CREATE TABLE cliente_indicacao(
	cd_cli_indica int PRIMARY KEY AUTO_INCREMENT NOT NULL,
	indicacao_cli varchar(50) NULL,
	id_cli int NULL,
	FOREIGN KEY(id_cli) REFERENCES cliente(id_cli)
);

CREATE TABLE cliente_tel_celular(
	cd_cli_tel_celular int PRIMARY KEY AUTO_INCREMENT NOT NULL,
	num_tel_celular int NOT NULL,
	id_cli int NOT NULL,
	FOREIGN KEY(id_cli) REFERENCES cliente(id_cli)
);

CREATE TABLE cliente_endereco(
	cd_cli_endereco int PRIMARY KEY AUTO_INCREMENT NOT NULL,
	rua varchar(50) NULL,
	numero int NULL,
	bairro varchar(50) NULL,
	complemento varchar(50) NULL,
	cidade varchar(50) NULL,
	id_cli int NULL,
	FOREIGN KEY(id_cli) REFERENCES cliente(id_cli)
);

CREATE TABLE cliente_observacao(
	cd_cli_observa int PRIMARY KEY AUTO_INCREMENT NOT NULL,
	observacao_cli varchar(200) NULL,
	tipo_observacao varchar(50) NULL,
	id_cli int NULL,
	FOREIGN KEY(id_cli) REFERENCES cliente(id_cli)
);

CREATE TABLE agendamento(
	cd_agend int PRIMARY KEY AUTO_INCREMENT NOT NULL,
	id_cli int NOT NULL,
	id_func int NOT NULL,
	nm_servico varchar(50) NOT NULL,
	nm_profissional varchar(50) NOT NULL,
	val_servico decimal(10,2) NOT NULL,
	dt_agend date NOT NULL,
	hr_agend time NOT NULL,
	status_agend varchar(30) NOT NULL,
	FOREIGN KEY(id_cli) REFERENCES cliente(id_cli),
	FOREIGN KEY(id_func) REFERENCES funcionario(id_func)
);

CREATE TABLE atendimento(
	cd_atend int PRIMARY KEY AUTO_INCREMENT NOT NULL,
	cd_agend int NOT NULL,
	id_func int NOT NULL,
	dt_atend date NOT NULL,
	hr_atend time NOT NULL,
	forma_pagamento varchar(50) NOT NULL,
	status_atend varchar(30) NOT NULL,
	FOREIGN KEY(cd_agend) REFERENCES agendamento(cd_agend),
	FOREIGN KEY(id_func) REFERENCES funcionario(id_func)
);
