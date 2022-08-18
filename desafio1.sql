DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.plano(
      plano_id INT PRIMARY KEY AUTO_INCREMENT,
      nome_do_plano varchar(50),
      valor DOUBLE
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.usuario(
      usuario_id INT PRIMARY KEY AUTO_INCREMENT,
      plano_id INT NOT NULL,
      nome_usuario VARCHAR(50),
      data_assinatura DATE,
      idade INT,
      FOREIGN KEY (plano_id) REFERENCES plano (plano_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.artista(
      artista_id INT PRIMARY KEY AUTO_INCREMENT,
      nome_do_artista VARCHAR(50) NOT NULL
  ) engine = InnoDB;
  
   CREATE TABLE SpotifyClone.album(
       album_id INT PRIMARY KEY AUTO_INCREMENT,
       artista_id INT NOT NULL,
       nome_do_album VARCHAR(50) NOT NULL,
       data_lancamento INT NOT NULL,
       FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
   ) engine = InnoDB;
  
   CREATE TABLE SpotifyClone.musica(
       musica_id INT PRIMARY KEY AUTO_INCREMENT,
       album_id INT NOT NULL,
       nome VARCHAR(50) NOT NULL,
       duracao INT NOT NULL,
        FOREIGN KEY (album_id) REFERENCES album (album_id)
   ) engine = InnoDB;
  
  
  CREATE TABLE SpotifyClone.musicas_reproduzidas(
      usuario_id INT NOT NULL,
      musica_id INT NOT NULL,
      data_reproducao DATETIME NOT NULL,
      PRIMARY KEY (usuario_id, data_reproducao),
      FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
      FOREIGN KEY (musica_id) REFERENCES musica (musica_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.seguindo(
      nome_artista_seguido VARCHAR(50),
	  artista_id INT,
      usuario_id INT NOT NULL,
      PRIMARY KEY (artista_id, usuario_id),
      FOREIGN KEY (artista_id) REFERENCES artista (artista_id),
      FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id)
  ) engine = InnoDB;
  
   INSERT INTO SpotifyClone.plano (plano_id, nome_do_plano, valor)
   VALUES
     (1, 'gratuito', 0.00 ),
     (2, 'universitario', 5.99),
     (3, 'pessoal', 6.99),
     (4, 'familiar', 7.99);

 INSERT INTO SpotifyClone.usuario (plano_id, nome_usuario, data_assinatura,idade)
   VALUES
     (1, 'Barbara Liskov', '2019-10-20', 82),
     (1, 'Robert Cecil Martin', '2017-01-06', 58),
     (4, 'Ada Lovelace', '2017-12-30', 37),
     (4, 'Martin Fowler', '2017-01-17', 46),
     (4, 'Sandi Metz', '2018-04-29', 58),
     (2, 'Paulo Freire', '2018-02-14', 19),
     (2, 'Bell Hooks', '2018-01-05', 26),
     (3, 'Christopher Alexander', '2019-06-05', 85),
     (3, 'Judith Butler', '2020-05-13', 45),
     (3, 'Jorge Amado', '2017-02-17', 58);
     
     INSERT INTO SpotifyClone.artista(nome_do_artista)
   VALUES
     ('Beyoncé'),
     ('Queen'),
     ('Elis Regina'),
     ('Baco Exu do Blues'),
     ('Blind Guardian'),
     ('Nina Simone');
     
     INSERT INTO SpotifyClone.album(artista_id, nome_do_album, data_lancamento)
   VALUES
     (1,'Renaissance', 2022),
     (2,'Jazz', 1978),
     (2,'Hot Space', 1982),
     (3,'Falso Brilhante',1998),
     (3,'Vento de Maio', 2001),
     (4,'QVVJFA?', '2003'),
     (5,'Somewhere Far Beyond', 2007),
     (6,'I Put A Spell On You', 2012);
     
     INSERT INTO SpotifyClone.musica(album_id, nome, duracao)
   VALUES
     (1,"BREAK MY SOUL",279) ,
     (1,"VIRGO’S GROOVE", 369),
     (1,"ALIEN SUPERSTAR",116),
     (2,"Don’t Stop Me Now",203),
     (3,"Under Pressure",152),
     (4,"Como Nossos Pais",105),
     (5,"O Medo de Amar é o Medo de Ser Livre",207),
     (6,"Samba em Paris",267),
     (7,"The Bard’s Song",244),
     (8,"Feeling Good",100);
     
     INSERT INTO SpotifyClone.seguindo(nome_artista_seguido,usuario_id, artista_id)
    VALUES
      ('Beyoncé',1, 1),
      ('Queen',1, 2),
      ('Elis Regina',1, 3),
      ('Beyoncé',2, 1),
      ('Elis Regina',2, 3),
      ('Queen',3, 2),
      ('Baco Exu do Blues',4, 4),
      ('Blind Guardian',5, 5),
      ('Nina Simone',5, 6),
      ('Nina Simone',6, 6),
      ('Beyoncé',6, 1),
      ('Nina Simone',7, 6),
      ('Elis Regina',9, 3),
      ('Queen',10, 2);
     
     INSERT INTO SpotifyClone.musicas_reproduzidas(usuario_id, musica_id, data_reproducao)
   VALUES
     (1, 8, "2022-02-28 10:45:55"),
     (1,2,"2020-05-02 05:30:35"),
     (1,10, "2020-03-06 11:22:33"),
     (2,10, "2022-08-05 08:05:17"),
     (2,7, "2020-01-02 07:40:33"),
     (3,10, "2020-11-13 16:55:13"),
     (3,2, "2020-12-05 18:38:30"),
     (4,8, "2021-08-15 17:10:10"),
     (5,8, "2022-01-09 01:44:33"),
     (5,5, "2020-08-06 15:23:43"),
     (6,7, "2017-01-24 00:31:17"),
     (6,1, "2017-10-12 12:35:20"),
     (7,4, "2011-12-15 22:30:49"),
     (8,4, "2012-03-17 14:56:41"),
     (9,9, "2022-02-24 21:14:22"),
     (10,3, "2015-12-13 08:30:22");
  