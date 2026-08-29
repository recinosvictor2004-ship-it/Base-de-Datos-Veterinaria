USE veterinaria;


INSERT INTO dueno (cedula, nombre, telefono, direccion) VALUES
(101, 'Carlos López', '5551-0001', 'Zona 3, Guatemala'),
(102, 'María Pérez', '5551-0002', 'Zona 5, Guatemala'),
(103, 'Luis Ramírez', '5551-0003', 'Mixco, Zona 4'),
(104, 'Ana González', '5551-0004', 'Villa Nueva'),
(105, 'Pedro Castillo', '5551-0005', 'San Cristóbal');


INSERT INTO mascota (id_mascota, nombre, especie, raza, edad, sexo, vacunada, cedula_dueno) VALUES
(1, 'Firulais', 'Perro', 'Labrador', 3, 'M', TRUE, 101),
(2, 'Mishi', 'Gato', 'Siames', 2, 'F', TRUE, 101),
(3, 'Rocky', 'Perro', 'Pitbull', 4, 'M', FALSE, 102),
(4, 'Nala', 'Gato', 'Persa', 1, 'F', TRUE, 102),
(5, 'Toby', 'Perro', 'Chihuahua', 5, 'M', TRUE, 103),
(6, 'Luna', 'Gato', 'Criollo', 3, 'F', FALSE, 103),
(7, 'Max', 'Perro', 'Pastor Alemán', 6, 'M', TRUE, 104),
(8, 'Kira', 'Gato', 'Bengalí', 2, 'F', TRUE, 104),
(9, 'Bobby', 'Perro', 'Golden Retriever', 4, 'M', TRUE, 105),
(10, 'Pelusa', 'Gato', 'Angora', 1, 'F', FALSE, 105);


INSERT INTO servicio (id_servicio, nombre, descripcion, precio_base) VALUES
(1, 'Baño', 'Baño completo para mascota', 80.00),
(2, 'Corte de uñas', 'Recorte y limpieza de uñas', 40.00),
(3, 'Consulta médica', 'Revisión general por veterinario', 120.00),
(4, 'Desparasitación', 'Tratamiento contra parásitos', 90.00),
(5, 'Vacunación', 'Aplicación de vacuna correspondiente', 150.00);


INSERT INTO visita (id_visita, fecha, id_mascota, id_servicio) VALUES
(1, '2026-01-10', 1, 1),
(2, '2026-01-15', 2, 3),
(3, '2026-02-01', 3, 4),
(4, '2026-02-10', 4, 2),
(5, '2026-03-05', 5, 3),
(6, '2026-03-20', 6, 1),
(7, '2026-04-01', 7, 5),
(8, '2026-04-15', 8, 3),
(9, '2026-05-02', 9, 4),
(10, '2026-05-18', 10, 2);


INSERT INTO tratamiento (id_tratamiento, nombre, observaciones, id_visita) VALUES
(1, 'Antibiótico', 'Administrar por 7 días', 2),
(2, 'Vitaminas', 'Refuerzo nutricional', 3),
(3, 'Antipulgas', 'Aplicar cada 30 días', 6),
(4, 'Analgésico', 'Solo si presenta dolor', 8),
(5, 'Antiinflamatorio', 'Dosis baja', 10);
