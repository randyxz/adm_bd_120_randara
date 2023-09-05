create database filmes;
use filmes;

create table filmes (
	id_filme int,
    titulo varchar(60),
    genero varchar(45),
    duracao varchar(45),
    ano_lancamento int,
    preco_aluguel double,
	primary key (id_filme)
);

create table atuacoes (
	id_protagonista int,
    id_filme int,
    id_autor int,
    foreign key(id_filme) references filmes(id_filme),
    foreign key(id_autor) references atores(id_autor)
);

create table atores (
	id_autor int,
    nome_autor varchar(60),
    ano_nascimento int,
    nacionalidade varchar(20),
    sexo varchar(10),
    primary key (id_autor)
);

-- Dados dos filmes
INSERT INTO `filmes` VALUES (1,'Que mulher é essa?','Comédia','93',2001,2.09),(2,'A Senha','Drama','99',2001,2.19),(3,'Do que as mulheres gostam','Comédia','127',2001,2.59),(4,'Dia de Treinamento','Drama','122',2001,1.79),(5,'O Senhor dos Anéis: A sociedade do anel','Ficção e Fantasia','178',2001,2.59),(6,'Harry Potter e a Pedra Filosofal','Ficção e Fantasia','152',2001,2.69),(7,'Os Excêntricos Tenenbaums','Comédia','110',2002,1.89),(8,'Seu marido e minha mulher','Comédia','91',2002,2.59),(9,'11 de setembro','Drama','134',2002,2.99),(10,'Simone','Drama','117',2002,2.69),(11,'É hora do show','Comédia','95',2002,1.79),(12,'O Senhor dos Anéis: As duas torres','Ficção e Fantasia','179',2002,2.39),(13,'Harry Potter e a Câmara Secreta','Ficção e Fantasia','161',2002,1.79),(14,'O Novato','Mistério e Suspense','115',2003,1.69),(15,'Alguém tem que ceder','Comédia','128',2003,1.69),(16,'A última noite','Drama','135',2003,1.59),(17,'Revelações','Mistério e Suspense','106',2003,1.99),(18,'Lições Para Toda a Vida','Drama','111',2003,1.69),(19,'21 gramas','Drama','124',2003,2.09),(20,'Simplesmente amor','Comédia','135',2003,2.29),(21,'O Senhor dos Anéis: O retorno do rei','Ficção e Fantasia','200',2003,1.99),(22,'Visões','Arte','107',2004,2.59),(23,'Dança comigo','Drama','106',2004,1.69),(24,'Uma Eleição Muito Atrapalhada','Comédia','110',2004,2.89),(25,'Bridget Jones: No Limite da Razão','Drama','108',2004,2.89),(26,'Ray','Drama','152',2004,2.59),(27,'Monster - Desejo Assassino','Drama','109',2004,2.09),(28,'Harry Potter e o Prisioneiro de Azkabam','Ficção e Fantasia','142',2004,1.69),(29,'Tudo por Dinheiro','Drama','122',2005,2.79),(30,'Capote','Drama','114',2005,2.39),(31,'Harry Potter e o Cálice de Fogo','Ficção e Fantasia','157',2005,2.69),(32,'Falsária','Drama','93',2006,2.89),(33,'V de Vingança','Drama','132',2006,1.59),(34,'Armações do Amor','Drama','97',2006,1.99),(35,'Happy Feet','Animação','108',2006,1.79),(36,'As Torres Gêmeas','Drama','129',2006,1.59),(37,'Candy','Drama','116',2006,1.59),(38,'A casa do lago','Drama','99',2006,2.49),(39,'Não estou lá','Drama','135',2007,1.79),(40,'Quando Me Apaixono','Drama','100',2007,1.99),(41,'O Reino','Drama','110',2007,2.09),(42,'Onde os Fracos Não Têm Vez','Drama','122',2007,1.49),(43,'Invasores','Mistério e Suspense','99',2007,2.09),(44,'Harry Potter e a Ordem da Fênix','Ficção e Fantasia','138',2007,2.49),(45,'Queime Depois de Ler','Drama','96',2008,2.39),(46,'Sleepwalking','Drama','101',2008,1.79),(47,'Um Amor de Tesouro','Ação e Aventura','112',2008,2.69),(48,'Astro Boy','Ação e Aventura','94',2009,2.89),(49,'Harry Potter e o Enigma do Príncipe','Ficção e Fantasia','153',2009,1.59),(50,'Inverno da Alma','Drama','100',2010,2.69),(51,'Uma Manhã Gloriosa','Comédia','107',2010,2.99),(52,'Jogo de Poder','Drama','108',2010,2.89),(53,'O Vencedor','Ação e Aventura','116',2010,2.49),(54,'Harry Potter e as Relíquias da Morte: Parte 1','Ficção e Fantasia','146',2010,2.79),(55,'Mulheres ao Ataque','Drama','102',2011,1.69),(56,'Cada Um Tem a Gêmea Que Merece','Comédia','91',2011,2.09),(57,'Jovens Adultos','Drama','94',2011,1.99),(58,'Histórias Cruzadas','Drama','146',2011,2.49),(59,'Pior dos Pecados','Mistério e Suspense','111',2011,2.39),(60,'Morte Negra','Drama','102',2011,2.69),(61,'Harry Potter e as Relíquias da Morte: Parte 2','Ficção e Fantasia','130',2011,1.99),(62,'As Sessões','Drama','95',2012,2.29),(63,'Django Livre','Ação e Aventura','165',2012,2.69),(64,'A Viagem','Drama','172',2012,2.89),(65,'Motoqueiro Fantasma - Espírito de Vingança','Ação e Aventura','96',2012,1.79),(66,'Jogos Vorazes','Drama','142',2012,1.59),(67,'O Ataque','Drama','131',2013,1.59),(68,'Sem proteção','Mistério e Suspense','125',2013,2.39),(69,'Sangue no Gelo','Mistério e Suspense','105',2013,2.49),(70,'Capitão Phillips','Drama','134',2013,1.59),(71,'Rio 2','Animação','101',2014,1.79);

