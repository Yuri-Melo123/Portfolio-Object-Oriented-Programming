DROP DATABASE IF EXISTS sistema_automotivo;
CREATE DATABASE sistema_automotivo;
USE sistema_automotivo;

DROP TABLE IF EXISTS veiculo;
CREATE TABLE veiculo (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(100) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    ano INT NOT NULL,
    cor VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quilometragem DECIMAL(10,2) NOT NULL,
    status VARCHAR(50) NOT NULL
);

INSERT INTO veiculo (modelo, marca, ano, cor, preco, quilometragem, status) VALUES
('Civic', 'Honda', 2020, 'Prata', 95000.0, 30000.0, 'Disponível'),
('Corolla', 'Toyota', 2019, 'Preto', 91000.0, 45000.0, 'Vendido'),
('Gol', 'Volkswagen', 2018, 'Branco', 45000.0, 60000.0, 'Disponível'),
('Onix', 'Chevrolet', 2021, 'Vermelho', 72000.0, 15000.0, 'Disponível'),
('HB20', 'Hyundai', 2022, 'Azul', 80000.0, 12000.0, 'Manutenção'),
('Hilux', 'Toyota', 2017, 'Prata', 60000.0, 12000.0, 'Manutenção');
