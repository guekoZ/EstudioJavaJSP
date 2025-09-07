package Servlets;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"src/java/Servlets/RegistroUsuarios"})
public class RegistroUsuarios extends HttpServlet {

    
    

    
    /*
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter salida= response.getWriter();
        
        salida.println("<!DOCTYPE html>");
        salida.println("<html>");
        salida.println("<head>");
        salida.println("<title>Servlet PrimerServlet</title>");
        salida.println("</head>");
        salida.println("<body>");
        salida.println("Nombre introducido"+ request.getParameter("nombre"));
        salida.println("<br><br>");
        salida.println("Apellido introducido"+ request.getParameter("apellido"));
        salida.println("</body>");
        salida.println("</html>");
        
    }

    /*
    
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
