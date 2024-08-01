<%-- 
    Document   : editar
    Created on : 6/07/2024, 6:41:27 p. m.
    Author     : USUARIO
--%>

<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <div>
            <div class="container">
                <div class="col-lg-6">
                    <%
                        PersonaDAO dao = new PersonaDAO();
                        int id = Integer.parseInt((String) request.getAttribute("idper"));
                        Persona p = (Persona) dao.list(id);

                    %>
                    <h1>Modificar Persona</h1>
                    <form action="Controlador">
                        <input type="hidden" name="txtId" value="<%= p.getId()%>"><br>
                        Nombres:<br>
                        <input class="form-control" type="text" name="txtNombre" value="<%= p.getNombre()%>"><br>
                        Apellidos:<br>
                        <input class="form-control" type="text" name="txtApellido" value="<%= p.getApellido()%>"><br>
                        Edad:<br>
                        <input class="form-control" type="text" name="txtEdad" value="<%= p.getEdad()%>"><br>
                        
                        <input class="btn btn-primary" type="submit" name="accion" value="ACTUALIZAR"><br>
                        <a href="Controlador?accion=listar">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
