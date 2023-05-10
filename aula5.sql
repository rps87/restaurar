CREATE DATABASE loja;
USE loja;
SHOW TABLES;
CREATE TABLE IF NOT EXISTS produtos(
    idProd INT(11) NOT NULL PRIMARY KEY,
    nomeProd VARCHAR(50) NOT NULL,
    estoque INT(11) NOT NULL,
    valor FLOAT(11) NOT NULL
);
INSERT INTO produtos (idProd, nomeProd, estoque, valor) VALUES
    (10, 'Teclado USB', 10, '29.99'),
    (11, 'Teclado USB Gamer', 10, '79.99'),
    (12, 'Teclado Sem Fio', 10, '99.99'),
    (20, 'Mouse USB', 15, '9.99'),
    (21, 'Mouse USB Gamer', 15, '39.99'),
    (22, 'Mouse Sem Fio', 15, '59.99'),
    (30, 'Fone Celular P2', 20, '19.99'),
    (31, 'Fone Celular USB', 20, '24.99'),
    (32, 'Fone Sem Fio', 20, '69.99'),
    (33, 'Headphone Gamer', 20, '129.99'),
    (40, 'Monitor VGA 22"', 5, '249.99'),
    (41, 'Monitor VGA 24"', 5, '349.99'),
    (42, 'Monitor HDMI 22"', 5, '449.99'),
    (43, 'Monitor HDMI 24"', 5, '649.99'),
    (50, 'Pendrive 8GB', 30, '39.99'),
    (51, 'Pendrive 16GB', 30, '59.99'),
    (52, 'Pendrive 32GB', 30, '99.99'),
    (53, 'Pendrive 64GB', 30, '139.99');
CREATE TABLE nada (
    idNada INT(11) AUTO_INCREMENT PRIMARY KEY,
    nada VARCHAR(20)
);
SELECT * FROM nada;
DROP TABLE nada;
CREATE TABLE IF NOT EXISTS clientes(
    idCli INT(11) AUTO_INCREMENT PRIMARY KEY,
    nomeCli VARCHAR(50) NOT NULL,
    telCli VARCHAR(10) NOT NULL
);
INSERT INTO clientes (nomeCli, telCli) VALUES
    ('Daniel', '91111-1111'),
    ('Enzo', '92222-2222'),
    ('Iris', '93333-3333'),
    ('Maxwell', '94444-4444'),
    ('Melissa', '95555-5555'),
    ('Raphael', '90000-0000');
SELECT * FROM clientes;
DELETE FROM clientes WHERE idCli = 6;
INSERT INTO clientes (nomeCli, telCli) VALUES
    ('Raphael', '90000-0000');

CREATE TABLE IF NOT EXISTS pedidos (
    idPed INT(11) AUTO_INCREMENT PRIMARY KEY,
    idProd INT(11) NOT NULL,
    quant INT(11) NOT NULL,
    valTotPed FLOAT(11) NOT NULL,
    FOREIGN KEY (idProd) REFERENCES produtos(idProd)
);

INSERT INTO pedidos (idProd,quant,valTotPed) VALUES
    (11, 2, '159.98');

SELECT * FROM pedidos;

CREATE TABLE IF NOT EXISTS vendas (
    idVend INT(11) AUTO_INCREMENT PRIMARY KEY,
    idPed INT(11) NOT NULL,
    idCli INT(11) NOT NULL,
    valVenda INT(11) NOT NULL,
    FOREIGN KEY (idPed) REFERENCES pedidos(idPed),
    FOREIGN KEY (idCli) REFERENCES clientes(idCli)
);

INSERT INTO vendas (idPed,idCli,valVenda) VALUES
    (1, 6, '159.98');

