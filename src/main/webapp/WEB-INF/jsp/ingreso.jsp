<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="formulario" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Bienvenidos</title>
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
  <link href="s/assets/css/style.css" rel="stylesheet">
  <script type="text/javascript" src="/js/file.js"></script>
<link href="/assets/img" rel="stylesheet">
</head>

<body>

 <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-none d-lg-flex align-items-center fixed-top ">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <i class="icofont-envelope"></i> <a href="mailto:contact@example.com">BankOfChina@covid.com</a>
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
  <a href="home" class="logo mr-auto"><img src="resources/assets/img/logo.png" class="img-fluid" alt="hola" ></a> 
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="index.html">Home</a></li>
          <li><a href="listar">Clientes</a></li>
            
          <li><a href="#contact">Contacto</a></li>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container position-relative" data-aos="fade-up" data-aos-delay="500">
      <h1>Banco de China</h1>
      <a href="#about" class="btn-get-started scrollto">Ingresa cliente</a>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">

      <div class="container" >
        <h2>Datos Cliente</h2>
        <formulario:form action="agregarCliente" method="post" modelAttribute="clientito">
        <form class="form-horizontal" action="/action_page.php" >
          <div class="form-group">
            <label class="control-label col-sm-2" for="rut">Rut</label>
            
            <div class="col-sm-10" >
            
            <formulario:input path="rut" type="text" class="form-control" id="rutsito" maxlength="8" placeholder="25369852" name="rut"  onkeypress="return soloNumeros(event)"/><formulario:errors path="rut" id="error"/>
              
              <label class="guion">-</label>
              
              <formulario:input path= "dig" type="text" class="form-control" id="veri"  maxlength="1" placeholder="K" name="dig" onkeypress="return soloDigitoVerificador(event)"/><formulario:errors path="dig" id="error"/>
              
                </div>
                
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="nombre">Nombre:</label>
            <div class="col-sm-10">
              <formulario:input path="nombre" type="text" class="form-control" id="nombre"  maxlength="30" placeholder="Pedro" name="nombre"/><formulario:errors path="nombre" id="error"/>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="email">Apellido:</label>
            <div class="col-sm-10">
              <formulario:input path="apellido" type="text" class="form-control" id="apellido" maxlength="30" placeholder="Perez" name="apellido"/><formulario:errors path="apellido" id="error"/>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="email">Direccion:</label>
            <div class="col-sm-10">
              <formulario:input path="direccion" type="text" class="form-control" id="direccion" maxlength="50" placeholder="Sta Elena 884" name="direccion"/><formulario:errors path="direccion" id="error"/>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Ciudad:</label>
            <div class="col-sm-10">          
              <formulario:input path="ciudad" type="text" class="form-control" id="ciudad" maxlength="50" placeholder="Santiago" name="ciudad"/><formulario:errors path="ciudad" id="error"/>
            </div>
          </div>
      
          <div class="form-group">        
            <div class="col-sm-offset-2 col-sm-10">
              <formulario:button type="submit" class="btn btn-danger">Ingresar</formulario:button>
            </div>
          </div>
                
 <a href="listar">Listar Clientes</a>
        </form>
        
        </formulario:form>
      </div>

     </section><!-- End Contact Section -->  

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <span>Contacto</span>
          <h2>Contacto</h2>
          <p></p>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-lg-6">
            <div class="info-box mb-4">
              <i class="bx bx-map"></i>
              <h3>Direccion</h3>
              <p>Wuhan, Hubei, China </p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-envelope"></i>
              <h3>Email</h3>
              <p>BankOfChina@covid.com</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-phone-call"></i>
              <h3>Telefono</h3>
              <p>+1 5589 55488 55</p>
            </div>
          </div>

        </div>

       
      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

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
  <script src="resources/assets/js/main.js"></script>

</body>
</html>