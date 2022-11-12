<%-- 
    Document   : login
    Created on : 11-01-2022, 03:15:58 PM
    Author     : josue
--%>
<html>
    <head>        
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="/ProyectoDAM/js/validacionCampo.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="/ProyectoDAM/css/login.css">
        <title>Login</title>
    </head>
    <body style="background: #33B2FF">
        <section class="container-fluid p-0">
            <div class="login-block">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 login-sec">
                            <h2 class="text-center">Bienvenidos / as</h2>
                            <form class="login-form" action="../usuarioController" name="formulario" id="formulario" method="post">
                                <div class="form-group">
                                    <label for="Usuario" class="text-uppercase">Usuario</label>
                                    <input type="text" class="form-control" placeholder="" name="txtUserName" id="txtUserName" required="">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1" class="text-uppercase">Contrase&ntilde;a</label>
                                    <input type="password" class="form-control" placeholder="Contraseña" name="txtPassword" required="">
                                </div>


                                <div class="form-check">
                                    <button type="submit" class="btn btn-login float-right" name="btnIngresar" id="btnIngresar">Iniciar Session</button>
                                </div>

                            </form>
                            <div class="copy-text">
                                <i class="fa fa-copyright">2022 S.I.R</i>
                                <i class="fas fa-signal"> DAM</i> 
                            </div>
                        </div>
                        <div class="col-md-8 banner-sec">
                            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner" role="listbox">
                                    <div class="carousel-item active">
                                        <img class="d-block img-fluid" src="https://static.pexels.com/photos/33972/pexels-photo.jpg" style="display: block; margin: auto;  max-width: 100%; width: 100%;">
                                        <div class="carousel-caption d-none d-md-block">
                                            <div class=" text-center">
                                                <h2 style="color: black">SISTEMA DE INVESTIGACIONES PARA LA REGIONAMERICANA</h2>
                                            </div>	
                                        </div>
                                    </div>
                                </div>	   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>


