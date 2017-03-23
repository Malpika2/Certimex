<?php
include("conexion.php");
$boton = $_POST['BtnEA'];
$nombre = $_POST['nombre'];
$producto = $_POST['producto'];
$id_lista = $_POST['id_lista'];
$justificacion = $_POST['justificacion'];

	if($boton == 'actualizar'){
		$consulta="UPDATE listanegra SET nombre='$nombre', producto='$producto', justificacion='$justificacion' WHERE listanegra.id_lista = '$id_lista'";
		$resultado= $mysqli->query($consulta);
		
		header("Location:../Admin/listaNegra.php");
		
		
	}
	
	if($boton == 'eliminar'){
		$consulta="DELETE FROM listanegra WHERE listanegra.id_lista = '$id_lista'";
		$resultado= $mysqli->query($consulta);
		header("Location:../Admin/listaNegra.php");
	}
?>