CREATE TABLE passageiro
(
nome VARCHAR(40)NOT NULL,
cpf VARCHAR (20) NOT NULL,
nascimento VARCHAR(20)NOT NULL,
sexo VARCHAR(20)NOT NULL

);


ALTER TABLE passageiro
ADD PRIMARY KEY (nome)

ALTER TABLE motorista
ADD PRIMARY KEY (nome)

CREATE TABLE corrida
(
motorista VARCHAR(20),
passageiro VARCHAR(20),
valor FLOAT (20)NOT NULL,
FOREIGN KEY (motorista) REFERENCES motorista(nome)
);

ALTER TABLE corrida
ADD FOREIGN KEY (passageiro) REFERENCES passageiro(nome); 
