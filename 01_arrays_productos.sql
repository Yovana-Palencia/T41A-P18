-- Crear tabla productos con un array de etiquetas
CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL,
    etiquetas TEXT[]
);

-- Insertar productos con diferentes etiquetas
INSERT INTO productos (nombre, etiquetas) VALUES
('Laptop', ARRAY['tecnología', 'computadora', 'portátil']),
('Silla Gamer', ARRAY['hogar', 'ergonomía', 'tecnología']),
('Libro SQL', ARRAY['educación', 'programación', 'bases de datos']);

-- Consultar productos que contengan la etiqueta 'tecnología'
SELECT * 
FROM productos
WHERE 'tecnología' = ANY(etiquetas);
