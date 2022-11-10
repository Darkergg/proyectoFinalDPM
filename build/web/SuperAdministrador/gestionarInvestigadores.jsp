<%-- 
    Document   : gestionInvestigadores
    Created on : 11-02-2022, 08:08:00 PM
    Author     : Alexander
--%>
<%@page session="true" %>
<%@page import="java.util.List"%>
<%@page import="com.modelo.*"%>
<%@page import="com.dao.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Mantenimiento | Administradores</title>
        <%
            response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
        %>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <!--CSS -->

        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">

        <link href="../css/tabla.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
        <link rel="apple-touch-icon" sizes="76x76" href="../multimedia/imagenes/Login/logoHerramienta.png">
        <link rel="icon" type="image/png" sizes="96x96" href="../multimedia/imagenes/Login/logoHerramienta.png">
        <script src="../Js/buscadorTabla.js"></script>
        <%--  SCRIPT PARA BUSCAR REGISTROS  --%>
        <script src="../js/buscadorTabla.js"></script>
    </head>

    <script>
        function cargar(id, usuario, nombre, apellido, pais, ciudad, fechanac, cant)
        {
            document.frmPersonal.txtIdInvst.value = id;
            document.frmPersonal.selectUsuario.value = usuario;
            document.frmPersonal.txtNombre.value = nombre;
            document.frmPersonal.txtApellidos.value = apellido;
            document.frmPersonal.cmbNacionalidad.value = pais;
            document.frmPersonal.txtCiudad.value = ciudad;
            document.frmPersonal.txtFecha.value = fechanac;
            document.frmPersonal.txtCant.value = cant;

            document.frmPersonal.btnGuardar.disabled = true;
            document.frmPersonal.btnModificar.disabled = false;
            document.frmPersonal.btnEliminar.disabled = false;
        }
        function des() {
            document.frmPersonal.btnGuardar.disabled = false;
            document.frmPersonal.btnModificar.disabled = true;
            document.frmPersonal.btnEliminar.disabled = true;
        }
    </script>
    <%
        String user = "";
        String us = "";
        String li = "";
        String li2 = "";
        String href = "";

        DaoPais daoPais = new DaoPais();
        DaoInvestigador daoInvst = new DaoInvestigador();
        List<Investigador> listInvt = daoInvst.mostrarInvest();
    %>

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
                                    <li><a class="dropdown-item" href="estadoInvestigaciones.jsp?estado=4">Pendiente de revisar</a></li>
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
                        <div class="col-12">
                            <div class="card styled-dialog" >
                                <div class="card styled-dialog" >
                                    <div class="card-header" style="background-color: #1cb2e2">
                                        <div class="d-flex justify-content-between " >
                                            <div class="text-center w-100"><h1 class="text-center">Gestionar Investigadores</h1></div>
                                            <div class="col-12 col-xl-auto">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card-body">
                                        <div class="px-5" >
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <form name="frmPersonal" action="../investigadorController" method="POST">
                                                        <div class="panel">
                                                            <div class="panel-heading">
                                                                <h3 class="panel-title"><i class="fa fa-male"></i> Investigador</h3>
                                                            </div>
                                                            <div class="panel-body">
                                                                <label>ID: </label>
                                                                <input type="number" class="form-control" name="txtIdInvst" readonly placeholder="ID">
                                                                <br>
                                                                <label>Usuario: </label>
                                                                <select name="selectUsuario" class="form-select">
                                                                    <%
                                                                        List<Usuarios> usuarios = daoInvst.mostrarUserr();
                                                                        for (Usuarios p : usuarios) {
                                                                    %>
                                                                    <option value="<%= p.getCodUsuario()%>">
                                                                        <%= p.getUserName()%>
                                                                    </option>
                                                                    <%}%>
                                                                </select>
                                                                <br>
                                                                <label>Nombre: </label>
                                                                <input type="text" pattern="[A-Z a-z ]+" autocomplete="off" class="form-control" name="txtNombre" required  placeholder="">
                                                                <br>
                                                                <label>Apellidos: </label>
                                                                <input type="text" pattern="[A-Z a-z ]+" autocomplete="off" class="form-control" name="txtApellidos" required  placeholder="">
                                                                <br>
                                                                <label>Nacionalidad: </label>
                                                                <select class="form-select"
                                                                        name="cmbNacionalidad"
                                                                        required="">
                                                                    <option value="0">
                                                                        Selecione su nacionalidad
                                                                    </option>
                                                                    <%
                                                                        List<Paises> pais = daoPais.getPaises();
                                                                        for (Paises p : pais) {
                                                                    %>
                                                                    <option value="<%=p.getIdPais()%>"><%=p.getPais()%></option>
                                                                    <%}%>
                                                                </select>

                                                                <br>
                                                                <label>Ciudad: </label>
                                                                <input type="text" pattern="[A-Z a-z ]+" autocomplete="off" class="form-control" name="txtCiudad" id="txtCiudad" required  placeholder="">
                                                                <br>

                                                                <label>Fecha de Nacimiento: </label>
                                                                <input type="date"  min="1990-01-01" max="2005-12-31" autocomplete="off" class="form-control" name="txtFecha" required  placeholder="">
                                                                <br>
                                                                <label>Numeros de investigadores: </label>
                                                                <input type="number" min="1" max="100" autocomplete="off" class="form-control" name="txtCant" required  placeholder="">
                                                                <br>

                                                                <p class="demo-button">
                                                                    <button type="submit" name="btnGuardar" class="btn btn-primary" onclick="if (!confirm('¿Desea Guardar el registro?'))
                                                                                return false;"><i class="fa fa-save"></i> Guardar</button>
                                                                    <button disabled="" type="submit" name="btnModificar" class="btn btn-warning" onclick="if (!confirm('¿Desea Modificar el registro?'))
                                                                                return false;"><i class="fa fa-pencil"></i> Modificar</button>

                                                                    <button disabled="" type="submit" name="btnEliminar" class="btn btn-danger" onclick="if (!confirm('¿Desea Eliminar el registro?'))
                                                                                return false;"> Eliminar</button>

                                                                    <button type="reset" onclick="des();" class="btn btn-info" title="Limpiar Cajas de texto" >&nbsp;&nbsp;&nbsp;&nbsp;Limp</button>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="panel">
                                                        <div class="panel-heading">
                                                            <h3 class="panel-title"><i class="fa fa-male"></i> Tabla de Investigadores</h3>
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="input-group">
                                                                <span class="input-group-addon m-2"><i class="fa fa-search"></i></span>
                                                                <input id="searchTerm" class="form-control-static border border-dark" placeholder="Buscar" type="text" onkeyup="doSearch();" />
                                                            </div>
                                                            <div style="overflow: scroll;height: 433px;">
                                                                <table id="datos" class="table styled-table" id="tabla">
                                                                    <thead class="bg-primary text-white">
                                                                        <tr class="text-center">
                                                                            <th>ID</th>
                                                                            <th>Usuario</th>
                                                                            <th>Nombre</th>
                                                                            <th>Apellido</th>
                                                                            <th>Nacionalidad</th>
                                                                            <th>Ciudad</th>
                                                                            <th>Fecha de Nacimiento</th>
                                                                            <th>Cantidad de investigadores</th>
                                                                            <th>Seleccione</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <%
                                                                            for (Investigador invst : listInvt) {
                                                                                String fecha = invst.getPais();
                                                                                List<Paises> pa = daoPais.buscarPais(fecha);
                                                                                for (Paises p : pa) {
                                                                        %>
                                                                        <tr class="text-center">
                                                                            <td><%= invst.getIdInvestigador()%></td>
                                                                            <td><%= invst.getUsuarios().getCodUsuario()%></td>
                                                                            <td><%= invst.getNombre()%></td>
                                                                            <td><%= invst.getApellido()%></td>
                                                                            <td><%= invst.getPais()%></td>
                                                                            <td><%= invst.getCiudad()%></td>
                                                                            <td><%= invst.getFechaNac()%></td>
                                                                            <td><%= invst.getCantInvestigadores()%></td>

                                                                            <td><a class="btn btn-success" href="javascript:cargar('<%=invst.getIdInvestigador()%>','<%=invst.getUsuarios().getCodUsuario()%>','<%=invst.getNombre()%>','<%=invst.getApellido()%>',
                                                                                   '<%=p.getIdPais()%>','<%=invst.getCiudad()%>','<%=invst.getFechaNac()%>','<%=invst.getCantInvestigadores()%>');">Seleccionar</a></td>
                                                                        </tr>
                                                                        <%
                                                                                }
                                                                            }
                                                                        %>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
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