/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

/**
 *
 * @author Santos G Facio
 * Notes: this file uses cookies 
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet (name = "muestraSuma", urlPatterns = {"/muestraSuma"})

public class muestraSuma_1 extends HttpServlet {
    
    protected void processRequest (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType ("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            String n1 = request.getParameter ("num1");
            String n2 = request.getParameter ("num2");
            model.Suma s = new model.Suma(n1, n2);
            s.hacerSuma();
            
            Cookie ck = new Cookie ("num1", s.getNum1() + "");
            response.addCookie(ck);
            ck = new Cookie ("num2", s.getNum2() + "");
            response.addCookie(ck);
            ck = new Cookie ("suma", s.getResultado() + "");
            response.addCookie(ck);
            
            int resultado = s.getResultado();
            request.setAttribute ("sumaResuelta", s);
            request.getRequestDispatcher("/muestraResultado.jsp").forward(request, response);                                        
        }
        
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    protected void doGet (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest (request, response);
    }
     
    
    @Override 
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest (request, response);
    }
    
    
    @Override
    public String getServletInfo () {
        return "Short Description";      
    }    
}
