<%-- 
    Document   : conocenos
    Created on : 11-10-2022, 10:47:51 AM
    Author     : josue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
        <!--llamando el bootsstrap-->
        <link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.css" />
        <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Custom styles for this template -->
        <link href="css/estilos.css" rel="stylesheet" />
        <link rel="stylesheet"
              href="data:text/css;charset=utf-8;base64,Y2xvdWRmbGFyZS1hcHBbYXBwLWlkPSJhLWJldHRlci1icm93c2VyIl0gewogIGRpc3BsYXk6IGJsb2NrOwogIGJhY2tncm91bmQ6ICM0NTQ4NGQ7CiAgY29sb3I6ICNmZmY7CiAgbGluZS1oZWlnaHQ6IDEuNDU7CiAgcG9zaXRpb246IGZpeGVkOwogIHotaW5kZXg6IDkwMDAwMDAwOwogIHRvcDogMDsKICBsZWZ0OiAwOwogIHJpZ2h0OiAwOwogIHBhZGRpbmc6IC41ZW0gMWVtOwogIHRleHQtYWxpZ246IGNlbnRlcjsKICAtd2Via2l0LXVzZXItc2VsZWN0OiBub25lOwogICAgIC1tb3otdXNlci1zZWxlY3Q6IG5vbmU7CiAgICAgIC1tcy11c2VyLXNlbGVjdDogbm9uZTsKICAgICAgICAgIHVzZXItc2VsZWN0OiBub25lOwp9CgpjbG91ZGZsYXJlLWFwcFthcHAtaWQ9ImEtYmV0dGVyLWJyb3dzZXIiXVtkYXRhLXZpc2liaWxpdHk9ImhpZGRlbiJdIHsKICBkaXNwbGF5OiBub25lOwp9CgpjbG91ZGZsYXJlLWFwcFthcHAtaWQ9ImEtYmV0dGVyLWJyb3dzZXIiXSBjbG91ZGZsYXJlLWFwcC1tZXNzYWdlIHsKICBkaXNwbGF5OiBibG9jazsKfQoKY2xvdWRmbGFyZS1hcHBbYXBwLWlkPSJhLWJldHRlci1icm93c2VyIl0gYSB7CiAgdGV4dC1kZWNvcmF0aW9uOiB1bmRlcmxpbmU7CiAgY29sb3I6ICNlYmViZjQ7Cn0KCmNsb3VkZmxhcmUtYXBwW2FwcC1pZD0iYS1iZXR0ZXItYnJvd3NlciJdIGE6aG92ZXIsCmNsb3VkZmxhcmUtYXBwW2FwcC1pZD0iYS1iZXR0ZXItYnJvd3NlciJdIGE6YWN0aXZlIHsKICBjb2xvcjogI2RiZGJlYjsKfQoKY2xvdWRmbGFyZS1hcHBbYXBwLWlkPSJhLWJldHRlci1icm93c2VyIl0gY2xvdWRmbGFyZS1hcHAtY2xvc2UgewogIGRpc3BsYXk6IGJsb2NrOwogIGN1cnNvcjogcG9pbnRlcjsKICBmb250LXNpemU6IDEuNWVtOwogIHBvc2l0aW9uOiBhYnNvbHV0ZTsKICByaWdodDogLjRlbTsKICB0b3A6IC4zNWVtOwogIGhlaWdodDogMWVtOwogIHdpZHRoOiAxZW07CiAgbGluZS1oZWlnaHQ6IDE7Cn0KCmNsb3VkZmxhcmUtYXBwW2FwcC1pZD0iYS1iZXR0ZXItYnJvd3NlciJdIGNsb3VkZmxhcmUtYXBwLWNsb3NlOmFjdGl2ZSB7CiAgLXdlYmtpdC10cmFuc2Zvcm06IHRyYW5zbGF0ZVkoMXB4KTsKICAgICAgICAgIHRyYW5zZm9ybTogdHJhbnNsYXRlWSgxcHgpOwp9CgpjbG91ZGZsYXJlLWFwcFthcHAtaWQ9ImEtYmV0dGVyLWJyb3dzZXIiXSBjbG91ZGZsYXJlLWFwcC1jbG9zZTpob3ZlciB7CiAgb3BhY2l0eTogLjllbTsKICBjb2xvcjogI2ZmZjsKfQo=">
        <title>Conocenos</title>
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
                                <a class="nav-link" aria-current="page" href="NuevoIngreso.php">Investigaciones</a>

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
            <section class="row">
                <div class="container bg-white">
                    <div class="row">
                        <div class="col-sm-5 img-2 img-bg" id="img-mujerestudiando"><img
                                class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto conoce mb-5"
                                src="../multimedia/img/social.jpg" width="550" height="650" role="img"
                                aria-label="Placeholder: 400x400" preserveAspectRatio="xMidYMid slice" focusable="false"
                                onmouseenter="conoce3(event)" onmouseout="conoce2(event)">
                            <title>Placeholder</title>
                            <rect width="100%" height="100%" fill="#eee" />
                            </img>
                        </div>
                        <div class="col-sm-7 py-5 pl-md-0 pl-4 mt-5">
                            <div class="heading-section text-about">
                                <span class="subheading"> About </span>
                                <h2>Conocenos</h2>
                            </div>
                            <div class="text-about">
                                <p>
                                    En toda América, desde Canadá hasta Argentina, tu mejor opción en investigaciones,
                                    investigaciones américanas,
                                    para tus trabajos de universidas, tu investigación científica, tu proyecto industrial o
                                    para avances en tu empresa.
                                </p>
                                <p>
                                    Nuevos tiempos requieren al ser humano muy bien informado, enfermedades, guerras, virus,
                                    criptos.
                                    El mundo sigue girando sin parar, y solamente estando muy bien informado sobre cualquier
                                    tema
                                    lograrás montarte en la nueva ola de tecnología y economía que se apróxima.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <div class="featurette-divider"></div>

            <section>
                <div class="cont-mv-out flex-sm-column flex-md-row flex-lg-row flex-xl-row">
                    <div class="cont-mv">
                        <h1>Misión</h1>
                        <hr />
                        <p>
                            Ser la empresa de investigación con la mayor base de datos de información de caracter científico
                            y
                            de cultura general del continente americano.
                        </p>
                    </div>
                    <div class="cont-mv">
                        <h1>Visión</h1>
                        <hr />
                        <p>
                            Ser líderes en investigación cientifica y academia en el contienente americano.
                        </p>
                    </div>
                </div>
            </section>
            <section>
                <div>
                    <h3>Visitanos</h3>
                    <div id="map" class="mt-5 mb-5  m-auto" style="height: 500px; width: 900px"></div>
                </div>
            </section>

        </main>
        <!-- Async script executes immediately and must be after any DOM elements used in callback. -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBN32n0CqZxdarGW82JIYrJWCRPJkWgyec&callback=initMap&v=weekly" async>

        </script>

        <script>
            //API MAPS
            function initMap() {
                mostrarUbicacion();
            }
            function mostrarUbicacion() {
                //obtener la lat y long del navegador
                const latitud = 13.7066;
                const longitud = -89.2052;
                //crear objeto que contenga la lat y long
                const miLatLon = {
                    lat: latitud,
                    lng: longitud,
                };
                //crear el mapa con el api
                const map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 15,
                    center: miLatLon,
                });
                //mostrar lat y long en consola
                console.log('lat: ', latitud, 'log: ', longitud);

                //creando un maker para la ubicacion actual
                new google.maps.Marker({
                    position: miLatLon,
                    map,
                    tittle: 'INVESTIGACIONES PARA LA REGION AMERICANA ',
                });
            }
        </script>

    </body>


</html>

