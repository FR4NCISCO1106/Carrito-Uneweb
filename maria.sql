CREATE DATABASE IF NOT EXISTS maria;
USE maria;

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
('Producto 1', 10.00, 'producto1.png'),
('Producto 2', 15.00, 'producto2.png'),
('Producto 3', 20.00, 'producto3.png'),
('Producto 4', 25.00, 'producto4.png'),
('Producto 5', 30.00, 'producto5.png'),
('Producto 6', 35.00, 'producto6.png');