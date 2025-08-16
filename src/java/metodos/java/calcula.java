/*
Este codigo se explica en el video 231 y explica como utlizar clases y metodos de un archivo externo 
en un archivo JSP. En este caso se esta clase con sus metodos son llamados en el archivo calcular.jsp
 */
package metodos.java;

public class calcula {
    
     private static int resultado;

            public static int suma(int a, int b) {

                resultado = a + b;
                return resultado;
            }

            public static int resta(int a, int b) {

                resultado = a - b;
                return resultado;
            }

             public static int multiplicacion(int a, int b) {

                resultado = a * b;
                return resultado;
            }
    
}
