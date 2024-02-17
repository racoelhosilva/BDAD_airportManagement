----------------------
-- Value Insertions --
----------------------

-- Basic Settings:
.mode columns
.headers on
PRAGMA foreign_keys=ON;

-- passageiro(id, nome, dataNascimento, nacionalidade, documento)
INSERT INTO passageiro VALUES 
(1, 'Joaquim da Silva Almeida', '1967-05-26', 'Portugues', 'P<PRTALMEIDA<<JOAQUIM<DA<SILVA<<<<<<<<<<<<<<3609918420PRT6705260M1601013<<<<<<<<<<<<<<04'),
(2, 'Crystal Mcaffrey', '1968-07-02', 'Escocesa', 'P<SCTMCAFFREY<<CRYSTAL<<<<<<<<<<<<<<<<<<<<<<2887409549SCT6807027F2006013<<<<<<<<<<<<<<04'),
(3, 'Rafa Palacios Beltrán', '1988-12-08', 'Espanhol', 'P<ESPBELTRÁN<<RAFA<PALACIOS<<<<<<<<<<<<<<<<<4861273869ESP8812083F1909203<<<<<<<<<<<<<<02'),
(4, 'Nicolas Pereira Cunha', '1996-10-28', 'Portugues', 'P<PRTCUNHA<<NICOLAS<PEREIRA<<<<<<<<<<<<<<<<<2369478122PRT9610286F1909203<<<<<<<<<<<<<<02'),
(5, 'Vitoria Alves Melo', '1964-03-14', 'Portugues', 'P<PRTMELO<<VITORIA<ALVES<<<<<<<<<<<<<<<<<<<<4517461271PRT6403142F1909203<<<<<<<<<<<<<<04'),
(6, 'Luisa Santos Correia', '1993-07-21', 'Portugues', 'P<PRTCORREIA<<LUISA<SANTOS<<<<<<<<<<<<<<<<<<4162312614PRT9307218F1909203<<<<<<<<<<<<<<06'),
(7, 'Jennifer Hill', '1987-08-29', 'Ingles', 'P<GBRHILL<<JENNIFER<<<<<<<<<<<<<<<<<<<<<<<<1913383875GBR8708298M1805039<<<<<<<<<<<<<<04'),
(8, 'Victor Béland', '1973-05-24', 'Frances', 'P<FRABÉLAND<<VICTOR<<<<<<<<<<<<<<<<<<<<<<<<<4182697814FRA7305243M1805039<<<<<<<<<<<<<<00'),
(9, 'Édith Gosselin', '1954-08-03', 'Frances', 'P<FRAGOSSELIN<<ÉDITH<<<<<<<<<<<<<<<<<<<<<<<<4182674682FRA5408036M1805039<<<<<<<<<<<<<<08'),
(10, 'Mason Houghton', '1995-11-11', 'Ingles', 'P<GBRHOUGHTON<<MASON<<<<<<<<<<<<<<<<<<<<<<<<1782812342GBR9511110M1805039<<<<<<<<<<<<<<06'),
(11, 'Maria Santos Oliveira', '1975-09-17', 'Portuguesa', 'P<PRTOSANTOS<<MARIA<OLIVEIRA<<<<<<<<<<<<<<<<<5278134690PRT7509175F1909203<<<<<<<<<<<<<<02'),
(12, 'George Turner', '1983-04-05', 'Ingles', 'P<GBRTURNER<<GEORGE<<<<<<<<<<<<<<<<<<<<<<<<<<3478912345GBR8304057M1805039<<<<<<<<<<<<<<04'),
(13, 'Sophie Leclerc', '1990-12-20', 'Francesa', 'P<FRALECLERC<<SOPHIE<<<<<<<<<<<<<<<<<<<<<<<<3145627890FRA9012204F1805039<<<<<<<<<<<<<<06'),
(14, 'Luca Ferrari', '1982-06-15', 'Italiano', 'P<ITAFERRARI<<LUCA<<<<<<<<<<<<<<<<<<<<<<<<<<<<<2378456901ITA8206156M1601013<<<<<<<<<<<<<<08'),
(15, 'Elena Kuznetsova', '1978-03-29', 'Russa', 'P<RUSKUZNETSOVA<<ELENA<<<<<<<<<<<<<<<<<<<<<<<4829013456RUS7803297F1909203<<<<<<<<<<<<<<04'),
(16, 'Pedro Gonzalez', '1991-11-03', 'Espanhol', 'P<ESPGONZALEZ<<PEDRO<<<<<<<<<<<<<<<<<<<<<<<<<<<3987123456ESP9111038M1909203<<<<<<<<<<<<<<02'),
(17, 'Anna Janssen', '1985-02-18', 'Holandesa', 'P<NLDJANSSEN<<ANNA<<<<<<<<<<<<<<<<<<<<<<<<<<<<3890123456NLD8502184F1805039<<<<<<<<<<<<<<04'),
(18, 'Giovanni Rossi', '1970-07-07', 'Italiano', 'P<ITAROSSI<<GIOVANNI<<<<<<<<<<<<<<<<<<<<<<<<<<<<<2198345678ITA7007077M1601013<<<<<<<<<<<<<<06'),
(19, 'Isabel Fernández', '1969-09-25', 'Espanhola', 'P<ESPFERNÁNDEZ<<ISABEL<<<<<<<<<<<<<<<<<<<<<<<<<1765432987ESP6909255F1909203<<<<<<<<<<<<<<08'),
(20, 'Sebastian Müller', '1986-04-12', 'Alemão', 'P<DEUMÜLLER<<SEBASTIAN<<<<<<<<<<<<<<<<<<<<<<<<<<1987654321DEU8604128M1909203<<<<<<<<<<<<<<02'),
(21, 'Léa Dubois', '1998-08-07', 'Francesa', 'P<FRADUBOIS<<LÉA<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<2198765432FRA9808075F1805039<<<<<<<<<<<<<<04'),
(22, 'Daniel Jansson', '1977-01-30', 'Sueco', 'P<SWDJANSSON<<DANIEL<<<<<<<<<<<<<<<<<<<<<<<<<<<<<2378901234SWE7701307M1805039<<<<<<<<<<<<<<06'),
(23, 'Olga Ivanova', '1989-06-22', 'Russa', 'P<RUSIVANOVA<<OLGA<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<1987654321RUS8906227F1909203<<<<<<<<<<<<<<08'),
(24, 'Claude Martin', '1963-12-11', 'Frances', 'P<FRAMARTIN<<CLAUDE<<<<<<<<<<<<<<<<<<<<<<<<<<<<<1765432987FRA6312117M1601013<<<<<<<<<<<<<<00'),
(25, 'Emily Johnson', '1994-05-08', 'Americana', 'P<USAJOHNSON<<EMILY<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<1987654321USA9405087F1805039<<<<<<<<<<<<<<02'),
(26, 'Marco Costa', '1980-09-14', 'Portugues', 'P<PRTCOSTA<<MARCO<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<2198765432PRT8009148M1909203<<<<<<<<<<<<<<04'),
(27, 'Anastasia Petrova', '1972-03-02', 'Russa', 'P<RUSPETROVA<<ANASTASIA<<<<<<<<<<<<<<<<<<<<<<<<<2378901234RUS7203028F1805039<<<<<<<<<<<<<<06'),
(28, 'Antonio Lopez', '1965-08-16', 'Espanhol', 'P<ESPLOPEZ<<ANTONIO<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<1987654321ESP6508168M1909203<<<<<<<<<<<<<<08'),
(29, 'Sophie Dubois', '1997-02-09', 'Francesa', 'P<FRADUBOIS<<SOPHIE<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<2198765432FRA9702095F1805039<<<<<<<<<<<<<<02'),
(30, 'Adam Smith', '1979-11-25', 'Escoces', 'P<SCTSMITH<<ADAM<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<1987654321SCT7911257M1805039<<<<<<<<<<<<<<04');

