<%-- 
    Document   : dashBoard
    Created on : 11-02-2022, 08:08:00 PM
    Author     : josue
--%>
<%@page import="java.util.List"%>
<%@page import="com.dao.*"%>
<%@page import="com.modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    DaoInvestigacion daoInvest = new DaoInvestigacion();
%>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>  
        <link href="../css/tabla.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
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
                                    Mis investigaciones
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li><a class="dropdown-item" href="agregarInvestigacion.jsp">Agregar investigación</a></li>
                                    <li><a class="dropdown-item" href="misInvestigaciones.jsp">Todas</a></li>

                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Observaciones Recientes
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="observacionesRecientes.jsp">Ultimas observaciones</a></li>
                                    <li><a class="dropdown-item" href="observaciones.jsp">Todas</a></li>

                                </ul>
                            </li>                            
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Estados de investigaciones
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="estadoInvestigaciones.jsp?estado=2">Rechazado primera revisión</a></li>
                                    <li><a class="dropdown-item" href="estadoInvestigaciones.jsp?estado=3">Aceptado primera revisión</a></li>
                                    <li><a class="dropdown-item" href="estadoInvestigaciones.jsp?estado=4">Rechazado segunda revisión</a></li>
                                    <li><a class="dropdown-item" href="estadoInvestigaciones.jsp?estado=5">Aceptado segunda revisión</a></li>
                                    <li><a class="dropdown-item" href="estadoInvestigaciones.jsp?estado=1">Pendiente de revisar</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><span class="position-absolute top-0 start-100 translate-middle badge border border-light rounded-circle bg-danger p-1" style="padding-top: 10px; left: 62.5% !important; top: 14px !important;"><span class="visually-hidden">mensajes no leídos</span></span>
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
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="">${nombre}</a></li>
                                    <li><a class="dropdown-item" href="">${rol} </a></li>
                                    <li><a class="dropdown-item" href="">
                                            <form action="../cerrarSession">
                                                <input type="submit" class="btn btn-info" value="Cerrar">
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


                    <div class="row my-2 justify-content-center w-100 " >
                        <div class="col-11">
                            <div class="card styled-dialog" >
                                <div class="card-header" style="background-color: #1cb2e2">
                                    <div class="d-flex justify-content-between " >
                                        <div class="text-center w-100"><h1 class="text-center">Agregar Investigación</h1></div>
                                        <div class="col-12 col-xl-auto">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="px-5" >


                                        <%--  fromulario de Editar --%>
                                        <form action="../agregarInvestigacionController" method="POST"  name="frmInvesti" id="frmInvesti">

                                            <div class="row">


                                                <div class="w-50 col-auto">
                                                    <label for="nombre" class="col-form-label">Editar portada </label>
                                                    <textarea  type="text" name="image" id="image" required> </textarea>                   
                                                </div>


                                                <div class="mb-3 w-50 col-auto">

                                                    <input type="hidden" value="0" name="txtIdInvestigacion"/>
                                                    <input type="hidden" class="form-control" id="txtEstado" value="1" name="txtEstado">
                                                    <input type="hidden" class="form-control" id="txtInvestigador" value="${id}" name="txtInvestigador">
                                                    <div>

                                                    </div>
                                                    <label for="nombre" class="col-form-label">Titulo: </label>
                                                    <input type="text" class="form-control" id="txtTitulo" name="txtTitulo" value="" placeholder="Titulo" required="Titulo requerido">
                                                    <label for="nombre" class="col-form-label">Pais de investigacion:  </label>
                                                    <select class="form-select" name="cmbPais" required="">
                                                        <option value="0">Selecione el País</option>
                                                        <%
                                                            DaoPais daoPais = new DaoPais();
                                                            List<Paises> pais = daoPais.getPaises();
                                                            for (Paises p : pais) {
                                                        %>
                                                        <option value="<%=p.getIdPais()%>"><%=p.getPais()%></option>
                                                        <%}%>
                                                    </select>
                                                    <label for="Fecha" class="col-form-label">Fecha: </label>
                                                    <input type="date" value="" class="form-control" id="txtFecha" name="txtFecha"  placeholder="Fecha" required="Fecha requerido">
                                                    <%
                                                        DaoTags daoTags = new DaoTags();
                                                        List<Tags> ta = daoTags.getTags();
                                                        for (Tags t : ta) {
                                                    %>
                                                    <div class="form-check form-check-inline m-3">
                                                        <input type="checkbox" id="tags" name="tags" id="tags" class="form-check-input" value="<%=t.getIdTags()%>">
                                                        <label class="form-check-label" for="tags"> <%=t.getContTags()%></label>
                                                    </div>

                                                    <%}%>
                                                </div>
                                            </div>
                                            <div class="w-100 m-3">
                                                <h5 class="text-center">Editor de Investigación</h5>
                                            </div>

                                            <textarea value="1" style="height: 500px; width: 500px;" type="text" name="txtInvestigacion" id="txtInvestigacion" required> </textarea> 
                                            <div class="mb-3">
                                                <input type="submit" style="display: none;"  class="btn my-3" style="background-color: #8c0d85" value="Editar" name="btnAdd" id="btnAdd"/>
                                                <input type="button" class="btn my-3" rows=15 style="background-color: #8c0d85; color: #ffffff" value="Agregar" name="btnEditar" id="btnEditar" onclick="insertar()"/>
                                            </div>

                                        </form>

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
    function insertar() {
        var fecha = document.getElementById('txtFecha').value;
        var titulo = document.getElementById('txtTitulo').value;
        if (fecha !== "" && titulo !== "") {
            swal({
                title: 'Estas seguro?',
                text: 'Insertar la investigación',
                icon: 'warning',
                buttons: true,
                dangerMode: true
            }).then((willDelete) => {
                if (willDelete) {

                    setTimeout(function () {
                        $('#btnAdd').click();
                    }, 900);
                    swal('Insertado con éxito', {
                        icon: 'success'
                    });
                } else {
                    swal('No se ha insertado');
                }

            });
        } else {
            setTimeout(function () {
                $('#btnAdd').click();
            }, 1);
        }

    }
    ;




</script>

<script>
    window.onload = () => {
        CKEDITOR.replace("txtInvestigacion");
        CKEDITOR.replace("image");
    };
    function sendText() {
        window.parent.postMessage(CKEDITOR.instances.txtInvestigacion.getData(), "*");
        window.parent.postMessage(CKEDITOR.instances.image.getData(), "*");
    }
</script>