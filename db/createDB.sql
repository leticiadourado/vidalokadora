CREATE DATABASE criar;

CREATE TABLE criar.cliente (
    idCliente INT(5) NOT NULL AUTO_INCREMENT,
    nomeCliente VARCHAR(255) NOT NULL,
    dataCriacao TIMESTAMP,
    dataUltimaLocacao DATETIME NULL,
    PRIMARY KEY (idCliente)
) ENGINE=InnoDB;

CREATE TABLE criar.telefoneCliente (
    idTelefone INT(5) NOT NULL AUTO_INCREMENT,
    idCliente INT(5) NOT NULL,
    ddd INT(2) NOT NULL,
    telefone INT(9) NOT NULL,
    PRIMARY KEY (idTelefone)
) ENGINE=InnoDB;

CREATE TABLE criar.midia (
    idMidia INT(5) NOT NULL AUTO_INCREMENT,
    nomeMidia VARCHAR(255) NOT NULL,
    valor FLOAT NOT NULL,
    indDisponivel BIT DEFAULT 1,
    qtdDisponivel INT(3) NOT NULL,
    PRIMARY KEY (idMidia)
) ENGINE=InnoDB;

CREATE TABLE criar.locacao (
    idLocacao INT(5) NOT NULL AUTO_INCREMENT,
    idCliente INT(5) NOT NULL,
    dataLocacao TIMESTAMP,
    dataDevolucao DATETIME,
    indDevolvido BIT(1) DEFAULT 0,
    PRIMARY KEY (idLocacao)
) ENGINE=InnoDB;

CREATE TABLE criar.locacaoMidia (
    idLocacaoMidia INT(5) NOT NULL AUTO_INCREMENT,
    idLocacao INT(5) NOT NULL,
    idMidia INT(5) NOT NULL,
    qtdMidia INT(3) NOT NULL,
    valorMidia FLOAT NOT NULL,
    PRIMARY KEY (idLocacaoMidia)
) ENGINE=InnoDB;

CREATE TABLE criar.reserva (
    idReserva INT(5) NOT NULL AUTO_INCREMENT,
    idCliente INT(5) NOT NULL,
    dataReserva TIMESTAMP,
    indExpirada BIT(1) DEFAULT 0,
    PRIMARY KEY (idReserva)
) ENGINE=InnoDB;

CREATE TABLE criar.reservaMidia (
    idReservaMidia INT(5) NOT NULL AUTO_INCREMENT,
    idReserva INT(5) NOT NULL,
    idMidia INT(5) NOT NULL,
    qtdMidia INT(3) NOT NULL,
    valorMidia FLOAT,
    PRIMARY KEY (idReservaMidia)
) ENGINE=InnoDB;

-- Preenchendo algumas mídias
INSERT INTO midia (nomeMidia, valor, indDisponivel, qtdDisponivel) 
VALUES ('Três Homens em Conflito', 3.99, 1, 3),
('A Viagem de Chihiro', 3.99, 1, 1),
('A Nova Onda do Imperador', 2.45, 1, 2),
('Psicose', 3.99, 1, 3),
('Irmão Urso', 2.45, 1, 3),
('Spirit: O Corcel Indomável', 2.45, 1, 2);