-- companhiaAerea(id, nome, codigo, paisOrigem, dataInauguracao)
INSERT INTO companhiaAerea VALUES 
(1, 'Air Portugal', 'TP', 'Portugal', '1945-03-14'),
(2, 'Ryanair', 'FR', 'República da Irlanda', '1984-11-28'),
(3, 'Etihad Airways', 'EY', 'Emirados Árabes Unidos', '2003-07-14'),
(4, 'Emirates', 'EK', 'Emirados Árabes Unidos', '1985-03-25'),
(5, 'Lufthansa', 'LH', 'Alemanha', '1953-01-06'),
(6, 'British Airways', 'BA', 'Reino Unido', '1974-04-01'),
(7, 'Air France', 'AF', 'França', '1933-10-07'),
(8, 'Delta Air Lines', 'DL', 'Estados Unidos', '1924-05-30'),
(9, 'Qatar Airways', 'QR', 'Catar', '1993-11-22'),
(10, 'Singapore Airlines', 'SQ', 'Singapura', '1972-01-01'),
(11, 'Cathay Pacific', 'CX', 'Hong Kong', '1946-09-24'),
(12, 'KLM Royal Dutch Airlines', 'KL', 'Países Baixos', '1919-10-07'),
(13, 'Turkish Airlines', 'TK', 'Turquia', '1933-05-20'),
(14, 'American Airlines', 'AA', 'Estados Unidos', '1930-04-15');

