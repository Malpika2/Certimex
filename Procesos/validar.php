<?php
	include("conexion.php");
    error_reporting(0);
    
	
    //Valida que los campos de usuario y contraseña tengan datos para su validacion
$user=$_POST['user'];
$pass= $_POST['pass'];

$sql= "SELECT usuarios.id_usuarios, usuarios.usuario, usuarios.contrasena FROM usuarios WHERE usuarios.usuario = '$user' AND usuarios.contrasena = '$pass'"; 
if (!$resultado = $mysqli->query($sql)) { //Si la consulta falla
	
	echo "Error: La ejecución de la consulta falló debido a: \n";
    echo "Query: " . $sql . "\n";
    echo "Errno: " . $mysqli->errno . "\n";
    echo "Error: " . $mysqli->error . "\n";
    exit;
}  
if ($resultado->num_rows > 0) { 
      session_start();
      $_SESSION['loggedin'] = true;
      $_SESSION['username'] = $user;
      //$_SESSION['start'] = time();
      //$_SESSION['expire'] = $_SESSION['start'] + (5 * 60);
      session_write_close();

    echo '<script>location.href = "Admin/index.php"</script>';
}else{
    //No se encuentran coincidencias
echo "<div class=\"alert alert-danger\">Usuario o Contraseña Incorrecta</div>";
}
   
?>