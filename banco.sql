CREATE TABLE passageiro
(
nome VARCHAR(40)NOT NULL,
cpf VARCHAR (20) NOT NULL,
nascimento VARCHAR(20)NOT NULL,
sexo VARCHAR(10)NOT NULL

);


ALTER TABLE passageiro
ADD PRIMARY KEY (nome)

CREATE TABLE motorista
(
nome VARCHAR(40)NOT NULL,
cpf VARCHAR (10) NOT NULL,
nascimento VARCHAR(20)NOT NULL,
sexo VARCHAR(10)NOT NULL,
modeloCarro(10)NOT NULL,  
statusMotorista(10) NOT NULL
);

ALTER TABLE motorista
ADD PRIMARY KEY (cpf)

CREATE TABLE corrida
(
cpfMotorista VARCHAR(10),
cpfPassageiro VARCHAR(10),
valor FLOAT (20)NOT NULL,
CONSTRAINT CPK_corrida PRIMARY KEY (cpfMotorista, cpfPassageiro),
CONSTRAINT FK_cpf_passageiro FOREIGN KEY (cpfMotorista) REFERENCES motorista (cpf),
CONSTRAINT FK_cpf_motorista FOREIGN KEY (cpfPassageiro) REFERENCES passageiro (cpf)
);
