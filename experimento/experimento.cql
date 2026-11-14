CREATE KEYSPACE IF NOT EXISTS uteq
  WITH replication = {'class': 'NetworkTopologyStrategy', 'dc1': 3};
USE uteq;
CREATE TABLE IF NOT EXISTS reservas (id int PRIMARY KEY, pasajero text, vuelo text, asiento text);
CONSISTENCY ALL;
INSERT INTO reservas (id, pasajero, vuelo, asiento) VALUES (1, 'Angel Zambrano', 'GYE-UIO 102', '12A');
INSERT INTO reservas (id, pasajero, vuelo, asiento) VALUES (2, 'Prueba UTEQ', 'UIO-GYE 205', '3C');
SELECT * FROM reservas;