-- Dados dos atores
INSERT INTO `atores` VALUES (1,'Abbie Cornish',1982,'Austrália','feminino'),(2,'Adam Sandler',1966,'EUA','masculino'),(3,'Al Pacino',1940,'EUA','masculino'),(4,'Amy Adams',1974,'EUA','feminino'),(5,'Andrea Riseborough',1981,'Reino Unido','feminino'),(6,'Anjelica Huston',1951,'EUA','feminino'),(7,'Annasophia Robb',1993,'EUA','feminino'),(8,'Anne Hathaway',1982,'EUA','feminino'),(9,'Anthony Hopkins',1937,'Reino Unido','masculino'),(10,'Barkhad Abdi',1985,'Somália','masculino'),(11,'Barry Pepper',1970,'Canadá','masculino'),(12,'Benicio Del Toro',1967,'Porto Rico','masculino'),(13,'Bette Midler',1945,'EUA','feminino'),(14,'Bill Nighy',1949,'Reino Unido','masculino'),(15,'Bridget Moynahan',1971,'EUA','feminino'),(16,'Bruce Dern',1936,'EUA','masculino'),(17,'Bruce McGill',1950,'EUA','masculino'),(18,'Bryce Dallas Howard',1981,'EUA','feminino'),(19,'Carice van Houten',1976,'Holanda','feminino'),(20,'Cate Blanchett',1969,'Austrália','feminino'),(21,'Catherine Keener',1959,'EUA','feminino'),(22,'Channing Tatum',1980,'EUA','masculino'),(23,'Charlize Theron',1975,'África do Sul','feminino'),(24,'Chris Cooper',1951,'EUA','masculino'),(25,'Christian Bale',1974,'Reino Unido','masculino'),(26,'Christina Ricci',1980,'EUA','feminino'),(27,'Christoph Waltz',1956,'Áustria','masculino'),(28,'Ciaran Hinds',1953,'Irlanda do Norte','masculino'),(29,'Colin Farrell',1976,'Irlanda','masculino'),(30,'Colin Firth',1960,'Reino Unido','masculino'),(31,'Daniel Craig',1968,'Reino Unido','masculino'),(32,'Daniel Radcliffe',1989,'Reino Unido','masculino'),(33,'Denzel Washington',1954,'EUA','masculino'),(34,'Diane Keaton',1946,'EUA','feminino'),(35,'Donald Sutherland',1935,'Canadá','masculino'),(36,'Eddie Murphy',1961,'EUA','masculino'),(37,'Eddie Redmayne',1982,'Reino Unido','masculino'),(38,'Ed Harris',1950,'EUA','masculino'),(39,'Edward Norton',1969,'EUA','masculino'),(40,'Elijah Wood',1981,'EUA','masculino'),(41,'Emma Stone',1988,'EUA','feminino'),(42,'Emma Watson',1990,'Reino Unido','feminino'),(43,'Ethan Hawke',1970,'EUA','masculino'),(44,'Fernando Tielve',1986,'Espanha','masculino'),(45,'Frances McDormand',1957,'EUA','feminino'),(46,'Freddie Highmore',1992,'Reino Unido','masculino'),(47,'Gene Hackman',1930,'EUA','masculino'),(48,'Geoffrey Rush',1951,'Austrália','masculino'),(49,'George Clooney',1961,'EUA','masculino'),(50,'Gwyneth Paltrow',1972,'EUA','feminino'),(51,'Haley Joel Osment',1988,'EUA','masculino'),(52,'Halle Berry',1966,'EUA','feminino'),(53,'Harrison Ford',1942,'EUA','masculino'),(54,'Heath Ledger',1979,'Austrália','masculino'),(55,'Hector Bordoni',1965,'Argentina','masculino'),(56,'Helen Hunt',1963,'EUA','feminino'),(57,'Helen Mirren',1945,'Reino Unido','feminino'),(58,'Hugh Grant',1960,'Reino Unido','masculino'),(59,'Hugh Jackman',1968,'Austrália','masculino'),(60,'Hugo Weaving',1960,'Austrália','masculino'),(61,'Ian McKellen',1939,'Reino Unido','masculino'),(62,'Irene Escolar',1988,'Espanha','feminino'),(63,'Jack Nicholson',1937,'EUA','masculino'),(64,'Jamie Foxx',1967,'EUA','masculino'),(65,'Javier Bardem',1969,'Espanha','masculino'),(66,'Jennifer Garner',1972,'EUA','feminino'),(67,'Jennifer Lawrence',1990,'EUA','feminino'),(68,'Jennifer Lopez',1969,'EUA','feminino'),(69,'Jeremy Northam',1961,'Reino Unido','masculino'),(70,'Jesse Eisenberg',1983,'EUA','masculino'),(71,'Jim Broadbent',1949,'Reino Unido','masculino'),(72,'John Cusack',1966,'EUA','masculino'),(73,'John Hawkes',1959,'EUA','masculino'),(74,'John Malkovich',1953,'EUA','masculino'),(75,'John Travolta',1954,'EUA','masculino'),(76,'Josh Brolin',1968,'EUA','masculino'),(77,'Josh Hutcherson',1992,'EUA','masculino'),(78,'Julie Christie',1940,'Reino Unido','feminino'),(79,'Kate Hudson',1979,'EUA','feminino'),(80,'Katie Holmes',1978,'EUA','feminino'),(81,'Keanu Reeves',1964,'Canadá','masculino'),(82,'Kerry Washington',1977,'EUA','feminino'),(83,'Kevin Breznahan',1968,'EUA','masculino'),(84,'Kristen Bell',1980,'EUA','feminino'),(85,'Leonardo DiCaprio',1974,'EUA','masculino'),(86,'Liam Hemsworth',1990,'Austrália','masculino'),(87,'Liam Neeson',1952,'Irlanda do Norte','masculino'),(88,'Lisa Kudrow',1963,'EUA','feminino'),(89,'Liv Tyler',1977,'EUA','feminino'),(90,'Maggie Gyllenhaal',1977,'EUA','feminino'),(91,'Marcia Gay Harden',1959,'EUA','feminino'),(92,'Marisa Tomei',1964,'EUA','feminino'),(93,'Mark Wahlberg',1971,'EUA','masculino'),(94,'Maryam Karimi',1980,'Afeganistão','feminino'),(95,'Matt Dillon',1964,'EUA','masculino'),(96,'Matthew McConaughey',1969,'EUA','masculino'),(97,'Mel Gibson',1956,'EUA','masculino'),(98,'Michael Caine',1933,'Reino Unido','masculino'),(99,'Michael Pena',1976,'EUA','masculino'),(100,'Mohamad Dolati',1989,'Bahrein','masculino'),(101,'Naomi Watts',1968,'Reino Unido','feminino'),(102,'Natalie Portman',1981,'Israel','feminino'),(103,'Natasha Richardson',1963,'Reino Unido','feminino'),(104,'Nick Stahl',1979,'EUA','masculino'),(105,'Nicolas Cage',1964,'EUA','masculino'),(106,'Nicole Kidman',1967,'Austrália','feminino'),(107,'Patrick Swayze',1952,'EUA','masculino'),(108,'Patrick Wilson',1973,'EUA','masculino'),(109,'Patton Oswalt',1969,'EUA','masculino'),(110,'Paul Reiser',1956,'EUA','masculino'),(111,'Philip Seymour Hoffman',1967,'EUA','masculino'),(112,'Rachel McAdams',1978,'Canadá','feminino'),(113,'Rachel Roberts',1927,'Reino Unido','feminino'),(114,'Ray Romano',1957,'EUA','masculino'),(115,'Regina King',1971,'EUA','feminino'),(116,'Renee Zellweger',1969,'EUA','feminino'),(117,'Rene Russo',1954,'EUA','feminino'),(118,'Richard Gere',1949,'EUA','masculino'),(119,'Robert De Niro',1943,'EUA','masculino'),(120,'Robert Duvall',1931,'EUA','masculino'),(121,'Robert Redford',1936,'EUA','masculino'),(122,'Robin Williams',1951,'EUA','masculino'),(123,'Rupert Grint',1988,'Reino Unido','masculino'),(124,'Sam Riley',1980,'Reino Unido','masculino'),(125,'Sandra Bullock',1964,'EUA','feminino'),(126,'Sarah Jessica Parker',1965,'EUA','feminino'),(127,'Scarlett Johansson',1984,'EUA','feminino'),(128,'Scott Cohen',1961,'EUA','masculino'),(129,'Scott Glenn',1939,'EUA','masculino'),(130,'Sean Bean',1959,'Reino Unido','masculino'),(131,'Sean Penn',1960,'EUA','masculino'),(132,'Shia LaBeouf',1986,'EUA','masculino'),(133,'Shohreh Aghdashloo',1952,'Irã','feminino'),(134,'Stephen Rea',1946,'Irlanda','masculino'),(135,'Susan Sarandon',1946,'EUA','feminino'),(136,'Tom Hanks',1956,'EUA','masculino'),(137,'Tommy Lee Jones',1946,'EUA','masculino'),(138,'Tom Wilkinson',1948,'Reino Unido','masculino'),(139,'Vanessa Hudgens',1988,'EUA','feminino'),(140,'Viggo Mortensen',1958,'EUA','masculino'),(141,'Viola Davis',1965,'EUA','feminino'),(142,'Violante Placido',1976,'Itália','feminino'),(143,'will.i.am',1975,'EUA','masculino'),(144,'William H. Macy',1950,'EUA','masculino'),(145,'Zooey Deschanel',1980,'EUA','feminino');

