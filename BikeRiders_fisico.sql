CREATE DATABASE BikeRiders;
USE BikeRiders;

CREATE TABLE usuario (
usr_id INT AUTO_INCREMENT,
usr_nome VARCHAR(50),
usr_email VARCHAR(65),
usr_senha VARCHAR(30),
PRIMARY KEY(usr_id)
);

CREATE TABLE noticia(
ntc_id INT AUTO_INCREMENT,
ntc_titulo VARCHAR(250),
ntc_subtitulo VARCHAR(500),
ntc_conteudo TEXT,
ntc_data DATE,
ntc_hora TIME,
fk_usr_id INT,
PRIMARY KEY (ntc_id)
);

ALTER TABLE noticia ADD FOREIGN KEY (fk_usr_id) REFERENCES usuario (usr_id);
