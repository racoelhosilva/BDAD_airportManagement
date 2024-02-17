----------------------
-- Value Insertions --
----------------------

-- Basic Settings:
.mode columns
.headers on
PRAGMA foreign_keys=ON;

-- passageiro(id, nome, dataNascimento, nacionalidade, documento)
INSERT INTO passageiro VALUES (1, 'Joaquim da Silva Almeida', '1967-05-26', 'Portugues', 'P<PRTALMEIDA<<JOAQUIM<DA<SILVA<<<<<<<<<<<<<<3609918420PRT6705260M1601013<<<<<<<<<<<<<<04');
INSERT INTO passageiro VALUES (2, 'Crystal Mcaffrey', '1968-07-02', 'Escocesa', 'P<SCTMCAFFREY<<CRYSTAL<<<<<<<<<<<<<<<<<<<<<<2887409549SCT6807027F2006013<<<<<<<<<<<<<<04');
INSERT INTO passageiro VALUES (3, 'Rafa Palacios Beltrán', '1988-12-08', 'Espanhol', 'P<ESPBELTRÁN<<RAFA<PALACIOS<<<<<<<<<<<<<<<<<4861273869ESP8812083F1909203<<<<<<<<<<<<<<02');
INSERT INTO passageiro VALUES (4, 'Nicolas Pereira Cunha', '1996-10-28', 'Portugues', 'P<PRTCUNHA<<NICOLAS<PEREIRA<<<<<<<<<<<<<<<<<2369478122PRT9610286F1909203<<<<<<<<<<<<<<02');
INSERT INTO passageiro VALUES (5, 'Vitoria Alves Melo', '1964-03-14', 'Portugues', 'P<PRTMELO<<VITORIA<ALVES<<<<<<<<<<<<<<<<<<<<4517461271PRT6403142F1909203<<<<<<<<<<<<<<04');
INSERT INTO passageiro VALUES (6, 'Luisa Santos Correia', '1993-07-21', 'Portugues', 'P<PRTCORREIA<<LUISA<SANTOS<<<<<<<<<<<<<<<<<<4162312614PRT9307218F1909203<<<<<<<<<<<<<<06');
INSERT INTO passageiro VALUES (7, 'Jennifer Hill', '1987-08-29', 'Ingles', 'P<GBRHILL<<JENNIFER<<<<<<<<<<<<<<<<<<<<<<<<1913383875GBR8708298M1805039<<<<<<<<<<<<<<04');
INSERT INTO passageiro VALUES (8, 'Victor Béland', '1973-05-24', 'Frances', 'P<FRABÉLAND<<VICTOR<<<<<<<<<<<<<<<<<<<<<<<<<4182697814FRA7305243M1805039<<<<<<<<<<<<<<00');
INSERT INTO passageiro VALUES (9, 'Édith Gosselin', '1954-08-03', 'Frances', 'P<FRAGOSSELIN<<ÉDITH<<<<<<<<<<<<<<<<<<<<<<<<4182674682FRA5408036M1805039<<<<<<<<<<<<<<08');
INSERT INTO passageiro VALUES (10, 'Mason Houghton', '1995-11-11', 'Ingles', 'P<GBRHOUGHTON<<MASON<<<<<<<<<<<<<<<<<<<<<<<<1782812342GBR9511110M1805039<<<<<<<<<<<<<<06');

-- companhiaAerea(id, nome, codigo, paisOrigem, dataInauguracao)
INSERT INTO companhiaAerea VALUES (1, 'Air Portugal', 'TP', 'Portugal', '1945-03-14');
INSERT INTO companhiaAerea VALUES (2, 'Ryanair', 'FR', 'República da Irlanda', '1984-11-28');
INSERT INTO companhiaAerea VALUES (3, 'Etihad Airways', 'EY', 'Emirados Árabes Unidos', '2003-07-14');
INSERT INTO companhiaAerea VALUES (4, 'Emirates', 'EK', 'Emirados Árabes Unidos', '1985-03-25');

