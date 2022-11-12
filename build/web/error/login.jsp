
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <title>Error session</title>
    </head>
    <body>
        <script type="text/javascript">
            swal({
                title: "Error!",
                text: "Usuario y/o contraseña incorrecta!",
                icon: "error",
                type: "error"
            }).then(function () {
                window.location = "../Views/login.jsp";
            });
        </script>
    </body>
</html>