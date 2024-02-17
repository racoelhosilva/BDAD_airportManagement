----------------------------
-- Initial Configurations --
----------------------------

-- Drop existing tables
DROP TABLE IF EXISTS passageiro;
DROP TABLE IF EXISTS companhiaAerea;
DROP TABLE IF EXISTS local;
DROP TABLE IF EXISTS aeroporto;
DROP TABLE IF EXISTS portaoEmbarque;
DROP TABLE IF EXISTS carrosselMalas;
DROP TABLE IF EXISTS voo;
DROP TABLE IF EXISTS vooPartida;
DROP TABLE IF EXISTS vooChegada;
DROP TABLE IF EXISTS bilhete;
DROP TABLE IF EXISTS membroTripulacao;
DROP TABLE IF EXISTS especialidade;
DROP TABLE IF EXISTS servico;


-- Basic Settings
.mode columns
.headers on
PRAGMA foreign_keys=ON;

------------------------------
-- Database Schema Creation --
------------------------------

-- Passageiro
CREATE TABLE passageiro (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL,
    dataNascimento DATE NOT NULL,
    nacionalidade VARCHAR(255) NOT NULL,
    documento VARCHAR(255) NOT NULL
);

-- Companhia Aérea
CREATE TABLE companhiaAerea (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL,
    codigo VARCHAR(255) NOT NULL,
    paisOrigem VARCHAR(255),
    dataInauguracao DATE
);

-- Local
CREATE TABLE local (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cidade VARCHAR(255) NOT NULL,
    pais VARCHAR(255) NOT NULL
);

-- Aeroporto
CREATE TABLE aeroporto (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL,
    codigo VARCHAR(255) NOT NULL,
    numeroPistas INTEGER,
    dataInauguracao DATE,
    altitude INTEGER NOT NULL,
    lid REFERENCES local(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Portão de Embarque
CREATE TABLE portaoEmbarque (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    terminal VARCHAR(255) NOT NULL,
    codigo VARCHAR(255) NOT NULL
);

-- Carrossel de Malas
CREATE TABLE carrosselMalas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo CHAR(255) NOT NULL,
    capacidade INTEGER NOT NULL
);

-- Voo
CREATE TABLE voo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    estado VARCHAR(255) NOT NULL CONSTRAINT estadosVooPossiveis CHECK (estado in ('Terminado', 'Em Curso', 'Próximo', 'Por Realizar')),
    duracao TIME NOT NULL,
    altitudeMedia INTEGER,
    companhiaId REFERENCES companhiaAerea(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Voo de Partida
CREATE TABLE vooPartida (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vooId REFERENCES voo(id) ON UPDATE CASCADE ON DELETE CASCADE,
    horaPartida TIME NOT NULL,
    dataPartida DATE NOT NULL,
    portaoId REFERENCES portaoEmbarque(id) ON UPDATE CASCADE ON DELETE CASCADE,
    aeroportoId REFERENCES aeroporto(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Voo de Chegada
CREATE TABLE vooChegada (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vooId REFERENCES voo(id) ON UPDATE CASCADE ON DELETE CASCADE,
    horaChegada TIME NOT NULL,
    dataChegada DATE NOT NULL,
    carrosselId REFERENCES carrosselMalas(id) ON UPDATE CASCADE ON DELETE CASCADE,
    aeroportoId REFERENCES aeroporto(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Bilhete
CREATE TABLE bilhete (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    classe VARCHAR(255) NOT NULL CONSTRAINT classesPossiveis CHECK (classe in ('Executiva', 'Primeira', 'Comercial')),
    lugar VARCHAR(255) NOT NULL,
    dataCompra DATE NOT NULL,
    prioritario BOOLEAN NOT NULL,
    horaEmbarque TIME NOT NULL,
    estado VARCHAR(255) NOT NULL CONSTRAINT estadosPossiveis CHECK (estado in ('Check-In', 'Segurança', 'A Embarcar', 'Em Voo', 'Completo')),
    passageiroId REFERENCES passageiro(id) ON UPDATE CASCADE ON DELETE CASCADE,
    vooId REFERENCES voo(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Membro da Tripulação
CREATE TABLE membroTripulacao (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL,
    dataNascimento DATE NOT NULL,
    nacionalidade VARCHAR(255) NOT NULL,
    documento VARCHAR(255) NOT NULL,
    formacao VARCHAR(255) NOT NULL CONSTRAINT formacoesPossiveis CHECK (formacao in ('Piloto', 'Comissário de Bordo')),
    companhiaId REFERENCES companhiaAerea(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Especialidade
CREATE TABLE especialidade (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL CONSTRAINT especialidadesPossiveis CHECK (nome in ('Piloto', 'Comissário de Bordo', 'Co-Piloto')),
    tempoMaximo TIME
);

-- Serviço
CREATE TABLE servico (
    vooId REFERENCES voo(id) ON UPDATE CASCADE ON DELETE CASCADE,
    tripulacaoId REFERENCES membroTripulacao(id) ON UPDATE CASCADE ON DELETE CASCADE,
    especialidadeId REFERENCES especialidade(id) ON UPDATE CASCADE ON DELETE CASCADE,
    horaInicio TIME NOT NULL,
    horaFim TIME NOT NULL,
    PRIMARY KEY (vooId, tripulacaoId)
);
