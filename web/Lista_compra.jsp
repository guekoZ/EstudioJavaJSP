<%-- 
    Este archivo se explica en los video 137 y 138, habla de las sesiones y como se pueden usar para guardar los datos
de la pagina o de la sesion de ese usuario y poder usarlos como una memomria de lo que se realizo en la sesion
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@ page import="java.util.*"  %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lista de la Compra</title>
    </head>
    <body>

        <form name="Formulario_Compra" action="Lista_compra.jsp">
            <p>Artículos a comprar:</p>
            <p>
                <label>
                    <input type="checkbox" name="articulos" value="agua " >
                    Agua </label>
                <br>
                <label>
                    <input type="checkbox" name="articulos" value="leche" >
                    Leche </label>
                <br>
                <label>
                    <input type="checkbox" name="articulos" value="pan" >
                    Pan </label>
                <br>
                <label>
                    <input type="checkbox" name="articulos" value="mazanas" >
                    Manzanas </label>
                <br>
                <label>
                    <input type="checkbox" name="articulos" value="carne" >
                    Carne </label>
                <br>
                <label>
                    <input type="checkbox" name="articulos" value="pescado" >
                    Pescado </label>
            </p>
            <p>
                <input type="submit" name="button" id="button" value="Enviar">
                <br>
            </p>
        </form>
       
        <h1>Carro de compras:</h1>
        <ul>
            <%
                
                List<String> ListaElementos= (List<String>)session.getAttribute("misElementos");
                
                if(ListaElementos==null){
                
                    ListaElementos = new ArrayList<String>();
                    session.setAttribute("misElementos", ListaElementos);
                    
                
                }
                
                String[] elementos = request.getParameterValues("articulos");

                if (elementos != null) {

                    for (String elemTemp : elementos) {

                        //out.println("<li>" + elemTemp+ "</li>");
                        ListaElementos.add(elemTemp);
                    }
                }
                
                 for (String elemTemp : ListaElementos) {

                       out.println("<li>" + elemTemp+ "</li>");
                       
                    }    
            %>     
        </ul>
    </body>
</html>

