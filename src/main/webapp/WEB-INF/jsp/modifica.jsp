<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="formulario" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Update Cliente</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/assets/img/favicon.png" rel="icon">
  <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="/assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/assets/css/style.css" rel="stylesheet">
<link href="/assets/img" rel="stylesheet">
</head>
<body>

<!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-none d-lg-flex align-items-center fixed-top ">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <i class="icofont-envelope"></i> <a href="mailto:hello@empresa.com">BankOfChina@covid.com</a>
        <i class="icofont-phone"></i> +1 5589 55488 55
      </div>
      <div class="social-links">
        <a href="#" class="twitter"><i class="icofont-twitter"></i></a>
        <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
        <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
        <a href="#" class="skype"><i class="icofont-skype"></i></a>
        <a href="#" class="linkedin"><i class="icofont-linkedin"></i></i></a>
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="home">BANCO DE CHINA</a></h1>
  <a href="home" class="logo mr-auto"><img src="/assets/img/logo.png" class="img-fluid" alt="BC" ></a> 
  
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="home">Home</a></li>
            <li class="active"><a href="listar">Clientes</a></li>
          <li><a href="#contact">Contacto</a></li>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->
  
  
  <div class="d-flex align-items-center">
  
  </div>
  
  <section id="hero" class="d-flex align-items-center">

<div class="container"  >

 <div class="container position-relative" style="color:white" data-aos="fade-up" data-aos-delay="500">

<formulario:form action="generarCambio"  class="form-horizontal" method="post" modelAttribute="clientito">
<formulario:hidden path="rut" value="${client.rut}" />		
<formulario:hidden path="dig" value="${client.dig}" />	
		<label class="control-label col-sm-2">Nombre: </label>
		<formulario:input class="form-control" path="nombre" value="${client.nombre }" disabled="true" />
		<formulario:hidden path="nombre" value="${client.nombre}" />	
		<label class="control-label col-sm-2">Apellido: </label>
		<formulario:input class="form-control" path="apellido" value="${client.apellido }" disabled="true" />
		<formulario:hidden path="apellido" value="${client.apellido}" />	
		<formulario:errors path="apellido" id="error"/>
		<label class="control-label col-sm-2">Direccion: </label>
		<formulario:input class="form-control" path="direccion" value="${client.direccion }" />
		<formulario:errors path="direccion"  id="error"/>
		<label class="control-label col-sm-2">Ciudad: </label>
		<formulario:input class="form-control" path="ciudad" value="${client.ciudad }" />
		<formulario:errors path="ciudad"  id="error"/>
		<formulario:button class="btn btn-info">Modificar</formulario:button>
</formulario:form>
</div>
</div>
</section>

<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="/assets/vendor/jquery/jquery.min.js"></script>
  <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="/assets/vendor/php-email-form/validate.js"></script>
  <script src="/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="/assets/vendor/venobox/venobox.min.js"></script>
  <script src="/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="/assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="/assets/js/main.js"></script>
</body>
</html>