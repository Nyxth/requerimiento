<%-- 
    Document   : index
    Created on : 12-jun-2018, 22:28:56
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
        <h1>Autentificacion:</h1>
        <form method="POST" action="VerficiarU.jsp">
            <p>Usuario:  <input type="text" name="txtUser"></p>
            <p>Password: <input type="text" name="txtCont"></p> 
             <%if (request.getAttribute("msg")!=null){out.print(request.getAttribute("msg"));}%>
            <p><input type="checkbox" name="recordar">recordar <p>
           
             <input type="submit" value="Ingresar">
       </form>
       
        
    </body>
</html>