-- Dados dos atuacoes
INSERT INTO `atuacoes` VALUES (1,37,1),(2,56,2),(3,10,3),(4,14,3),(5,29,3),(6,56,3),(7,53,4),(8,59,5),(9,7,6),(10,46,7),(11,71,8),(12,17,9),(13,70,10),(14,16,11),(15,19,12),(16,40,13),(17,20,14),(18,14,15),(19,27,16),(20,52,17),(21,58,18),(22,60,19),(23,39,20),(24,10,21),(25,30,21),(26,70,21),(27,67,22),(28,8,23),(29,27,23),(30,46,23),(31,57,23),(32,41,24),(33,30,24),(34,53,25),(35,39,25),(36,27,26),(37,63,27),(38,65,28),(39,14,29),(40,25,30),(41,40,30),(42,43,31),(43,6,32),(44,13,32),(45,28,32),(46,31,32),(47,44,32),(48,49,32),(49,54,32),(50,61,32),(51,4,33),(52,15,34),(53,51,34),(54,47,35),(55,11,36),(56,60,37),(57,17,38),(58,16,39),(59,5,40),(60,12,40),(61,21,40),(62,35,40),(63,58,41),(64,6,42),(65,13,42),(66,28,42),(67,31,42),(68,44,42),(69,49,42),(70,54,42),(71,61,42),(72,4,43),(73,22,44),(74,45,45),(75,15,45),(76,48,46),(77,7,47),(78,24,47),(79,37,48),(80,45,49),(81,7,50),(82,18,51),(83,64,52),(84,2,52),(85,51,53),(86,37,54),(87,22,55),(88,3,56),(89,32,56),(90,40,56),(91,62,56),(92,59,57),(93,20,58),(94,25,58),(95,2,59),(96,35,59),(97,33,60),(98,5,61),(99,12,61),(100,21,61),(101,22,62),(102,15,63),(103,26,64),(104,41,64),(105,63,64),(106,67,64),(107,42,65),(108,41,66),(109,50,67),(110,66,67),(111,23,68),(112,43,69),(113,71,70),(114,64,71),(115,69,72),(116,62,73),(117,50,73),(118,45,74),(119,2,75),(120,42,76),(121,66,77),(122,68,78),(123,47,79),(124,56,80),(125,38,81),(126,26,82),(127,50,83),(128,48,84),(129,63,85),(130,66,86),(131,20,87),(132,55,88),(133,1,89),(134,36,90),(135,67,90),(136,24,91),(137,3,92),(138,53,93),(139,9,94),(140,1,95),(141,34,96),(142,47,96),(143,29,96),(144,3,97),(145,18,98),(146,36,99),(147,9,100),(148,52,101),(149,19,101),(150,33,102),(151,55,102),(152,8,103),(153,46,104),(154,36,105),(155,65,105),(156,69,105),(157,48,105),(158,43,106),(159,17,106),(160,8,107),(161,57,108),(162,57,109),(163,1,110),(164,30,111),(165,16,111),(166,51,112),(167,10,113),(168,24,114),(169,26,115),(170,25,116),(171,11,117),(172,29,117),(173,23,118),(174,39,118),(175,11,119),(176,18,120),(177,68,121),(178,35,122),(179,6,123),(180,13,123),(181,28,123),(182,31,123),(183,44,123),(184,49,123),(185,54,123),(186,61,123),(187,59,124),(188,38,125),(189,34,126),(190,32,127),(191,55,128),(192,4,129),(193,60,130),(194,9,131),(195,19,131),(196,52,131),(197,68,132),(198,38,133),(199,33,134),(200,23,135),(201,64,136),(202,70,136),(203,42,137),(204,32,138),(205,69,139),(206,5,140),(207,12,140),(208,21,140),(209,58,141),(210,65,142),(211,71,143),(212,62,144),(213,34,145);

