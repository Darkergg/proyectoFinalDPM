<%-- 
    Document   : dashBoard
    Created on : 11-02-2022, 08:08:00 PM
    Author     : josue
--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.*"%>
<%@page import="com.modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    DaoInvestigacion daoInvest = new DaoInvestigacion();
    DaoPais daoPais = new DaoPais();
    int idInvest = Integer.parseInt(request.getParameter("id"));
    DaoObservacion daoObs = new DaoObservacion();
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
                    <a class="navbar-brand me-auto" href="#">Navbar</a>
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
                                        <% } %>
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

        <section>
            <div class="body">
                <div class="container">
                    <div class="row my-2 justify-content-center w-100 " >
                        <div class="col-11">
                            <div class="card styled-dialog" >
                                <div class="card-header" style="background-color: #1cb2e2">
                                    <div class="d-flex justify-content-between " >
                                        <div class="text-center w-100"><h1 class="text-center">Cambiar Estado || agregar observación</h1></div>
                                        <div class="col-12 col-xl-auto">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body ">
                                    <div class="px-5 m-0 " >

                                        <%
                                            List<Investigacion> investiga = daoInvest.buscarinvestigacionEli(idInvest);
                                            for (Investigacion invest : investiga) {
                                        %>
                                        <%--  fromulario de Editar --%>

                                        <div class="row w-75">
                                            <div class="col-auto p-0 m-0 ">
                                                <form action="../modificarEstadoController" method="POST"  name="frmInvesti" id="frmInvesti">

                                                    <div class="mb-3 w-100">

                                                        <input type="hidden" value="<%=invest.getEstado()%>" name="txtEstadoAnterior"/>
                                                        <input type="hidden" value="<%=request.getParameter("id")%>" id="txtIdInvestigacion" name="txtIdInvestigacion"/>
                                                        <label for="nombre" class="col-form-label">Cambiar estado: </label>
                                                        <select id="txtEstado" name="txtEstado" class="form-select">
                                                            <option value="1">Pendiente de revisión</option>
                                                            <option value="2">Rechazado primera revisión”</option>
                                                            <option value="3">Aceptado primera revisión</option>
                                                        </select>
                                                    </div>
                                                    <div class="mb-3">
                                                        <input type="submit" style="display: none;" class="btn" style="background-color: #2899cf"  value="Editar" name="btnEdit" id="btnEdit"/>
                                                        <input type="submit" style="display: none;"  class="btn" style="background-color: #2899cf"  value="Agregar" name="btnAdd" id="btnAdd"/>
                                                    </div>

                                                </form>
                                                <input autofocus  type="button" onclick="actualizar();" class="btn" value="Actualizar" name="btnEditar" id="btnEditar" style="background-color: #2899cf">


                                            </div>



                                            <div class="col-auto p-0 m-0 mx-4 w-50">
                                                <form action="../agregarObjetivoController" method="POST"  name="frmActua" id="frmActua">

                                                    <div class="mb-3 w-100">
                                                        <input type="hidden" value="${id}" name="txtAdmin1"/>
                                                        <input type="hidden" value="<%=invest.getEstado()%>" name="txtEstadoAnterior1"/>
                                                        <input type="hidden" value="<%=invest.getIdInvestigacion() %>" id="txtIdInvestigacion1" name="txtIdInvestigacion1"/>
                                                        <label for="nombre" class="col-form-label">Agregar Observación: </label>
                                                        <input type="text" class="form-control" id="txtObservacion1" value="" name="txtObservacion1" requered/>

                                                    </div>
                                                    <div class="mb-3">
                                                        <input type="submit" style="display: none;" class="btn" style="background-color: #2899cf"  value="Agregar" name="btnAdd" id="btnAdd"/>

                                                    </div>

                                                </form>
                                                <input autofocus  type="button" onclick="insertar();" class="btn" value="Agregar" name="btnAdd1" id="btnAdd1" style="background-color: #2899cf">

                                            </div>


                                        </div>

                                        <%}%>
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
<script>


    function actualizar() {

        swal({
            title: 'Estas seguro?',
            text: 'Actualizara el estado',
            icon: 'warning',
            buttons: true,
            dangerMode: true
        }).then((willDelete) => {
            if (willDelete) {

                setTimeout(function () {
                    $('#btnEdit').click();
                }, 900);
                swal('Actualizado con éxito', {
                    icon: 'success'
                });

            } else {
                swal('No se ha actualizado');
            }

        });
    }
    ;
    function insertar() {

        swal({
            title: 'Estas seguro?',
            text: 'Agregar la observación',
            icon: 'warning',
            buttons: true,
            dangerMode: true
        }).then((willDelete) => {
            if (willDelete) {

                setTimeout(function () {
                    $('#btnAdd').click();
                }, 900);
                swal('Agregado con éxito', {
                    icon: 'success'
                });

            } else {
                swal('No se ha agregado');
            }

        });
    }



</script>