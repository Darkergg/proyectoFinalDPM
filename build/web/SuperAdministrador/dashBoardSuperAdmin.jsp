<%-- 
    Document   : dashBoard
    Created on : 11-02-2022, 08:08:00 PM
    Author     : josue
--%>

<%@page import="com.modelo.*"%>
<%@page import="com.dao.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <title>Dashboard</title>
        <link href="../css/tabla.css" rel="stylesheet" type="text/css"/>
        <style type="text/css">
            .radius-10 {
                border-radius: 10px !important;
            }

            .border-info {
                border-left: 5px solid  #0dcaf0 !important;
            }
            .border-danger {
                border-left: 5px solid  #fd3550 !important;
            }
            .border-success {
                border-left: 5px solid  #15ca20 !important;
            }
            .border-warning {
                border-left: 5px solid  #ffc107 !important;
            }


            .card {
                position: relative;
                display: flex;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #fff;
                background-clip: border-box;
                border: 0px solid rgba(0, 0, 0, 0);
                border-radius: .25rem;
                margin-bottom: 1.5rem;
                box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
            }
            .bg-gradient-scooter {
                background: #17ead9;
                background: -webkit-linear-gradient( 
                    45deg
                    , #17ead9, #6078ea)!important;
                background: linear-gradient( 
                    45deg
                    , #17ead9, #6078ea)!important;
            }
            .widgets-icons-2 {
                width: 56px;
                height: 56px;
                display: flex;
                align-items: center;
                justify-content: center;
                background-color: #ededed;
                font-size: 27px;
                border-radius: 10px;
            }
            .rounded-circle {
                border-radius: 50%!important;
            }
            .text-white {
                color: #fff!important;
            }
            .ms-auto {
                margin-left: auto!important;
            }
            .bg-gradient-bloody {
                background: #f54ea2;
                background: -webkit-linear-gradient( 
                    45deg
                    , #f54ea2, #ff7676)!important;
                background: linear-gradient( 
                    45deg
                    , #f54ea2, #ff7676)!important;
            }

            .bg-gradient-ohhappiness {
                background: #00b09b;
                background: -webkit-linear-gradient( 
                    45deg
                    , #00b09b, #96c93d)!important;
                background: linear-gradient( 
                    45deg
                    , #00b09b, #96c93d)!important;
            }

            .bg-gradient-blooker {
                background: #ffdf40;
                background: -webkit-linear-gradient( 
                    45deg
                    , #ffdf40, #ff8359)!important;
                background: linear-gradient( 
                    45deg
                    , #ffdf40, #ff8359)!important;
            }</style>
        
        
    </head>
    <body style="background: #970182;">
        <header>
            <!-- RD Navbar-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand me-auto" href="dashBoardSuperAdmin.jsp"><i class="bi bi-house-door-fill"></i></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Gestionar tablas
                                </a>
                                <ul class="dropdown-menu p-0 " aria-labelledby="navbarDropdownMenuLink">
                                    <li><a class="dropdown-item" href="gestionarAdministrador.jsp">Administrador</a></li>
                                    <li><a class="dropdown-item" href="gestionarInvestigadores.jsp">Investigador</a></li>
                                    <li><a class="dropdown-item" href="mantenimientoUsuario.jsp">Usuarios</a></li>
                                    <li><a class="dropdown-item" href="agregarTags.jsp">Tags</a></li>
                                    <li><a class="dropdown-item" href="roles.jsp">Roles</a></li>
                                    <li><a class="dropdown-item" href="observaciones.jsp">Observaciones</a></li>
                                    <li><a class="dropdown-item" href="estado.jsp">Estados</a></li>
                                    <li><a class="dropdown-item" href="paises.jsp">Paises</a></li>
                                    <li><a class="dropdown-item" href="investigacionesSuperAdmin.jsp">Investigaciones</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Investigaciones
                                </a>
                                <ul class="dropdown-menu p-0" aria-labelledby="navbarDropdownMenuLink">
                                    <li><a class="dropdown-item" href="investigacionesRecientes.jsp">Ultimas investigaciones</a></li>
                                    <li><a class="dropdown-item" href="investigaciones.jsp">Todas</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Observaciones
                                </a>
                                <ul class="dropdown-menu p-0" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="observacionesRecientes.jsp">Ultimas Observaciones</a></li>
                                    <li><a class="dropdown-item" href="observaciones.jsp">Todas</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Estados de investigaciones
                                </a>
                                <ul class="dropdown-menu p-0" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="estadoInvestigaciones.jsp?estado=4">Rechazado segunda revisión</a></li>
                                    <li><a class="dropdown-item" href="estadoInvestigaciones.jsp?estado=5">Aceptado segunda revisión</a></li>
                                    <li><a class="dropdown-item" href="estadoInvestigaciones.jsp?estado=3">Pendiente de revisar</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><span class="position-absolute top-0 start-100 translate-middle badge border border-light rounded-circle bg-danger p-1" style="padding-top: 10px; left: 62.5% !important; top: 14px !important;"><span class="visually-hidden">mensajes no leídos</span></span>
                                    <i class="bi bi-bell"></i>
                                </a>
                                <ul class="dropdown-menu p-0" aria-labelledby="navbarDropdown">
                                    <%
                                        DaoNotificacion daoNotifi = new DaoNotificacion();
                                        List<Notificacion> list = daoNotifi.getNotifiSuperAdmin();
                                        for (Notificacion notifi : list) {
                                    %>
                                    <li><a class="dropdown-item" href=""><%=notifi.getNotificacion()%> </a></li>
                                        <% }%>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" style="width: 171px; padding-bottom: 0px;padding-top: 0px;" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <button id='btnAvatar'class='rounded-circle border border-white bg-light m-0' style="margin-right: 10px;"data-bs-toggle='modal' data-bs-target='#infoUsuario'><img id='img' draggable='false' class='rounded-circle' alt='Imagen de avatar' height='32' width='32'src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlr2EY55UL9qoUMHFRnlX5qT8rLSDfzr_wow&usqp=CAU'></button>
                                        ${nombre} 
                                </a>
                                <ul class="dropdown-menu p-0" aria-labelledby="">
                                    <li><a class="dropdown-item" href="">${nombre}</a></li>
                                    <li><a class="dropdown-item "  href="">${rol}<input type="hidden"value="${rol}" id="rol" /> </a></li>
                                    
                                    <li><a class="dropdown-item" href="">
                                            <form action="../cerrarSession">
                                                <input type="submit" class="btn btn-info" value="Cerrar">
                                            </form>
                                        </a></li>
                                </ul>
                        </ul>
                    </div>
                </div>
            </nav> 
        </header>
        <section class="body">

            <div class="container ">
                <div id="snippetContent" class="mt-3">
                    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"> 
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script> 
                    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
                    <div class="row row-cols-1 row-cols-md-2 row-cols-xl-4">


                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Mis observaciones</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0 font-13">Observaciones</p>
                                            <br>
                                        </div>
                                        <a href="observacionesRecientes.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-bloody text-white ms-auto">
                                                <i class="bi bi-question-circle"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Investigaciones</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0 font-13"> Pedientes de revisión</p>
                                            <br>
                                        </div>
                                        <a href="estadoInvestigaciones.jsp?estado=1">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-ohhappiness  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Investigaciones</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Aceptada segunda revisión</p>
                                        </div>
                                        <a href="estadoInvestigaciones.jsp?estado=5">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Investigaciones</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Rechazado segunda revisión</p>
                                        </div>
                                        <a href="estadoInvestigaciones.jsp?estado=4">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ---------------------------------------------------------------  -->
                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Administrador</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Gestionar </p>
                                        </div>
                                        <a href="gestionarAdministrador.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Investigador</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Gestionar </p>
                                        </div>
                                        <a href="gestionarInvestigadores.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Usuario</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Gestionar </p>
                                        </div>
                                        <a href="mantenimientoUsuario.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Tags</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Gestionar </p>
                                        </div>
                                        <a href="agregarTags.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Roles</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Gestionar </p>
                                        </div>
                                        <a href="roles.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Observaciones</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Gestionar </p>
                                        </div>
                                        <a href="observaciones.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Estados</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Gestionar </p>
                                        </div>
                                        <a href="estado.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Paises</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Gestionar </p>
                                        </div>
                                        <a href="paises.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Investigaciones</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Gestionar </p>
                                        </div>
                                        <a href="investigacionesSuperAdmin.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Ultimas Investigaciones -->
                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Investigaciones</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Gestionar Ultimas</p>
                                        </div>
                                        <a href="investigacionesRecientes.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Todas las Investigaciones -->
                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Investigaciones</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Gestionar Todas</p>
                                        </div>
                                        <a href="investigaciones.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Ultimas Investigaciones -->
                        <div class="col-auto">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <Strong class="mb-0 font-13">Observaciones</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0">Gestionar Todas</p>
                                        </div>
                                        <a href="observaciones.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-blooker  text-white ms-auto">
                                                <i class="bi bi-file-text"></i>
                                                
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            
            
            <br><br><br>
        </section>

    </body>
</html

<script>
    </script>
