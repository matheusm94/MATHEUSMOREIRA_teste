CREATE TABLE passageiro
(
cpf VARCHAR (20) NOT NULL PRIMARY KEY,
nome VARCHAR(40)NOT NULL,
nascimento DATE NOT NULL,
sexo VARCHAR(10)NOT NULL

);


CREATE TABLE motorista
(
cpf VARCHAR (10) NOT NULL PRIMARY KEY,  
nome VARCHAR(40)NOT NULL,
nascimento DATE NOT NULL,
sexo VARCHAR(10)NOT NULL,
modeloCarro VARCHAR(10)NOT NULL,  
statusMotorista VARCHAR(10) NOT NULL
);


CREATE TABLE corrida
(
cpfMotorista VARCHAR(10),
cpfPassageiro VARCHAR(10),
valor FLOAT (20)NOT NULL,
CONSTRAINT CPK_corrida PRIMARY KEY (cpfMotorista, cpfPassageiro),
CONSTRAINT FK_cpf_passageiro FOREIGN KEY (cpfMotorista) REFERENCES motorista (cpf),
CONSTRAINT FK_cpf_motorista FOREIGN KEY (cpfPassageiro) REFERENCES passageiro (cpf)
);
