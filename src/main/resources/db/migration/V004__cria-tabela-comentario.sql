CREATE TABLE COMENTARIO (
ID BIGINT NOT NULL AUTO_INCREMENT,
ORDEM_SERVICO_ID BIGINT NOT NULL,
DESCRICAO TEXT NOT NULL,
DATA_ENVIO DATETIME NOT NULL,

PRIMARY KEY (ID)
);

ALTER TABLE COMENTARIO ADD CONSTRAINT FK_COMENTARIO_ORDEM_SERVICO
FOREIGN KEY (ORDEM_SERVICO_ID) REFERENCES ORDEM_SERVICO (ID);