-- local(id, cidade, pais)
INSERT INTO local VALUES 
(1, 'Lisboa', 'Portugal'),
(2, 'Dublin', 'Irlanda'),
(3, 'Abu Dhabi', 'Emirados Árabes Unidos'),
(4, 'Londres', 'Inglaterra'),
(5, 'Paris', 'França'),
(6, 'Madrid', 'Espanha'),
(7, 'Nova Iorque', 'Estados Unidos da América'),
(8, 'Berlim', 'Alemanha'),
(9, 'Roma', 'Itália'),
(10, 'Tóquio', 'Japão'),
(11, 'Sydney', 'Austrália'),
(12, 'Pequim', 'China'),
(13, 'Cidade do Cabo', 'África do Sul'),
(14, 'Rio de Janeiro', 'Brasil'),
(15, 'Toronto', 'Canadá'),
(16, 'Amsterdão', 'Holanda'),
(17, 'Bangkok', 'Tailândia'),
(18, 'Moscou', 'Rússia'),
(19, 'Cancún', 'México'),
(20, 'Dubai', 'Emirados Árabes Unidos'),
(21, 'Singapura', 'Singapura'),
(22, 'Istambul', 'Turquia');

-- aeroporto(id, nome, codigo, numeroPistas, dataInauguracao, altitude, lid)
INSERT INTO aeroporto VALUES 
(1, 'Aeroporto Humberto Delgado', 'LIS', 2, '1942-10-15', 114, 1),
(2, 'Aeroporto de Londres Heathrow', 'LHR', 2, '1946-03-25', 25, 4),
(3, 'Aeroporto Internacional de Londres Gatwick', 'LGW', 2, '1958-05-30', 62, 4),
(4, 'Aeroporto de Paris Charles de Gaulle', 'CDG', 4, '1974-03-08', 119, 5),
(5, 'Aeroporto de Paris Orly', 'ORY', 3, '1932-06-21', 89, 5),
(6, 'Aeroporto Internacional Adolfo Suárez/Madrid-Barajas', 'MAD', 4, '1931-04-22', 610, 6),
(7, 'Aeroporto Internacional John F. Kennedy', 'JFK', 4, '1948-07-01', 4, 7),
(8, 'Aeroporto de Berlim Brandenburg', 'BER', 3, '2008-05-08', 34, 8),
(9, 'Aeroporto de Roma Fiumicino', 'FCO', 4, '1960-01-15', 13, 9),
(10, 'Aeroporto Internacional de Tóquio Haneda', 'HND', 4, '1931-12-25', 5, 10),
(11, 'Aeroporto Internacional Kingsford Smith', 'SYD', 3, '1920-05-09', 7, 11),
(12, 'Aeroporto Internacional de Pequim Capital', 'PEK', 3, '1958-03-02', 36, 12),
(13, 'Aeroporto Internacional da Cidade do Cabo', 'CPT', 2, '1954-03-25', 46, 13),
(14, 'Aeroporto Internacional do Rio de Janeiro Galeão', 'GIG', 2, '1952-01-20', 8, 14),
(15, 'Aeroporto Internacional Pearson de Toronto', 'YYZ', 5, '1939-08-27', 173, 15),
(16, 'Aeroporto de Amsterdão Schiphol', 'AMS', 6, '1916-09-19', -3, 16),
(17, 'Aeroporto Internacional Suvarnabhumi', 'BKK', 2, '2006-09-28', 5, 17),
(18, 'Aeroporto Internacional de Moscou Sheremetyevo', 'SVO', 3, '1957-08-11', 192, 18),
(19, 'Aeroporto Internacional de Cancún', 'CUN', 2, '1975-04-20', 6, 19),
(20, 'Aeroporto Internacional de Dubai', 'DXB', 2, '1960-09-30', 62, 20),
(21, 'Aeroporto de Singapura Changi', 'SIN', 4, '1981-07-01', 21, 21),
(22, 'Aeroporto Internacional de Istambul Havalimanı', 'IST', 3, '2018-10-29', 104, 22),
(25, 'Aeroporto de Londres Stansted', 'STN', 2, '1991-03-25', 106, 4),
(26, 'Aeroporto de Londres Luton', 'LTN', 2, '1938-05-30', 160, 4),
(27, 'Aeroporto de Paris Beauvais-Tillé', 'BVA', 2, '1956-03-08', 90, 5),
(29, 'Aeroporto LaGuardia', 'LGA', 2, '1939-07-01', 21, 7),
(30, 'Aeroporto Newark Liberty', 'EWR', 3, '1928-09-01', 7, 7);

