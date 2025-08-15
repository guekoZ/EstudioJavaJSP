<!--Este codigo se mira en el video 230 en donde se explican los scriplets, este caso se explican las expresiones y las declaraciones-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <!--Estos admiten nada mas una linea de codigo-->
        <% String hola = "Hola para todos";%>
        
        <!--Estos se usan para mostrar informacion como variables, etc-->
        <%= hola%>



        <%!
            private int resultado;

            public int suma(int a, int b) {

                resultado = a + b;
                return resultado;
            }

            public int resta(int a, int b) {

                resultado = a - b;
                return resultado;
            }

             public int multiplicacion(int a, int b) {

                resultado = a * b;
                return resultado;
            }


        %>
        
       La suma de los dos numeros es: <%=  suma(3,5)%>

    </body>
</html>
