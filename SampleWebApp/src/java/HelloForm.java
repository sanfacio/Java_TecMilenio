/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author sanfa
 */
// Import required java libraries
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

// Extend HttpServlet class
public class HelloForm extends HttpServlet {
 
   public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      
      // Set response content type
      response.setContentType("text/html");

      PrintWriter out = response.getWriter();
      String title = "Uso del método GET para obtener datos del Navegador cliente";
      String docType =
         "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
         
      out.println(docType +
         "<html>\n" +
            "<head><title>" + title + "</title></head>\n" +
            "<body bgcolor = \"#f0f0f0\">\n" +
               "<h1 align = \"center\">" + title + "</h1>\n" +
               "<ul>\n" +
                  "  <li><b>Nombre</b>: "
                  + request.getParameter("nombre") + "\n" +
                  "  <li><b>Apellido</b>: "
                  + request.getParameter("apellido") + "\n" +
               "</ul>\n" +
            "</body>" +
         "</html>"
      );
   }
}
