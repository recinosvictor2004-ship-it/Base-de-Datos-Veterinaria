USE veterinaria;


SELECT nombre AS nombre_mascota, especie AS tipo
FROM mascota;


SELECT d.nombre AS dueño, m.nombre AS mascota
FROM dueno d
JOIN mascota m ON d.cedula = m.cedula_dueno;


SELECT nombre, especie
FROM mascota
WHERE vacunada = TRUE;


SELECT nombre, precio_base
FROM servicio
ORDER BY precio_base DESC;


SELECT COUNT(*) AS total_mascotas
FROM mascota;


SELECT AVG(edad) AS promedio_edad
FROM mascota;


SELECT especie, COUNT(*) AS cantidad
FROM mascota
GROUP BY especie;


SELECT especie, COUNT(*) AS cantidad
FROM mascota
GROUP BY especie
HAVING COUNT(*) > 2;


SELECT m.nombre AS mascota, v.fecha, s.nombre AS servicio
FROM visita v
JOIN mascota m ON v.id_mascota = m.id_mascota
JOIN servicio s ON v.id_servicio = s.id_servicio
WHERE m.id_mascota = 1;


SELECT v.id_visita, t.nombre AS tratamiento
FROM tratamiento t
JOIN visita v ON t.id_visita = v.id_visita;


SELECT nombre, edad
FROM mascota
WHERE edad > (
    SELECT AVG(edad) FROM mascota
);


SELECT nombre, precio_base
FROM servicio
WHERE precio_base > (
    SELECT AVG(precio_base) FROM servicio
);


CREATE TABLE resumen_visitas AS
SELECT v.id_visita, m.nombre AS mascota, s.nombre AS servicio, v.fecha
FROM visita v
JOIN mascota m ON v.id_mascota = m.id_mascota
JOIN servicio s ON v.id_servicio = s.id_servicio;


SELECT * FROM resumen_visitas;


SELECT d.nombre, COUNT(m.id_mascota) AS cantidad_mascotas
FROM dueno d
JOIN mascota m ON d.cedula = m.cedula_dueno
GROUP BY d.cedula
HAVING COUNT(m.id_mascota) > 1;