-- local(id, cidade, pais)
INSERT INTO local VALUES (1, 'Lisboa', 'Portugal');
INSERT INTO local VALUES (2, 'Dublin', 'Irlanda');
INSERT INTO local VALUES (3, 'Abu Dhabi', 'Emirados Árabes Unidos');
INSERT INTO local VALUES (4, 'Londres', 'Inglaterra');
INSERT INTO local VALUES (5, 'Paris', 'França');
INSERT INTO local VALUES (6, 'Madrid', 'Espanha');
INSERT INTO local VALUES (7, 'Nova Iorque', 'Estados Unidos da América');

-- aeroporto(id, nome, codigo, numeroPistas, dataInauguracao, altitude, lid)
INSERT INTO aeroporto VALUES (1, 'Aeroporto Humberto Delgado', 'LIS', 2, '1942-10-15', 114, 1);
INSERT INTO aeroporto VALUES (2, 'Aeroporto de Londres Heathrow', 'LHR', 2, '1946-03-25', 25, 4);
INSERT INTO aeroporto VALUES (3, 'Aeroporto Internacional de Londres Gatwick', 'LGW', 2, '1958-05-30', 62, 4);
INSERT INTO aeroporto VALUES (4, 'Aeroporto de Paris Charles de Gaulle', 'CDG', 4, '1974-03-08', 119, 5);
INSERT INTO aeroporto VALUES (5, 'Aeroporto de Paris Orly', 'ORY', 3, '1932-06-21', 89, 5);
INSERT INTO aeroporto VALUES (6, 'Aeroporto Internacional Adolfo Suárez/Madrid-Barajas', 'MAD', 4, '1931-04-22', 610, 6);
INSERT INTO aeroporto VALUES (7, 'Aeroporto Internacional John F. Kennedy', 'JFK', 4, '1948-07-01', 4, 7);

-- portaoEmbarque(id, terminal, codigo)
INSERT INTO portaoEmbarque VALUES (1, 'B', '34');
INSERT INTO portaoEmbarque VALUES (2, 'D', '11');
INSERT INTO portaoEmbarque VALUES (3, 'A', '09');
INSERT INTO portaoEmbarque VALUES (4, 'C', '01');
INSERT INTO portaoEmbarque VALUES (5, 'A', '08');
INSERT INTO portaoEmbarque VALUES (6, 'A', '07');
INSERT INTO portaoEmbarque VALUES (7, 'B', '25');
INSERT INTO portaoEmbarque VALUES (8, 'D', '04');

-- carrosselMalas(id, codigo, capacidade)
INSERT INTO carrosselMalas VALUES (1, '1', 200);
INSERT INTO carrosselMalas VALUES (2, '2', 200);
INSERT INTO carrosselMalas VALUES (3, '3', 120);
INSERT INTO carrosselMalas VALUES (4, '4', 120);
INSERT INTO carrosselMalas VALUES (5, '5', 475);
INSERT INTO carrosselMalas VALUES (6, '6', 540);

-- voo(id, estado, duracao, altitudeMedia, companhiaId)
INSERT INTO voo VALUES (1, 'Terminado', '01:30', 4000, 1);
INSERT INTO voo VALUES (2, 'Terminado', '01:30', 3500, 1);
INSERT INTO voo VALUES (3, 'Terminado', '04:15', 7500, 2);
INSERT INTO voo VALUES (4, 'Terminado', '05:00', 9000, 3);
INSERT INTO voo VALUES (5, 'Em Curso', '08:00', 8000, 4);
INSERT INTO voo VALUES (6, 'Em Curso', '03:30', 6500, 2);
INSERT INTO voo VALUES (7, 'Próximo', '02:15', 4500, 1);
INSERT INTO voo VALUES (8, 'Próximo', '06:30', 7500, 3);
INSERT INTO voo VALUES (9, 'Por Realizar', '04:15', 6000, 2);
INSERT INTO voo VALUES (10, 'Por Realizar', '03:45', 3500, 3);
INSERT INTO voo VALUES (11, 'Por Realizar', '08:00', 8500, 4);
INSERT INTO voo VALUES (12, 'Por Realizar', '03:30', 6500, 2);

