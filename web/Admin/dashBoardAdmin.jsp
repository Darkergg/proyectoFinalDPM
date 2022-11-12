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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <title>Dashboard</title>
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
                    <a class="navbar-brand me-auto" href="dashBoardAdmin.jsp"><i class="bi bi-house-door-fill"></i></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Investigaciones recientes
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li><a class="dropdown-item" href="investigacionesRecientesAdmin.jsp">ultimas investigaciones</a></li>
                                    <li><a class="dropdown-item" href="investigacionesAdmin.jsp">Todas</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Observaciones Recientes
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="observacionesRecientesAdmin.jsp">ultima Observaciones</a></li>
                                    <li><a class="dropdown-item" href="observacionesAdmin.jsp">Todas</a></li>
                                </ul>
                            </li>                            
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Estados de investigaciones
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="estadoInvestigacionesAdmin.jsp?id=2">Rechazado primera revisión</a></li>
                                    <li><a class="dropdown-item" href="estadoInvestigacionesAdmin.jsp?id=3">Aceptado primera revisión</a></li>
                                    <li><a class="dropdown-item" href="estadoInvestigacionesAdmin.jsp?id=1">Pendiente de revisar</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <span class="position-absolute top-0 start-100 translate-middle badge border border-light rounded-circle bg-danger p-1" style="padding-top: 10px; left: 62.5% !important; top: 14px !important;"><span class="visually-hidden">mensajes no leídos</span></span>
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
                                    <li><a class="dropdown-item" href="">${rol} </a></li>
                                    <li><a class="" href="">
                                            <form action="../cerrarSession">
                                                <input type="submit" class="btn btn-info m-2" value="Cerrar">
                                            </form>
                                        </a></li>
                                </ul>
                            </li>
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
                                            <Strong class="mb-0 font-13">Investigaciones</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0 font-13">Ultimas </p>
                                            <br>
                                        </div>
                                        <a href="investigacionesRecientesAdmin.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-bloody text-white ms-auto">
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
                                            <p class="mb-0 font-13">Todas</p>
                                            <br>
                                        </div>
                                        <a href="investigacionesAdmin.jsp">
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-bloody text-white ms-auto">
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
                                            <p class="mb-0 font-13">Ultimas observaciones</p>
                                            <br>
                                        </div>
                                        <a href="observacionesRecientesAdmin.jsp">
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
                                            <Strong class="mb-0 font-13">Observaciones</Strong>
                                            <h4 class="my-1 text-info"></h4>
                                            <p class="mb-0 font-13">Todas</p>
                                            <br>
                                        </div>
                                        <a href="observacionesAdmin.jsp">
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
                                        <a href="estadoInvestigacionesAdmin.jsp?id=1">
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
                                            <p class="mb-0">Aceptada primera revisión</p>
                                        </div>
                                        <a href="estadoInvestigacionesAdmin.jsp?id=3">
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
                                            <p class="mb-0">Rechazado primera revisión</p>
                                        </div>
                                        <a href="estadoInvestigacionesAdmin.jsp?id=2">
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
</html>