-- Faça a consulta do titulo, gênero, ano de lançamento do filme e nome, nacionalidade e sexo dos atores
select f.titulo, f.genero, nome_autor, a.nacionalidade, a.sexo, f.ano_lancamento from atuacoes at 
inner join filmes f
on f.id_filme = at.id_filme
inner join atores a
on at.id_autor = a.id_autor;

-- Consulte titulo e ano de lançamento dos filmes que tiveram como ator o Al Pacino
select f.titulo, f.ano_lancamento from filmes f
inner join atuacoes at
on f.id_filme = at.id_filme
inner join atores a
on at.id_autor = a.id_autor
where nome_autor = 'Al Pacino';

-- Consulte nome do ator e ano de nascimento dos atores que atuaram no filme Jogos Vorazes
select nome_autor, a.ano_nascimento from filmes f 
inner join atuacoes at
on f.id_filme = at.id_filme
inner join atores a
on at.id_autor = a.id_autor
where f.titulo = 'Jogos Vorazes';


select f.titulo, f.genero, a.nome_autor from atuacoes at 
inner join filmes f
on f.id_filme = at.id_filme
inner join atores a
on at.id_autor = a.id_autor
where f.titulo like 'r%';

-- Consulte nome e nacionalidade dos atores que nasceram no Reino Unido e atuaram em filmes de Drama
SELECT nome_autor, a.nacionalidade
FROM filmes f
INNER JOIN atuacoes at ON f.id_filme = at.id_filme
INNER JOIN atores a ON at.id_autor = a.id_autor
WHERE nacionalidade LIKE 'Reino%'
AND f.genero LIKE 'drama';


-- Listar nome dos atores que atuaram em filmes lançados antes de 2010
select nome_autor, ano_lancamento from atuacoes at
inner join filmes f
on f.id_filme = at.id_filme
inner join atores a
on at.id_autor = a.id_autor
where ano_lancamento < 2010;

-- Listar os atores e seus filmes, ordenados pelo ano de lançamento do filme de forma decrescente
select a.nome_autor, f.titulo, f.ano_lancamento from filmes f
inner join atuacoes at
on f.id_filme = at.id_filme
inner join atores a
on at.id_autor = a.id_autor
order by f.ano_lancamento desc 