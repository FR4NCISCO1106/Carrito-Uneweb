<?php
$host ='localhost';
$dbname = 'maria';
$username='root';
$password='';
$conn = new PDO ("mysql:host=$host;dbname=$dbname", $username, $password);

$stmt = $conn -> query("SELECT id, nombre, precio, imagen FROM productos");
$productos = $stmt->fetchALL(PDO::FETCH_ASSOC);
echo json_encode($productos);
?>