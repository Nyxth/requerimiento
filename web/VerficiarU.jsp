<%-- 
    Document   : VerficiarU
    Created on : 12-jun-2018, 22:33:02
    Author     : nero
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        dwedw
        <%
        String usuario = request.getParameter ("txtUser");
        String contraseña = request.getParameter ("txtCont");
        String usuariosql="";
        String contraseñasql="";
        
        if (usuario.equals("")&&(contraseña.equals(""))){
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            request.setAttribute ("msg","no ha llenado ningun campo");
            rd.forward(request,response); 
            }
       
            
         
        try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
                String query="SELECT * FROM user WHERE user.name_usuario='"+usuario+"' AND user.password_usuario='"+contraseña+"';";
                Statement st=conn.createStatement ();
                ResultSet rs= st.executeQuery(query);
                
            
                while(rs.next()){
                 usuariosql= rs.getString("name_usuario");
                 contraseñasql=rs.getString("password_usuario");
                }
            }catch(SQLException ex){
            throw new SQLException(ex);  
            }
          if(!usuario.equals(usuariosql)||!contraseña.equals(contraseñasql)){
                request.setAttribute("msg", "Usuario o contraseña incorrecta");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);                
            }
        if(usuario.equals(usuariosql)||contraseña.equals(contraseñasql)){
                 HttpSession User = (HttpSession)request.getSession();      
                User.setAttribute("name",usuario);
                response.sendRedirect("Menu.jsp");             
            }
    
 
     
        
            
        %>
    </body>
</html>
