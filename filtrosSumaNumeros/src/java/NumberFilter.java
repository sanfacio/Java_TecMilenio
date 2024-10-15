/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author sanfa
 */
package com.example.filters;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter("/sum")
public class NumberFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // No necesitamos inicialización
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        String num1String = request.getParameter("num1");
        String num2String = request.getParameter("num2");

        int num1 = Integer.parseInt(num1String);
        int num2 = Integer.parseInt(num2String);

        if (num1 > 10 || num2 > 10) {
            request.setAttribute("errorMessage", "Los números no pueden ser mayores a 10.");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            chain.doFilter(request, response);  // Pasar la solicitud al servlet
        }
    }

    @Override
    public void destroy() {
        // No necesitamos destruir nada
    }
}

