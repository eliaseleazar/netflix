CREATE TABLE detail_movie (
    detalle_id INT AUTO_INCREMENT,
    movie_id BIGINT,
    nombre_actor VARCHAR(255) NOT NULL,
    role VARCHAR(255) NOT NULL,
    biografia VARCHAR(1000) NOT NULL,
    PRIMARY KEY (detalle_id)
);

CREATE TABLE PELICULA_DT (
    movie_id BIGINT NOT NULL,
    detalle_id INT,  -- Cambiado a INT
    titulo VARCHAR(255) NOT NULL,
    lanzamiento DATE NOT NULL,
    genero VARCHAR(100) NOT NULL,
    director VARCHAR(255) NOT NULL,
    PRIMARY KEY (movie_id, detalle_id),
    FOREIGN KEY (detalle_id) REFERENCES detail_movie (detalle_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);