-- portaoEmbarque(id, terminal, codigo)
INSERT INTO portaoEmbarque VALUES 
(1, 'B', '34'),
(2, 'D', '11'),
(3, 'A', '09'),
(4, 'C', '01'),
(5, 'A', '08'),
(6, 'A', '07'),
(7, 'B', '25'),
(8, 'D', '04'),
(9, 'E', '15'),
(10, 'F', '22'),
(11, 'C', '36'),
(12, 'B', '19'),
(13, 'D', '29'),
(14, 'A', '42'),
(15, 'F', '14'),
(16, 'E', '33'),
(17, 'C', '46'),
(18, 'B', '02');

-- carrosselMalas(id, codigo, capacidade)
INSERT INTO carrosselMalas VALUES 
(1, '1', 200),
(2, '2', 200),
(3, '3', 120),
(4, '4', 120),
(5, '5', 475),
(6, '6', 540);

-- voo(id, estado, duracao, altitudeMedia, companhiaId)
INSERT INTO voo VALUES 
(1, 'Terminado', '01:30', 4000, 1),
(2, 'Terminado', '01:30', 3500, 1),
(3, 'Terminado', '04:15', 7500, 2),
(4, 'Terminado', '05:00', 9000, 3),
(5, 'Em Curso', '08:00', 8000, 4),
(6, 'Em Curso', '03:30', 6500, 2),
(7, 'Próximo', '02:15', 4500, 1),
(8, 'Próximo', '06:30', 7500, 3),
(9, 'Por Realizar', '04:15', 6000, 2),
(10, 'Por Realizar', '03:45', 3500, 3),
(11, 'Por Realizar', '08:00', 8500, 4),
(12, 'Por Realizar', '03:30', 6500, 2),
(13, 'Terminado', '02:00', 5000, 5),
(14, 'Terminado', '03:00', 6000, 6),
(15, 'Em Curso', '04:30', 7000, 3),
(16, 'Em Curso', '02:45', 5500, 1),
(17, 'Próximo', '05:30', 8000, 4),
(18, 'Próximo', '03:15', 4500, 2),
(19, 'Por Realizar', '06:00', 8500, 1),
(20, 'Por Realizar', '04:30', 6500, 3),
(21, 'Por Realizar', '02:45', 5000, 5),
(22, 'Por Realizar', '03:15', 5500, 2);

-- vooPartida(id, vooId, horaPartida, dataPartida, portaoId, aeroportoId)
INSERT INTO vooPartida VALUES 
(1, 1, '10:30', '2017-09-13', 1, 1),
(2, 3, '17:30', '2017-09-13', 6, 2),
(3, 5, '21:00', '2017-09-13', 2, 7),
(4, 7, '01:15', '2017-09-14', 4, 6),
(5, 9, '08:00', '2017-09-15', 7, 4),
(6, 11, '16:30', '2017-09-15', 8, 5),
(7, 13, '11:30', '2017-09-14', 3, 3),
(8, 15, '18:45', '2017-09-14', 4, 6),
(9, 17, '22:00', '2017-09-14', 5, 4),
(10, 19, '01:30', '2017-09-15', 6, 5),
(11, 21, '07:45', '2017-09-15', 2, 7);

