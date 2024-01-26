-- Active: 1661914216564@@127.0.0.1@3306@space_z

/* Trabalho da disciplina de Banco de Dados - 3° Período 

    Nome: Leonardo Helder de Moraes - R.A. : 755243

    Criar um banco de dados para uma empresa
*/

# CRIAÇÃO DE TABELAS
# Inserindo a tabela 'FUNCIONARIO' ADD

CREATE TABLE FUNCIONARIO(
    Pnome VARCHAR (50),
    Minicial CHAR (2),
    Unome VARCHAR (50) NOT NULL,
    CPF CHAR (11) NOT NULL PRIMARY KEY,
    Datanasc DATE,
    Endereco VARCHAR (100),
    Sexo CHAR (2),
    Salario DECIMAL (10, 2),
    Cpf_supervisor CHAR (11),
    Dnr INTEGER NOT NULL
);

# Criando a tabela 'DEPARTAMENTO'
CREATE TABLE DEPARTAMENTO(
    Dnome VARCHAR (40),
    Dnumero INTEGER NOT NULL PRIMARY KEY,
    Cpf_gerente CHAR (11),
    Data_inicio_gerente DATE
);

# Criando a tabela de 'LOCALIZACAO_DEP'
CREATE TABLE LOCALIZACAO_DEP(
    Dnumero INTEGER NOT NULL,
    Dlocal VARCHAR (20),
    PRIMARY KEY (Dnumero, Dlocal)
);
    
# Criando a tabela 'TRABALHA_EM'
CREATE TABLE TRABALHA_EM(
    Fcpf CHAR (11) NOT NULL,
    Pnr INTEGER NOT NULL,
    PRIMARY KEY (Fcpf, Pnr), 
    Horas FLOAT NOT NULL
);

# Criando tablea 'PROJETO'
CREATE TABLE PROJETO(
    Proj_nome VARCHAR (40),
    Proj_numero INTEGER NOT NULL PRIMARY KEY,
    Proj_local VARCHAR (20),
    Dnum INTEGER NOT NULL
);

# Criand tabela 'DEPENDENTE'
CREATE TABLE DEPENDENTE(
    Fcpf CHAR (11) NOT NULL,
    Nome_dependente VARCHAR (40),
    PRIMARY KEY (Fcpf, Nome_dependente),
    Sexo CHAR (2),
    Datanasc DATE,
    Parentesco VARCHAR (20)
);

# Vamos inserir agora os dados em cada uma das tabelas criadas

# Inseridos os dados na tabela 'FUNCIONARIO'

INSERT INTO FUNCIONARIO
    (Pnome, Minicial, Unome, CPF, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr)
    # INSERINDO JORGE
    VALUES ('JORGE', 'E', 'BRITO', '88866555576', '1937-11-10',
            'RUA DO HORTO, 35, SÃO PAULO, SP', 'M', 55.000, NULL, 1),

    # INSERINDO FERNANDO SUPERVISOR
           ('FERNANDO', 'T', 'WONG', '33344555587', '1955-12-08',
            'RUA DA LAPA, 34, SÃO PAULO, SP', 'M', 40.000, '88866555576', 5),

    # INSERINDO JOAO
           ('JOAO', 'B', 'SILVA', '12345678966', '1965-01-09',
            'RUA DAS FLORES, 751, SÃO PAULO, SP', 'M', 30.000, '33344555587', 5),

    # INSERINDO RONALDO
           ('RONALDO', 'K', 'LIMA', '66688444476', '1962-09-15',
            'RUA REBOUÇAS, 65, PIRACICABA, SP', 'M', 38.000, '33344555587', 5),

    # INSERINDO JOICE
           ('JOICE', 'A', 'LEITE', '45345345376', '1972-07-31',
            'AV. LUCAS OBES, 74, SÃO PAULO, SP', 'F', 25.000, '33344555587', 5),
    
    # INSERINDO JENNIFER
           ('JENNIFER', 'S', 'SOUZA', '98765432168', '1941-06-20',
            'AV. ARTHUR DE LIMA, 54, SANTO ANDRÉ, SP', 'F', 43.000, '88866555576', 4),

    # INSERINDO ANDRÉ
            ('ANDRÉ', 'V', 'PEREIRA', '98798798733', '1969-03-29',
             'RUA TIMBIRA, 35, SÃO PAULO, SP', 'M', 25.000, '98765432168', 4),

    # INSERINDO ALICE
            ('ALICE', 'J', 'ZELAYA', '99988777767', '1968-01-19',
             'RUA SOUZA LIMA, 35, CURITIBA, PR', 'F', 25.000, '98765432168', 4);

# Inseridos os dados na tabela 'DEPARTAMENTO'

INSERT INTO DEPARTAMENTO
    (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente)
    VALUES ('PESQUISA', 5, NULL, '1988-05-22'),
           ('ADMINISTRAÇÃO', 4, NULL, '1995-01-01'), 
           ('MATRIZ', 1, NULL, '1981-06-19');

