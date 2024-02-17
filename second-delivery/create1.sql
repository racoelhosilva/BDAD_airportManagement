PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS passageiro;
CREATE TABLE passageiro (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL,
    dataNascimento DATE NOT NULL,
    nacionalidade VARCHAR(255) NOT NULL,
    documento VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS companhiaAerea;
CREATE TABLE companhiaAerea (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL,
    codigo VARCHAR(255) NOT NULL,
    paisOrigem VARCHAR(255) NOT NULL,
    dataInauguracao DATE NOT NULL
);

DROP TABLE IF EXISTS local;
CREATE TABLE local (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cidade VARCHAR(255) NOT NULL,
    pais VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS aeroporto;
CREATE TABLE aeroporto (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL,
    numeroPistas INTEGER NOT NULL,
    dataInauguracao DATE NOT NULL,
    altitude INTEGER NOT NULL,
    lid REFERENCES local(id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS portaoEmbarque;
CREATE TABLE portaoEmbarque (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    terminal VARCHAR(255) NOT NULL,
    codigo VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS carrosselMalas;
CREATE TABLE carrosselMalas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo VARCHAR(255) NOT NULL,
    capacidade INTEGER NOT NULL
);

DROP TABLE IF EXISTS voo;
CREATE TABLE voo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    estado VARCHAR(255) NOT NULL,
    duracao TIME NOT NULL,
    altitudeMedia INTEGER NOT NULL,
    companhiaId REFERENCES companhiaAerea(id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS vooPartida;
CREATE TABLE vooPartida (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vooId REFERENCES voo(id) ON UPDATE CASCADE,
    horaPartida TIME NOT NULL,
    dataPartida DATE NOT NULL,
    portaoId REFERENCES portaoEmbarque(id) ON UPDATE CASCADE,
    aeroportoId REFERENCES aeroporto(id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS vooChegada;
CREATE TABLE vooChegada (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vooId REFERENCES voo(id) ON UPDATE CASCADE,
    horaChegada TIME NOT NULL,
    dataChegada DATE NOT NULL,
    carrosselId REFERENCES carrosselMalas(id) ON UPDATE CASCADE,
    aeroportoId REFERENCES aeroporto(id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS bilhete;
CREATE TABLE bilhete (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    classe VARCHAR(255) NOT NULL,
    lugar VARCHAR(255) NOT NULL,
    dataCompra DATE NOT NULL,
    prioritario BOOLEAN NOT NULL,
    horaEmbarque TIME NOT NULL,
    estado VARCHAR(255) NOT NULL,
    passageiroId REFERENCES passageiro(id) ON UPDATE CASCADE,
    vooId REFERENCES voo(id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS membroTripulacao;
CREATE TABLE membroTripulacao (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL,
    dataNascimento DATE NOT NULL,
    nacionalidade VARCHAR(255) NOT NULL,
    documento VARCHAR(255) NOT NULL,
    formacao VARCHAR(255) NOT NULL,
    copanhiaId REFERENCES companhiaAerea(id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS especialidade;
CREATE TABLE especialidade (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL,
    dataNascimento DATE NOT NULL,
    tempoMaximo TIME NOT NULL
);

DROP TABLE IF EXISTS servico;
CREATE TABLE servico (
    vooId REFERENCES voo(id) ON UPDATE CASCADE,
    tripulacaoId REFERENCES tripulacao(id) ON UPDATE CASCADE,
    especialidadeId REFERENCES especialidade(id) ON UPDATE CASCADE,
    horaInicio TIME NOT NULL,
    horaFim TIME NOT NULL,
    duracao TIME NOT NULL,
    CHECK (duracao = horaFim - horaInicio)
    PRIMARY KEY (vooId, tripulacaoId, especialidadeId)
);