-- vooChegada(id, vooId, horaChegada, dataChegada, carrosselId, aeroportoId)
INSERT INTO vooChegada VALUES 
(1, 2, '17:00', '2017-09-13', 1, 1),
(2, 4, '18:30', '2017-09-13', 5, 5),
(3, 6, '22:45', '2017-09-13', 3, 4),
(4, 8, '00:30', '2017-09-14', 2, 2),
(5, 10, '08:00', '2017-09-15', 6, 6),
(6, 12, '13:00', '2017-09-15', 4, 3),
(7, 14, '19:30', '2017-09-14', 6, 6),
(8, 16, '21:15', '2017-09-14', 1, 1),
(9, 18, '01:45', '2017-09-15', 3, 4),
(10, 20, '08:30', '2017-09-15', 2, 2),
(11, 22, '14:45', '2017-09-15', 5, 5);

-- bilhete(id, classe, lugar, dataCompra, prioritario, horaEmbarque, estado, passageiroId, vooId)
INSERT INTO bilhete VALUES 
(1, 'Executiva', '17D', '2017-09-01', FALSE, '10:00', 'Completo', 1, 1),
(2, 'Comercial', '12A', '2017-09-10', TRUE, '10:00', 'Completo', 4, 1),
(3, 'Primeira', '20F', '2017-08-15', FALSE, '12:00', 'Completo', 5, 4),
(4, 'Executiva', '26E', '2017-08-24', FALSE, '13:00', 'Completo', 2, 3),
(5, 'Primeira', '4B', '2017-09-12', FALSE, '20:30', 'Em Voo', 10, 5),
(6, 'Comercial', '8D', '2017-06-24', TRUE, '20:00', 'Em Voo', 6, 5),
(7, 'Executiva', '11C', '2017-08-16', FALSE, '01:00', 'A Embarcar', 7, 10),
(8, 'Comercial', '10B', '2017-09-10', FALSE, '05:30', 'Segurança', 4, 9),
(9, 'Primeira', '3C', '2017-08-12', TRUE, '05:00', 'Segurança', 3, 9),
(10, 'Executiva', '15F', '2017-09-04', TRUE, '05:30', 'Segurança', 9, 11),
(11, 'Executiva', '12A', '2017-09-05', FALSE, '15:00', 'Check-In', 8, 12),
(12, 'Executiva', '19C', '2017-09-07', TRUE, '07:15', 'Check-In', 7, 11),
(13, 'Comercial', '21B', '2017-09-03', FALSE, '09:30', 'Check-In', 12, 2),
(14, 'Primeira', '5A', '2017-08-28', TRUE, '08:00', 'Em Voo', 15, 6),
(15, 'Executiva', '14C', '2017-09-11', FALSE, '16:45', 'A Embarcar', 16, 8),
(16, 'Comercial', '18F', '2017-09-09', FALSE, '22:15', 'Segurança', 18, 10),
(17, 'Executiva', '9D', '2017-08-20', TRUE, '14:30', 'Segurança', 21, 14),
(18, 'Primeira', '6B', '2017-09-06', FALSE, '12:00', 'Check-In', 23, 16),
(19, 'Comercial', '22C', '2017-09-02', FALSE, '18:00', 'Check-In', 26, 18),
(20, 'Executiva', '13F', '2017-08-25', TRUE, '07:45', 'Em Voo', 28, 20),
(21, 'Primeira', '7A', '2017-09-08', FALSE, '11:30', 'A Embarcar', 30, 22),
(22, 'Comercial', '16D', '2017-09-01', TRUE, '06:00', 'Completo', 25, 21);