-- vooPartida(id, vooId, horaPartida, dataPartida, portaoId, aeroportoId)
INSERT INTO vooPartida VALUES (1, 1, '10:30', '2017-09-13', 1, 1);
INSERT INTO vooPartida VALUES (2, 3, '17:30', '2017-09-13', 6, 2);
INSERT INTO vooPartida VALUES (3, 5, '21:00', '2017-09-13', 2, 7);
INSERT INTO vooPartida VALUES (4, 7, '01:15', '2017-09-14', 4, 6);
INSERT INTO vooPartida VALUES (5, 9, '08:00', '2017-09-15', 7, 4);
INSERT INTO vooPartida VALUES (6, 11, '16:30', '2017-09-15', 8, 5);

-- vooChegada(id, vooId, horaChegada, dataChegada, carrosselId, aeroportoId)
INSERT INTO vooChegada VALUES (1, 2, '17:00', '2017-09-13', 1, 1);
INSERT INTO vooChegada VALUES (2, 4, '18:30', '2017-09-13', 5, 5);
INSERT INTO vooChegada VALUES (3, 6, '22:45', '2017-09-13', 3, 4);
INSERT INTO vooChegada VALUES (4, 8, '00:30', '2017-09-14', 2, 2);
INSERT INTO vooChegada VALUES (5, 10, '08:00', '2017-09-15', 6, 6);
INSERT INTO vooChegada VALUES (6, 12, '13:00', '2017-09-15', 4, 3);

-- bilhete(id, classe, lugar, dataCompra, prioritario, horaEmbarque, estado, passageiroId, vooId)
INSERT INTO bilhete VALUES (1, 'Executiva', '17D', '2017-09-01', FALSE, '10:00', 'Completo', 1, 1);
INSERT INTO bilhete VALUES (2, 'Executiva', '12A', '2017-09-10', TRUE, '10:00', 'Completo', 4, 1);
INSERT INTO bilhete VALUES (3, 'Primeira', '20F', '2017-08-15', FALSE, '12:00', 'Completo', 5, 4);
INSERT INTO bilhete VALUES (4, 'Executiva', '26E', '2017-08-24', FALSE, '13:00', 'Completo', 2, 3);
INSERT INTO bilhete VALUES (5, 'Primeira', '4B', '2017-09-12', FALSE, '20:30', 'Em Voo', 10, 5);
INSERT INTO bilhete VALUES (6, 'Executiva', '8D', '2017-06-24', TRUE, '20:00', 'Em Voo', 6, 5);
INSERT INTO bilhete VALUES (7, 'Executiva', '11C', '2017-08-16', FALSE, '01:00', 'A Embarcar', 7, 1);
INSERT INTO bilhete VALUES (8, 'Executiva', '10B', '2017-09-10', FALSE, '05:30', 'Segurança', 4, 1);
INSERT INTO bilhete VALUES (9, 'Primeira', '3C', '2017-08-12', TRUE, '05:00', 'Segurança', 3, 1);
INSERT INTO bilhete VALUES (10, 'Executiva', '15F', '2017-09-04', TRUE, '05:30', 'Segurança', 9, 1);
INSERT INTO bilhete VALUES (11, 'Executiva', '12A', '2017-09-05', FALSE, '15:00', 'Check-In', 8, 1);
INSERT INTO bilhete VALUES (12, 'Executiva', '19C', '2017-09-07', TRUE, '07:15', 'Check-In', 7, 1);

