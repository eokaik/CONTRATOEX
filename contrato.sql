CREATE DATABASE CONTRATO;

USE CONTRATO;
CREATE TABLE municipio(
    cd_municipio INT(11) PRIMARY KEY,
    ds_municipio VARCHAR(50)
);

CREATE TABLE ramo(
    cd_ramo INT(11) PRIMARY KEY,
    ds_ramo VARCHAR(50)
);

CREATE TABLE tipo(
    cd_tipo INT(11) PRIMARY KEY,
    ds_tipo VARCHAR(50)
);
CREATE TABLE assinante(
    cd_assinate INT(11) PRIMARY KEY,
    nome VARCHAR(50),
    cd_ramo INT(11),
    cd_tipo INT(11),
    FOREIGN KEY (cd_ramo) REFERENCES ramo(cd_ramo),
    FOREIGN KEY (cd_tipo) REFERENCES tipo(cd_tipo)
);
CREATE TABLE endereco(
    cd_endereco INT AUTO_INCREMENT PRIMARY KEY,
    ds_endereco VARCHAR(50) NOT NULL,
    complemento VARCHAR(50),
    bairro VARCHAR(50),
    CEP VARCHAR(50),
    cd_assinate INT(11),
    cd_municipio INT(11),
    FOREIGN KEY (cd_assinate) REFERENCES assinante(cd_assinate),
    FOREIGN KEY (cd_municipio) REFERENCES municipio(cd_municipio)
);
CREATE TABLE telefone(
    cd_fone INT AUTO_INCREMENT PRIMARY KEY,
    ddd VARCHAR(3) NOT NULL,
    n_fone VARCHAR(10) NOT NULL,
    cd_endereco INT NOT NULL,
    FOREIGN KEY (cd_endereco) REFERENCES endereco(cd_endereco)
);