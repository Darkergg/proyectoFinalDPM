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
    DaoObservacion daoObs = new DaoObservacion();
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
                                        <div class="text-center w-100"><h1 class="text-center">Observaciones</h1></div>
                                        <div class="col-12 col-xl-auto">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="px-5" >
                                        <%--  fromulario de actualizar y eliminar --%> 
                                        <form action="../tagsController" method="POST" style="display: none;"  name="frmActuTags" id="frmActuTag">
                                            <input type="submit" style="display: none;" class="btn" style="background-color: #2899cf"  value="" name="btnEdit" id="btnEdit"/>
                                            <input type="submit" style="display: none;" value="Eliminar" name="btnDelete" id="btnDelete"/>
                                            <input type="hidden" value="0" name="idTags"/>
                                            <div class="mb-3 w-25">

                                                <label for="nombre" class="col-form-label">Actualizar Observacion: </label>
                                                <input type="text" class="form-control" id="txtActuConTags" name="txtActuConTags"  placeholder="Tags" required="Campo requerido">
                                            </div>
                                            <div class="mb-3">
                                                <input autofocus  type="button" onclick="actualizar();" class="btn" value="Actualizar" name="btnEditar" id="btnEditar" style="background-color: #2899cf">

                                            </div>

                                        </form>
                                    </div>
                                    <table class="styled-table table-responsive-xl w-100" id="tabla">
                                        <thead>

                                            <tr class="text-center">
                                                <th>ID</th>
                                                <th>Titulo Investigación</th>
                                                <th>Observación</th>
                                                <th>Fecha</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                List<Observaciones> lista = daoObs.observacionReciente();

                                                for (Observaciones obs : lista) {
                                                    int id = obs.getIdInvestigacion();
                                                    List<Investigacion> lst = daoInvest.buscarinvestigacion(id);
                                                    for (Investigacion invest : lst) {
                                            %>

                                            <tr class="text-center">
                                                <td> <%=obs.getIdObervacion()%></td>
                                                <td> <%=invest.getTitulo()%></td>
                                                <td> <%=obs.getContObservacion()%></td>
                                                <td> <%=obs.getFecha()%></td>
                                                <td p-0 pt-0 px-0">
                                                    <div class="row m-0 justify-content-center justify-content-md-start px-0">
                                                        <div class="col-auto w-25">
                                                            <a href="javascript:cargar(<%=obs.getIdObervacion()%>,'<%=obs.getContObservacion()%>')" data-toggle="tooltip" title="Eliminar" data-placement="bottom" id='btnBorrar'><span class="material-symbols-outlined btn btn-danger" onclick="eliminar();">Delete</span></a>
                                                        </div>    
                                                        <div class="col-auto p-0 w-75">
                                                            <a href="javascript:cargar(<%=obs.getIdObervacion()%>,'<%=obs.getContObservacion()%>')" data-toggle="tooltip" title="Editar" data-placement="bottom" onclick="$('#frmTag').show();
                                                                    $('#frmActuTag').show();
                                                                    $('#btnEditar').show();
                                                                    $('#btnEditar').focus();"><span class="material-symbols-outlined btn btn-warning mx-1">Editar</span></a> 

                                                            <a href="vistaInvestigacion.jsp?id=<%=invest.getIdInvestigacion()%>" data-toggle="tooltip" title="Vista" data-placement="bottom" id='btnVista'><span class="mx-1 material-symbols-outlined btn btn-success" ">Ver </span></a>
                                                        </div>

                                                    </div>
                                                </td>

                                            </tr>
                                            <%}
                                                }%>
                                        </tbody>

                                    </table>
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
    function cargar(idTags, tags)
    {
        document.frmActuTags.idTags.value = idTags;
        document.frmActuTags.txtActuConTags.value = tags;
    }
    ;
    function eliminar() {
        swal({
            title: 'Estas seguro?',
            text: 'Eliminara la observación',
            icon: 'warning',
            buttons: true,
            dangerMode: true
        }).then((willDelete) => {
            if (willDelete) {
                setTimeout(function () {
                    $('#btnDelete').click();
                }, 900);
                swal('Eliminado con éxito', {
                    icon: 'success'
                });


            } else {
                swal('No se ha eliminado');
            }
        });
    }
    ;
    function actualizar() {
        var text = document.getElementById('txtActuConTags').value;
        if (text !== "") {
            swal({
                title: 'Estas seguro?',
                text: 'Actualizara la observación',
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
        } else {
            setTimeout(function () {
                $('#btnEdit').click();
            }, 1);
        }

    }
    ;

</script>