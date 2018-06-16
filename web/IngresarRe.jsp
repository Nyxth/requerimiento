<%-- 
    Document   : IngresarRe
    Created on : 12-jun-2018, 22:46:23
    Author     : nero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ingresar Requerimiento</h1>
        <form>
        <p>Gerencia: <select> </select></p>
        <p>Depto.: <select> </select></p>
        <p>Asignar a: <select> </select></p>
        <p>Encargado:<select> </select></p>
        <p>Requerimiento: <input type="text" name="Reque"></p>
        <form>
        <input type="submit" value="Guardar">
    </form>
        <br> <form action="Menu.jsp">
        <input type="submit" value="Volver al Menú">
        </form></br>
    </body>
</html>