-- membroTripulacao(id, nome, dataNascimento, nacionalidade, documento, formacao, companhiaId)
INSERT INTO membroTripulacao VALUES 
(1, 'António Freitas Moreira', '1980-03-21', 'Portugues', 'P<PRTMOREIRAS<<ANTÓNIO<FREITAS<<<<<<<<<<<<<<9660847565PRT8003214M2105035<<<<<<<<<<<<<<02', 'Piloto', 1),
(2, 'Mónica Ferreira', '1990-07-19', 'Portugues', 'P<PRTFERREIRA<<MÓNICA<<<<<<<<<<<<<<<<<<<<<<<2291785985PRT9007194F1912013<<<<<<<<<<<<<<04', 'Comissário de Bordo', 1),
(3, 'Patrícia Marques', '1973-07-15', 'Portugues', 'P<PRTMARQUES<<PATRÍCIA<<<<<<<<<<<<<<<<<<<<<<2887409549PRT7307155F2207157<<<<<<<<<<<<<<00', 'Piloto', 1),
(4, 'Miguel Pinto', '1976-12-10', 'Portugues', 'P<PRTPINTO<<MIGUEL<<<<<<<<<<<<<<<<<<<<<<<<<<9622416345PRT7612105F1706262<<<<<<<<<<<<<<06', 'Comissário de Bordo', 1),
(5, 'Dwight Weber', '1960-01-09', 'Ingles', 'P<GBRWEBER<<DWIGHT<<<<<<<<<<<<<<<<<<<<<<<<<<9331182535GBR3101090M1801513<<<<<<<<<<<<<<06', 'Piloto', 2),
(6, 'Crystal Mcaffrey', '1968-07-02', 'Escocesa', 'P<SCTMCAFFREY<<CRYSTAL<<<<<<<<<<<<<<<<<<<<<<2887409549SCT6807027F2006013<<<<<<<<<<<<<<04', 'Piloto', 2),
(7, 'Colin Singleton', '1993-09-18', 'Gales', 'P<WALSINGLETON<<COLIN<<<<<<<<<<<<<<<<<<<<<<<9115247171WAL9309186M1704213<<<<<<<<<<<<<<04', 'Comissário de Bordo', 2),
(8, 'Caleb Benítez Valles', '1980-01-09', 'Espanhol', 'P<ESPVALLES<<CALEB<BENÍTEZ<<<<<<<<<<<<<<<<<<5376712412ESP8001092F1706262<<<<<<<<<<<<<<02', 'Piloto', 3),
(9, 'Rafa Palacios Beltrán', '1988-12-08', 'Espanhol', 'P<ESPBELTRÁN<<RAFA<PALACIOS<<<<<<<<<<<<<<<<<4861273869ESP8812083F1909203<<<<<<<<<<<<<<02', 'Comissário de Bordo', 3),
(10, 'David August Danielsen', '1974-02-13', 'Dinamarques', 'P<DNKDANIELSEN<<DAVID<AUGUST<<<<<<<<<<<<<<<<2369478122DNM7402131F1909203<<<<<<<<<<<<<<02', 'Piloto', 3),
(11, 'Ana Sofia Pereira', '1995-05-12', 'Portuguesa', 'P<PRTPEREIRA<<ANA<SOFIA<<<<<<<<<<<<<<<<<<<<<2291785985PRT9505124F1912013<<<<<<<<<<<<<<04', 'Comissário de Bordo', 1),
(12, 'Pedro Costa', '1985-08-30', 'Portugues', 'P<PRTCOSTA<<PEDRO<<<<<<<<<<<<<<<<<<<<<<<<<<9622416345PRT8508305M1706262<<<<<<<<<<<<<<06', 'Piloto', 1),
(13, 'Emily Mitchell', '1989-11-25', 'Ingles', 'P<GBRMITCHELL<<EMILY<<<<<<<<<<<<<<<<<<<<<<<<<<9331182535GBR8911250M1801513<<<<<<<<<<<<<<06', 'Comissário de Bordo', 2),
(14, 'Liam Campbell', '1972-06-17', 'Irlandes', 'P<IRLCAMPBELL<<LIAM<<<<<<<<<<<<<<<<<<<<<<<<<<2887409549IRL7206177F2006013<<<<<<<<<<<<<<04', 'Comissário de Bordo', 2),
(15, 'Elena Rodriguez', '1983-04-05', 'Espanhola', 'P<ESPRODRIGUEZ<<ELENA<<<<<<<<<<<<<<<<<<<<<<<5376712412ESP8304056F1706262<<<<<<<<<<<<<<02', 'Comissário de Bordo', 3),
(16, 'Adrian Sanchez', '1990-10-15', 'Espanhol', 'P<ESPSANCHEZ<<ADRIAN<<<<<<<<<<<<<<<<<<<<<<<4861273869ESP9010153F1909203<<<<<<<<<<<<<<02', 'Comissário de Bordo', 3),
(17, 'Sophie Van den Berg', '1987-09-02', 'Holandesa', 'P<NLDVDENBERG<<SOPHIE<<<<<<<<<<<<<<<<<<<<<<2369478122NLD8709029F1909203<<<<<<<<<<<<<<02', 'Comissário de Bordo', 12),
(18, 'Hans Müller', '1978-03-18', 'Alemão', 'P<DEUMULLER<<HANS<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<2291785985DEU7803187M1912013<<<<<<<<<<<<<<04', 'Piloto', 5),
(19, 'Isabella Rossi', '1986-12-01', 'Italiana', 'P<ITAROSSI<<ISABELLA<<<<<<<<<<<<<<<<<<<<<<<<<<<9622416345ITA8612012F1706262<<<<<<<<<<<<<<06', 'Comissário de Bordo', 5),
(20, 'Alexandre Dubois', '1980-07-08', 'Frances', 'P<FRAUBOIS<<ALEXANDRE<<<<<<<<<<<<<<<<<<<<<<<9331182535FRA8007087M1801513<<<<<<<<<<<<<<06', 'Piloto', 6),
(21, 'Maria da Silva', '1992-02-20', 'Portuguesa', 'P<PRTSILVA<<MARIA<<<<<<<<<<<<<<<<<<<<<<<<<<2887409549PRT9202204F2006013<<<<<<<<<<<<<<04', 'Comissário de Bordo', 7),
(22, 'John Johnson', '1965-11-10', 'Americano', 'P<USAJOHNSON<<JOHN<<<<<<<<<<<<<<<<<<<<<<<<<<9115247171USA6511105M1704213<<<<<<<<<<<<<<04', 'Comissário de Bordo', 14),
(23, 'Samantha White', '1979-08-15', 'Americana', 'P<USAWHITE<<SAMANTHA<<<<<<<<<<<<<<<<<<<<<<<<<5376712412USA7908156F1706262<<<<<<<<<<<<<<02', 'Comissário de Bordo', 14),
(24, 'Carlos Ruiz', '1982-04-30', 'Mexicano', 'P<MEXRUIZ<<CARLOS<<<<<<<<<<<<<<<<<<<<<<<<<<<<<4861273869MEX8204309F1909203<<<<<<<<<<<<<<02', 'Comissário de Bordo', 8);

