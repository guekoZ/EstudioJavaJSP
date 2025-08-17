<%-- 
    Document   : newjsp
    Created on : 16 ago 2025, 5:52:11 p.m.
    Author     : gueko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String usuario = request.getParameter("usuario");
            String contra = request.getParameter("contra");
            String pais = request.getParameter("pais");
            String tecno = request.getParameter("tecnologias");
            
            Class.forName("org.mariadb.jdbc.Driver");

            java.sql.Connection miconexion = java.sql.DriverManager.getConnection("jdbc:mariadb://192.168.1.11:3306/proyecto_jsp", "root", "normab");

            java.sql.Statement miStatement = miconexion.createStatement();

            String instruccionSql = "INSERT INTO usuarios(nombre,apellido,usuario,contrasena,pais,tecnologia) VALUES ('" + nombre + "','" + apellido + "','" + usuario + "','" + contra + "','" + pais + "','" + tecno + "')";

            miStatement.executeUpdate(instruccionSql);

            out.println("Datos agregados correctament");

        %>


    </body>
</html>
