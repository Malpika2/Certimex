<?php 
	//$mysqli = new mysqli('localhost','cf45_certimex_us','invUcWO^8I8K','cf45_certimex_prueba');
	$mysqli = new mysqli('localhost','root','anthony','certimex');
	if($mysqli->connect_errno){
		echo "No se puede conectar";
		echo "Error:" .$mysqli->connect_errno()."\n";
		exit;
	}
?>