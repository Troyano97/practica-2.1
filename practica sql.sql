SHOW DATABASE;

CREATE DATABASE primer_tabla;
USE primer_tabla;

show tables;

CREATE TABLE primer_tabla(
    -> id_registro INT NOT NULL AUTO_INCREMENT,
    -> marca VARCHAR(20) NOT NULL,
    -> modelo VARCHAR(20) NOT NULL,
    -> anio_lanzamiento INT,
    -> PRIMARY KEY (id_registro)
    -> );
    
DESCRIBE primer_tabla;

/*me falto agregar dato not null a la columna anio_lanzamiento*/
ALTER TABLE primer_tabla MODIFY COLUMN anio_lanzamiento int NOT NULL;

DESCRIBE primer_tabla;

INSERT INTO primer_tabla (marca, modelo, anio_lanzamiento) VALUES ("ford","falcon", 1963);
INSERT INTO primer_tabla (marca, modelo, anio_lanzamiento) VALUES ("chevrolet","chevy", 1969);
INSERT INTO primer_tabla (marca, modelo, anio_lanzamiento) VALUES ("ika","torino", 1966);
INSERT INTO primer_tabla (marca, modelo, anio_lanzamiento) VALUES ("dodge","1500", 1971);
INSERT INTO primer_tabla (marca, modelo, anio_lanzamiento) VALUES ("siam","di tella", 1960);

SELECT * FROM primer_tabla;

UPDATE primer_tabla SET marca = "peugeot", modelo = "504", anio_lanzamiento = 1968 WHERE id_registro = 1;
UPDATE primer_tabla SET marca = "ford", modelo = "mustang", anio_lanzamiento = 1965 WHERE id_registro = 2;

DELETE FROM primer_tabla WHERE id_registro = 3;

INSERT INTO primer_tabla (marca, modelo, anio_lanzamiento) VALUES ("Citroen","2cv", 1958);
INSERT INTO primer_tabla (marca, modelo, anio_lanzamiento) VALUES ("Fiat","600", 1960);

DELETE FROM primer_tabla WHERE id_registro = 6;

UPDATE primer_tabla SET marca = "Renault", modelo = "Fuego", anio_lanzamiento = 1980 WHERE id_registro = 8;