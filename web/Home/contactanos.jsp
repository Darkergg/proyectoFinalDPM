<%-- 
    Document   : contactanos
    Created on : 11-10-2022, 10:48:57 AM
    Author     : josue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>
        <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <!--llamando el bootsstrap-->
                    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.css" />
                    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
                    <!-- Custom styles for this template -->
                    <link href="css/estilos.css" rel="stylesheet" />
                    <!-- CSS only -->
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
                          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
                        <!-- JavaScript Bundle with Popper -->
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
                                integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
                        crossorigin="anonymous"></script>
                        <title>Contactanos</title>
                        </head>

                        <body>
                            <!-- Page Header-->
                            <!-- Page Header-->
                            <header class="opacity-75 section page-header">
                                <!-- RD Navbar-->
                                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                                    <div class="container-fluid">
                                        <a class="navbar-brand" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                                              fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
                                                <path
                                                    d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z" />
                                            </svg>
                                        </a>
                                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                                aria-expanded="false" aria-label="Toggle navigation">
                                            <span class="navbar-toggler-icon"></span>
                                        </button>
                                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                            <ul class="navbar-nav mx-auto">
                                                <li class="nav-item">
                                                    <a class="nav-link active" aria-current="page" href="../index.html">Home</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" aria-current="page" href="conocenos.jsp">Conocenos</a>
                                                </li>

                                                <li class="nav-item">
                                                    <a class="nav-link " aria-current="page" href="contactanos.jsp">Contacto</a>
                                                </li>
                                            </ul>
                                            <a class="nav-link btn btn-success  px-2" aria-current="page"
                                               href="SuperAdministrador/login.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="20"
                                                                                     height="20">
                                                    <path fill-rule="evenodd"
                                                          d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z" />
                                                    <path fill-rule="evenodd"
                                                          d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z" />
                                                </svg> Login</a>
                                        </div>
                                    </div>
                                </nav>
                            </header>


                            <main>
                                <div class="row container-fluid">
                                    <div class="container col-md-4 img-3 img-bg"><img src="../multimedia/img/callcenter.jpg" alt="">
                                    </div>
                                    <div class="container col-md-6 bg-white">
                                        <form>
                                            <fieldset>
                                                <h1>Contáctanos</h1>
                                                <div class="form-group row"></div>
                                                <div class="form-group">
                                                    <label for="exampleTextarea" class="form-label mt-4">Tu Nombre (requerido)</label>
                                                    <input type="text" class="form-control" id="nombre" placeholder="Ingresa tu nombre"
                                                           autofocus required />
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleTextarea" class="form-label mt-4">Tu Teléfono (requerido)</label>
                                                    <input type="tel" class="form-control" id="telefono" placeholder="Ingresa tu teléfono"
                                                           inputmode="tel" required />
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1" class="form-label mt-4">E-mail</label>
                                                    <input type="email" class="form-control" id="email" placeholder="Ingresa tu e-mail"
                                                           inputmode="email" required />
                                                    <small id="emailHelp" class="form-text text-muted">Nunca compartiremos su correo electrónico
                                                        con nadie.</small>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Enviar</button>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </main>


                        </body>

                        </html>