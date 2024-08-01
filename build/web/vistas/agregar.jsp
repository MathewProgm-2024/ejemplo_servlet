<%-- 
    Document   : agregar
    Created on : 6/07/2024, 6:41:17 p. m.
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Persona</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar Persona</h1>
                <form action="Controlador">

                    Nombres:<br>
                    <input class="form-control" type="text" name="txtNombre"><br>
                    Apellidos:<br>
                    <input class="form-control" type="text" name="txtApellido"><br>
                    Edad:<br>
                    <input class="form-control" type="text" name="txtEdad"><br>

                    <input class="btn btn-primary" type="submit" name="accion" value="AGREGAR"><br>
                    <a href="Controlador?accion=listar">Regresar</a>
                </form>
            </div>
        </div>
    </body>
</html>