-- especialidade(id, nome, tempoMaximo)
INSERT INTO especialidade VALUES 
(1, 'Piloto', '08:00'),
(2, 'Co-Piloto', '09:00'),
(3, 'Comissário de Bordo', '10:00');

-- servico(vooId, tripulacaoId, especialidadeId, horaInicio, horaFim)
INSERT INTO servico VALUES 
(1, 1, 1, '10:30', '12:00'),
(1, 2, 3, '10:30', '12:00'),
(1, 3, 2, '10:30', '12:00'),
(3, 4, 2, '11:30', '17:30'),
(3, 5, 3, '11:30', '17:30'),
(3, 6, 1, '11:30', '17:30'),
(4, 7, 1, '13:30', '18:30'),
(4, 8, 2, '13:30', '18:30'),
(4, 9, 3, '13:30', '18:30'),
(4, 5, 2, '13:30', '18:30'),
(2, 1, 2, '16:00', '17:30'),
(2, 2, 3, '16:00', '17:30'),
(2, 3, 1, '16:00', '17:30'),
(5, 10, 1, '09:00', '17:00'),
(5, 11, 3, '09:00', '17:00'),
(5, 12, 2, '09:00', '17:00'),
(6, 13, 2, '10:30', '14:00'),
(6, 14, 3, '10:30', '14:00'),
(6, 15, 1, '10:30', '14:00'),
(7, 16, 1, '14:00', '18:00'),
(7, 17, 2, '14:00', '18:00'),
(7, 18, 3, '14:00', '18:00'),
(8, 19, 3, '16:30', '22:30'),
(8, 20, 1, '16:30', '22:30'),
(9, 21, 2, '12:00', '15:30'),
(9, 22, 3, '12:00', '15:30'),
(10, 23, 1, '08:30', '14:30'),
(10, 24, 2, '08:30', '14:30');