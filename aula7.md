SIMULADO PARA PROVA

Construa um banco de dados para uma empresa do rama da Aviação. Essa empresa tem 4 aeronaves que estão dispostas em 2 rotas nacionais. RJ-SP e SP-PE. 

Dados horários da rota RJ-SP:
        Aeroporto RJ
                Saídas as 7h e as 13h;
                Chegadas as 10h e 17h;
        Aeroporto SP
                Saídas as 9h e as 16h;
                Chegadas as 8h e 14h;

Dados horários da rota SP-PE:
        Aeroporto SP
                Saídas as 9h e as 16h;
                Chegadas as 8h e 14h;
        Aeroporto PE
                Saídas as 7h e as 13h;
                Chegadas as 10h e 17h;

BANCO DE DADOS: aviacao

TABELA: aeroportos
        - idAeroporto
        - nomeAeroporto

TABELA: aeronaves
        - idAeronave
        - nomeAeronave

TABELA: rotas
        - idRota
        - idAviao
        - idEmbarque
        - idDestino
        - horaSaida
        - horaChegada
        