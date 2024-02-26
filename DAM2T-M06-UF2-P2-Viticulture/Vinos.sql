create database Vinos;
use Vinos;

CREATE TABLE vid (
    id_vid INT PRIMARY KEY,
    cantidad INT,
    tipo_vid VARCHAR(255),
    id_bodega INT,
    id_campo INT,
    FOREIGN KEY (id_bodega) REFERENCES bodega(id_bodega),
    FOREIGN KEY (id_campo) REFERENCES campo(id_campo)
);


CREATE TABLE bodega (
    id_bodega INT PRIMARY KEY,
    nombre_bodega VARCHAR(255)
);


CREATE TABLE campo (
    id_campo INT PRIMARY KEY,
    id_vid INT,
    FOREIGN KEY (id_vid) REFERENCES vid(id_vid)
);
