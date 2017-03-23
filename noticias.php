<!DOCTYPE html>
<html lang="en">
	<head>
		<title>CERTIMEX</title>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description\" content=\"Responsive HTML5 website landing page for developers and startups">
		<meta name="author\" content=\"Xiaoying Riley at 3rd Wave Media">    
		<link rel="shortcut icon\" href=\"favicon.ico">  
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.css">
	<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="table.js"></script>
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.css">
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="assets/css/styles.css">
    <link id="theme-style" rel="stylesheet" href="assets/css/full-slider.css">
    <link id="theme-style" rel="stylesheet" href="assets/css/style.css">
	<link href="assets/css/imagenes.css" rel="stylesheet">
	<!-- Tiny carrousel-->
	<link rel="stylesheet" href="assets/css/tinycarousel.css" type="text/css" media="screen"/>
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet"> 
	<!-- Global CSS -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">  
	</head> 

	<body>
	   <header id="header" class="header">  
        <div class="container" >    
            <h1 class="logo">
                <a class="" target="_self" href="index.php" >

                    <div class="img_logo"><img src="Imagenes/certimex-logo.png" alt="icon-certimex"/></div>
					<div class="text_logo"><h1><strong>Certimex</strong></h1></div>
				</a>
            </h1><!--logo-->
            <nav class="main-nav navbar-right" role="navigation">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button><!--//nav-toggle-->
                </div><!--//navbar-header-->
                <div id="navbar-collapse" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="nav-item"><a class="" href="index.php#acerca">CONOCENOS</a></li>
                        <li class="nav-item"><a class="" href="index.php#servicios">SERVICIOS</a></li>
                        <li class="nav-item"><a class="" href="index.php#procedimientos">PROCEDIMIENTOS</a></li>                        
                        <li class="active nav-item"><a class="scrollTo" href="#ultimasn">ULTIMAS NOTICIAS</a></li>
                        <li class="nav-item"><a class="" href="index.php#contacto">CONTACTO</a></li>
						<li class="dropdown nav-item">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">LOGIN<span class="caret"></span></a>
							<ul id="menudp" class="dropdown-menu">
								<li>
									<div class="col-md-12"> 										
										<div class="contenedor">
										<div id="formulario"    >
											<form class="form" method="POST" action="return false" onsubmit="return false" accept-charset="UTF-8">
												<div  id="resultado"></div>
												<div class="form-group">
													<h5>Iniciar Sesión</h5>
												</div>
												
												<div class="form-group">
													<input type="text" class="form-control" id="user" name="user" placeholder="Usuario"required/>
												</div>
												<div class="form-group">
													<input type="password" class="form-control" id="pass" name="pass" placeholder="Password" required/>
												</div>
												<div class="form-group">
													<button onclick="Validar(document.getElementById('user').value, document.getElementById('pass').value);" class="btn btn-cta" align="center" >Iniciar Sesión</button>
												</div>
											</form>

									    </div>
									    </div>
									</div>
								</li>
							</ul>
						</li>
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav><!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->
<section id="ultimasn">
		<div id="ultimasn" class="procedimientos-section" style="padding-top: 35px">
			<div class="container text-center">
				<h2 class="section-title">ULTIMAS NOTICIAS</h2>
						<div class="panel panel-default">
							<div class="panel-heading">
							<?php
								include("Procesos/conexion.php"); // Incluimos nuestro archivo de conexión con la base de datos
								$id_noticias=$_GET['id_noticias'];
								$consulta="SELECT noticias.id_noticias,noticias.titulo,noticias.fecha,img_noticias.url,noticias.contenido FROM noticias, img_noticias WHERE noticias.id_noticias=$id_noticias and img_noticias.id_noticias=noticias.id_noticias ORDER BY fecha DESC";
								$resultado = $mysqli->query($consulta);
								$fila=$resultado->fetch_row();
								echo "<div class=\"row\">";
									echo "<div class=\"col-xs-4 col-sm-4 col-xs-4\" style='overflow:hidden'> <img src=\"certimex/$fila[3]\" width=\"300\"></div>";
									echo "<div class=\"col-xs-8 col-sm-8 col-xs-8\"><div><h2><b>$fila[1]</b></h2></div><div><p style='color:darkolivegreen'>$fila[4]</p></div>";
									echo "</div>";
								echo "</div>";
							?>
							</div>
							<div class="panel-body">
								<!--div class="table-responsive">
									<table class="table table-striped table-bordered table-hover" id="dataTables-example">
									<thead>
										<tr>
											<?php
													$consulta="SELECT id_noticias,titulo,fecha FROM noticias ORDER BY fecha DESC";
													$resultado= $mysqli->query("$consulta");
													
													while($fila = $resultado->fetch_row()){
														echo "<th class=\"\"><div style='width:200px; overflow:hidden;'> <a class\"active\" href=\"#$fila[0]\" data-toggle=\"tab\">$fila[1]</a></div> </th>";
															
													}
											?> 
										</tr>
									</thead>
									<tbody>
									</tbody>
									</table>
								</div-->
														<!--===NUEVA SECCION NOTICIAS">>>-->
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
									<div class="">
											<div id="myCarousel2" class="carousel slide">
												<!-- Indicators -->
												<!-- Wrapper for Slides -->
												<div class="carousel-inner">
													<?php
																	$consulta="SELECT noticias.id_noticias,noticias.titulo,noticias.fecha,img_noticias.url,noticias.contenido FROM noticias, img_noticias WHERE img_noticias.id_noticias=noticias.id_noticias ORDER BY fecha DESC LIMIT 4";
																	$resultado= $mysqli->query($consulta);
																	$resultado= $mysqli->query($consulta);
																	$conta=1;
																	while($fila=$resultado->fetch_row()){
																		if($conta<=1){
																			$clase="\"item active\"";
																		}else{$clase="\"item\"";}
																		$contenido=substr($fila[4],0,81);
																		echo "<div class=$clase>";
																			echo "<div class=\"fill not-fill\" style=\"background-image:url(certimexx/$fila[3]);\"></div>";
																			echo "<div class=\"carousel-noti\">";
																				echo "<div class=\"text-center\">";	
																					echo "<div style=\"background-color:rgba(13, 13, 13, .8); position:inherit;\" >
																								<h3><b>$fila[1]</b></h3>";
																								echo "<p>$contenido...</p>";
																								echo "<form class=\"\" role=\form\" method=\"GET\" action=\"noticias.php\">
																											<button type=\"submit\" class=\"btn btn-success\">Leer Más</button>";
																											echo "<div class=\"\">
																														<input class=\"\" name=\"id_noticias\" value=\"$fila[0]\" type=\"hidden\"/>
																												  </div>
																									</form>";
																					echo "</div>
																					</div>";
																			echo "</div>";
																		echo "</div>";
																	$conta++;
																	}
																	
																?>        
													<div class="left carousel-control"href="#myCarousel2" data-slide="prev">
													<span class="icon-prev"></span>
													</div>
													<a class="right carousel-control" href="#myCarousel2" data-slide="next">
													<span class="icon-next"></span>
													</a>
												</div>	
										</div>
									</div>
														<ol class="carousel-indicators2">
														<?php
														include("Procesos/conexion.php");
														$consulta="SELECT noticias.id_noticias,noticias.titulo,noticias.fecha,img_noticias.url,noticias.contenido FROM noticias, img_noticias WHERE img_noticias.id_noticias=noticias.id_noticias ORDER BY fecha DESC LIMIT 4";
														$resultado= $mysqli->query($consulta);
														$to=0;
														//echo "<th><li class=\"ind-active\" data-target=\"#myCarousel2\" data-slide-to=\"0\" ><img src=\"\"/></li></th>";
														while($fila = $resultado->fetch_row()){
															echo "<li data-target=\"#myCarousel2\" data-slide-to=\"$to\"><img src=\"certimexx/$fila[3]\"/></li>";
															$to++;
														} 
														?> 
														</ol>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<div class="table-responsive">
										<!--table class="table table-bordered table-hover" id="example"-->
										<table id="example" class="display table table-bordered" cellspacing="0" width="99%" >
											<thead>
												<tr>
												<th>CERTIMEX</th>
												<th>Noticias Recientes</th>
												</tr>
											</thead>
											<tbody>
											<?php
												include("Procesos/conexion.php");
												$consulta="SELECT noticias.id_noticias, noticias.titulo,noticias.fecha, img_noticias.url FROM noticias,img_noticias WHERE img_noticias.id_noticias=noticias.id_noticias ORDER BY fecha DESC";
												$resultado= $mysqli->query($consulta);
												
												while($fila = $resultado->fetch_row()){
													echo "<tr>";
													echo "<td><div><img src=\"certimexx/$fila[3]\"/></div></td>";
													echo "<td style=\"text-align:justify\"><form class=\"\" role=\form\" method=\"GET\" action=\"noticias.php\"><div style='width:200px;'><button type=\"submit\" style=\"padding-top:10%; font-size:18px; color:green;\" class=\"btn btn-link\">$fila[1]</button></div>
													<div class=\"\"><input class=\"\" name=\"id_noticias\" value=\"$fila[0]\" type=\"hidden\"/></div></form></td>";
													echo "</tr>";
												}
										?> 
											</tbody>
										</table>
									</div>
								</div>
							</div>
							</div> <!-- /panel-body-->
						</div>
								
			</div><!--//container-->
		</div><!--//ULTIMAS NOTICIAS SECCION-->	
		</section>
		<footer>
		
		</footer>
	</body>
<!-- Javascript -->          
    <script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script>     
    <script type="text/javascript" src="assets/js/main.js"></script> 
	<script type="text/javascript" src="assets/lib/jquery.tinycarousel.js"></script>
	<script type="text/javascript">
	$(document).ready(function()
	{
		$('#slider1').tinycarousel();
	});
	</script>

	<script>
      $(function() {
       $('.carousel-indicators2 li img').click(function(e) {
           e.preventDefault();
           var $this = $(this);
           $this.closest('ol').children('li').removeClass('ind-active');
           $this.parent().addClass('ind-active');
       });
      });
   </script>
	<script>
	function Validar(user, pass)
	{
		$.ajax({
			url: "Procesos/validar.php",
			type: "POST",
			data: "user="+user+"&pass="+pass,
			success: function(resp){
			$('#resultado').html(resp)
			}       
		});
	}
	</script>
</HTML>
						