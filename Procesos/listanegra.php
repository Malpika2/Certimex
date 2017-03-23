<?php
	include("conexion.php");
	
	$nombre =$_POST['nombre'];
	$producto = $_POST['producto'];
	$justificacion = $_POST['justificacion'];
		
	
	$sql = "INSERT INTO listanegra(nombre,producto,justificacion) VALUES ('$nombre','$producto','$justificacion')";
	$resultado= $mysqli->query($sql);//Ejecuta insercion a tabla "listanegra"
	 
	header("Location:../Admin/listaNegra.php");
?>