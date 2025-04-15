CREATE DATABASE IF NOT EXISTS dbsdhsph313jz9;
USE dbsdhsph313jz9;

-- Crear tabla de productos
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    imagen VARCHAR(255) NOT NULL -- Ruta de la imagen
);

-- Crear tabla para registrar las compras
CREATE TABLE compras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto_id INT NOT NULL,
    nombre_producto VARCHAR(100),
    precio DECIMAL(10, 2),
    fecha_compra TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar productos con imágenes
INSERT INTO productos (nombre, precio, imagen) VALUES
('Jersey Bayern', 100.00, 'producto1.png'),
('Jersey Inter Milán', 100.00, 'producto2.png'),
('Jersey Arsenal', 80.00, 'producto3.png'),
('Jersey Atlético Marid', 80.00, 'producto4.png'),
('Jersey Athletic Club', 80.00, 'producto5.png'),
('Jersey Chelsea', 80.00, 'producto6.png');