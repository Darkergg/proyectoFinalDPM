<%-- 
    Document   : dashBoard
    Created on : 11-02-2022, 08:08:00 PM
    Author     : josue
--%>

<%@page import="com.dao.*"%>
<%@page import="com.modelo.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    DaoEstado daoEst = new DaoEstado();
    DaoInvestigacion daoInvest = new DaoInvestigacion();
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CDN'S -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
        <link href="../css/tabla.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body style="background: #980081;">
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
                                    <li><a class="dropdown-item" href="estadoInvestigacionesAdmin.jsp?id=2">Rechazado primera revisi??n</a></li>
                                    <li><a class="dropdown-item" href="estadoInvestigacionesAdmin.jsp?id=3">Aceptado primera revisi??n</a></li>
                                    <li><a class="dropdown-item" href="estadoInvestigacionesAdmin.jsp?id=1">Pendiente de revisar</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <span class="position-absolute top-0 start-100 translate-middle badge border border-light rounded-circle bg-danger p-1" style="padding-top: 10px; left: 62.5% !important; top: 14px !important;"><span class="visually-hidden">mensajes no le??dos</span></span>
                                    <i class="bi bi-bell"></i>
                                </a>
                                <ul class="dropdown-menu p-0" aria-labelledby="navbarDropdown">
                                    <%
                                        DaoNotificacion daoNotifi = new DaoNotificacion();
                                        List<Notificacion> lista = daoNotifi.getNotifiSuperAdmin();
                                        for (Notificacion notifi : lista) {
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

        <section>
            <div class="body">
                <div class="container">

                    <div class="row align-items-start ">
                        <%
                            int idEstado = Integer.parseInt(request.getParameter("id"));
                            List<Investigacion> list = daoInvest.buscarinvestigacionEstado(idEstado);
                            for (Investigacion invest : list) {
                                List<Estado> lst = daoEst.buscarEstado(idEstado);
                                for (Estado est : lst) {
                        %>
                        <div class=" col-auto me-auto m-3">
                            <div class="card" style="width: 18rem;">
                                <div class="overflow-auto">
                                    <div style="height: 18rem">
                                        <%=invest.getPortada()%>
                                    </div>
                                </div>

                                <div class="card-body">
                                    <h5 class="card-title"><%=invest.getTitulo()%></h5>
                                    <p class="card-text"><%=invest.getPais()%></p>
                                    <p class="card-text"> Estado: <%=est.getEstado()%></p>

                                </div>
                                <div class="card-footer">
                                    <div class="row ">
                                        <div class="col-auto me-auto px-0 my-2 text-center">
                                            <a href="vistaInvestigacion.jsp?id=<%=invest.getIdInvestigacion()%>" class="btn btn-primary mx-2"><i class="bi bi-aspect-ratio"></i> Ver</a> 
                                            <a href="cambiarEstado.jsp?id=<%=invest.getIdInvestigacion()%>" class="mx-0 btn btn-success"><i class="bi bi-arrow-left-right"></i> Cambiar Estado</a>
                                        </div>
                                    
                                    </div>
                                </div>                                   
                            </div>
                        </div>
                        <%}
                                        }%>
                    </div>

                </div>

            </div> 
        </section>
    </body>
</html>
<script>
    function cargar(estado)
    {

        document.frmModificar.cmbPais.value = estado;
    }
        ;
        function eliminar() {
            swal({
                title: 'Estas seguro?',
                text: 'Eliminara la observaci??n',
                icon: 'warning',
                buttons: true,
                dangerMode: true
            }).then((willDelete) => {
                if (willDelete) {
                    setTimeout(function () {
                        $('#btnDelete').click();
                    }, 900);
                    swal('Eliminado con ??xito', {
                        icon: 'success'
                    });


                } else {
                    swal('No se ha eliminado');
                }
            });
        }
        ;
        function actualizar(id) {

            swal({
                title: 'Estas seguro?',
                text: 'Actualizar?? el estado',
                icon: 'warning',
                buttons: true,
                dangerMode: true
            }).then((willDelete) => {
                if (willDelete) {

                    setTimeout(function () {
                        $('#btnEdit' + id).click();
                    }, 900);
                    swal('Actualizado con ??xito', {
                        icon: 'success'
                    });

                } else {
                    swal('No se ha actualizado');
                }

            });
        }
        ;

</script>