# Inserindo os dados na tabela 'LOCALIZAO_DEP'
INSERT INTO LOCALIZACAO_DEP
    (Dnumero, Dlocal)
    VALUES (1, 'SÃO PAULO'),
           (4, 'MAUÁ'),
           (5, 'SANTO ANDRÉ'),
           (5, 'ITU'),
           (5, 'SÃO PAULO');

# Inserindo os dados da tabela 'PROJETO'
INSERT INTO PROJETO
    (Proj_nome, Proj_numero, Proj_local, Dnum)
    VALUES ('PRODUTO_X', 1, 'SANTO ANDRÉ', 5), 
           ('PRODUTO_Y', 2, 'ITU', 5), 
           ('PRODUTO_Z', 3, 'SÃO PAULO', 5), 
           ('INFORMATIZAÇÃO', 10, 'MAUÁ', 4), 
           ('REORGANIZAÇÃO', 20, 'SÃO PAULO', 1), 
           ('NOVOS_BENEFICIOS', 30, 'MAUÁ', 4);


# Inserindo os dados da tabela 'TRABALHA_EM'
INSERT INTO TRABALHA_EM
    (Fcpf, Pnr, Horas)
    VALUES ('12345678966', 1,  32.5),
           ('12345678966', 2,   7.5),
           ('66688444476', 3,  40.0),
           ('45345345376', 1,  20.0),
           ('45345345376', 2,  20.0),
           ('33344555587', 2,  10.0),
           ('33344555587', 3,  10.0),
           ('33344555587', 10, 10.0),
           ('33344555587', 20, 10.0),
           ('99988777767', 30, 30.0),
           ('99988777767', 10, 10.0),
           ('98798798733', 10, 35.0),
           ('98798798733', 30,  5.0),
           ('98765432168', 30, 20.0),
           ('98765432168', 20, 15.0),
           ('88866555576', 20, NULL);
           
# inserindo os dados da tabela 'DEPENDENTE'
INSERT INTO DEPENDENTE 
    (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco)
    VALUES ('33344555587', 'ALICIA', 'F', '1986-04-05', 'FILHA'),
           ('33344555587', 'TIAGO', 'M', '1983-10-25', 'FILHO'),
           ('33344555587', 'JANAÍNA', 'F', '1958-05-03', 'ESPOSA'),
           ('98765432168', 'ANTONIO', 'M', '1942-02-28', 'MARIDO'),
           ('12345678966', 'MICHAEL', 'M', '1988-01-04', 'FILHO'),
           ('12345678966', 'ALICIA', 'F', '1988-12-30', 'FILHA'),
           ('12345678966', 'ELIZABETH', 'F', '1967-05-05', 'ESPOSA');

# Adicionado as chaves estrangeiras

/* Colocando cpf_gerente como foreign key */
ALTER TABLE DEPARTAMENTO ADD CONSTRAINT fk_departamento_cpf_gerente
FOREIGN KEY (cpf_gerente) REFERENCES FUNCIONARIO(CPF);

ALTER TABLE TRABALHA_EM ADD CONSTRAINT fk_trabalha_em_Fcpf
FOREIGN KEY (Fcpf) REFERENCES FUNCIONARIO(CPf);

ALTER TABLE TRABALHA_EM ADD CONSTRAINT fk_trabalha_em_Pnr
FOREIGN KEY (Pnr) REFERENCES PROJETO(Proj_numero);

ALTER TABLE DEPENDENTE ADD CONSTRAINT fk_dependente_Fcpf
FOREIGN KEY (Fcpf) REFERENCES FUNCIONARIO(CPF);

ALTER TABLE FUNCIONARIO ADD CONSTRAINT fk_funcionario_Cpf_supervisor
FOREIGN KEY (Cpf_supervisor) REFERENCES FUNCIONARIO(CPF);

ALTER TABLE FUNCIONARIO ADD CONSTRAINT fk_funcionario_dnr
FOREIGN KEY (Dnr) REFERENCES DEPARTAMENTO(Dnumero);

ALTER TABLE PROJETO ADD CONSTRAINT fk_projeto_Dnum
FOREIGN KEY (Dnum) REFERENCES DEPARTAMENTO(Dnumero);

ALTER TABLE LOCALIZACAO_DEP ADD CONSTRAINT fk_localizacao_dep
FOREIGN KEY (Dnumero) REFERENCES DEPARTAMENTO(Dnumero);

# Setando os cpf´s dos gerentes
SELECT * FROM departamento WHERE Dnumero = 1;
UPDATE departamento SET Cpf_gerente = '88866555576' WHERE Dnumero = 1;

SELECT * FROM departamento WHERE Dnumero = 4;
UPDATE departamento SET Cpf_gerente = '98765432168' WHERE Dnumero = 4;

SELECT * FROM departamento WHERE Dnumero = 5;
UPDATE departamento SET Cpf_gerente = '33344555587' WHERE Dnumero = 5;


SELECT * FROM funcionario;
SELECT * FROM departamento;
SELECT * FROM localizacao_dep;
SELECT * FROM trabalha_em;
SELECT * FROM projeto;
SELECT * FROM dependente;
SHOW TABLES;