-- membroTripulacao(id, nome, dataNascimento, nacionalidade, documento, formacao, companhiaId)
INSERT INTO membroTripulacao VALUES (1, 'António Freitas Moreira', '1980-03-21', 'Portugues', 'P<PRTMOREIRAS<<ANTÓNIO<FREITAS<<<<<<<<<<<<<<9660847565PRT8003214M2105035<<<<<<<<<<<<<<02', 'Piloto', 1);
INSERT INTO membroTripulacao VALUES (2, 'Mónica Ferreira', '1990-07-19', 'Portugues', 'P<PRTFERREIRA<<MÓNICA<<<<<<<<<<<<<<<<<<<<<<<2291785985PRT9007194F1912013<<<<<<<<<<<<<<04', 'Comissário de Bordo', 1);
INSERT INTO membroTripulacao VALUES (3, 'Patrícia Marques', '1973-07-15', 'Portugues', 'P<PRTMARQUES<<PATRÍCIA<<<<<<<<<<<<<<<<<<<<<<2887409549PRT7307155F2207157<<<<<<<<<<<<<<00', 'Piloto', 1);
INSERT INTO membroTripulacao VALUES (4, 'Miguel Pinto', '1976-12-10', 'Portugues', 'P<PRTPINTO<<MIGUEL<<<<<<<<<<<<<<<<<<<<<<<<<<9622416345PRT7612105F1706262<<<<<<<<<<<<<<06', 'Comissário de Bordo', 1);
INSERT INTO membroTripulacao VALUES (5, 'Dwight Weber', '1960-01-09', 'Inglês', 'P<GBRWEBER<<DWIGHT<<<<<<<<<<<<<<<<<<<<<<<<<<9331182535GBR3101090M1801513<<<<<<<<<<<<<<06', 'Piloto', 2);
INSERT INTO membroTripulacao VALUES (6, 'Crystal Mcaffrey', '1968-07-02', 'Escocesa', 'P<SCTMCAFFREY<<CRYSTAL<<<<<<<<<<<<<<<<<<<<<<2887409549SCT6807027F2006013<<<<<<<<<<<<<<04', 'Piloto', 2);
INSERT INTO membroTripulacao VALUES (7, 'Colin Singleton', '1993-09-18', 'Gales', 'P<WALSINGLETON<<COLIN<<<<<<<<<<<<<<<<<<<<<<<9115247171WAL9309186M1704213<<<<<<<<<<<<<<04', 'Comissário de Bordo', 2);
INSERT INTO membroTripulacao VALUES (8, 'Caleb Benítez Valles', '1980-01-09', 'Espanhol', 'P<ESPVALLES<<CALEB<BENÍTEZ<<<<<<<<<<<<<<<<<<5376712412ESP8001092F1706262<<<<<<<<<<<<<<02', 'Piloto', 3);
INSERT INTO membroTripulacao VALUES (9, 'Rafa Palacios Beltrán', '1988-12-08', 'Espanhol', 'P<ESPBELTRÁN<<RAFA<PALACIOS<<<<<<<<<<<<<<<<<4861273869ESP8812083F1909203<<<<<<<<<<<<<<02', 'Comissário de Bordo', 3);
INSERT INTO membroTripulacao VALUES (10, 'David August Danielsen', '1974-02-13', 'Dinamarques', 'P<DNKDANIELSEN<<DAVID<AUGUST<<<<<<<<<<<<<<<<2369478122DNM7402131F1909203<<<<<<<<<<<<<<02', 'Piloto', 3);

-- especialidade(id, nome, tempoMaximo)
INSERT INTO especialidade VALUES (1, 'Piloto', '08:00');
INSERT INTO especialidade VALUES (2, 'Co-Piloto', '09:00');
INSERT INTO especialidade VALUES (3, 'Comissário de Bordo', '10:00');

-- servico(vooId, tripulacaoId, especialidadeId, horaInicio, horaFim)
INSERT INTO servico VALUES (1, 1, 1, '10:30', '12:00');
INSERT INTO servico VALUES (1, 2, 3, '10:30', '12:00');
INSERT INTO servico VALUES (1, 3, 2, '10:30', '12:00');
INSERT INTO servico VALUES (3, 4, 2, '11:30', '17:30');
INSERT INTO servico VALUES (3, 5, 3, '11:30', '17:30');
INSERT INTO servico VALUES (3, 6, 1, '11:30', '17:30');
INSERT INTO servico VALUES (4, 7, 1, '13:30', '18:30');
INSERT INTO servico VALUES (4, 8, 2, '13:30', '18:30');
INSERT INTO servico VALUES (4, 9, 3, '13:30', '18:30');
INSERT INTO servico VALUES (4, 5, 2, '13:30', '18:30');
INSERT INTO servico VALUES (2, 1, 2, '16:00', '17:30');
INSERT INTO servico VALUES (2, 2, 3, '16:00', '17:30');
INSERT INTO servico VALUES (2, 3, 1, '16:00', '17:30');
