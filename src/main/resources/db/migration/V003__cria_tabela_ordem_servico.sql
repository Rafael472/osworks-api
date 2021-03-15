CREATE TABLE ORDEM_SERVICO (
	ID BIGINT NOT NULL AUTO_INCREMENT,
    CLIENTE_ID BIGINT NOT NULL,
    DESCRICAO TEXT NOT NULL,
    PRECO DECIMAL(19,2) NOT NULL,
    STATUS VARCHAR(20) NOT NULL,
    DATA_ABERTURA datetime NOT NULL,
    DATA_FINALIZACAO DATETIME,
    
    primary key (ID)
);

ALTER TABLE ORDEM_SERVICO ADD CONSTRAINT FK_ORDEM_SERVICO_CLIENTE
foreign key (CLIENTE_ID) references CLIENTE (ID);