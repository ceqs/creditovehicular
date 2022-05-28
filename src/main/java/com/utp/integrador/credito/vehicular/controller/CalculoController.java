package com.utp.integrador.credito.vehicular.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import com.utp.integrador.credito.vehicular.controller.services.CalcularService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ceqs
 */
@WebServlet(name = "CalculoController", urlPatterns = {"/calcular"})
public class CalculoController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            int op = Integer.parseInt(request.getParameter("opc"));           
            switch (op) {
                case 1:
                    calcular(request, response);
                    break;
            }
        }
    }

    protected void calcular(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        Enumeration<String> parameterNames = request.getParameterNames();

        while (parameterNames.hasMoreElements()) {

            String paramName = parameterNames.nextElement();
            System.out.println(paramName);

            String[] paramValues = request.getParameterValues(paramName);
            for (String paramValue : paramValues) {
                System.out.println(paramValue);
            }
        }
        
        String tipoAuto = request.getParameter("tipo_auto");
        double costoAuto = Double.parseDouble(request.getParameter("r_valor_auto"));
        int plazo = Integer.parseInt(request.getParameter("r_valor_plazo"));
        double tea = Double.parseDouble(request.getParameter("tea"));
        double desgravamen = Double.parseDouble(request.getParameter("desgravamen"));
        String moneda = request.getParameter("moneda");
        int inicial = Integer.parseInt(request.getParameter("r_valor_cuota"));
        int ingresos = Integer.parseInt(request.getParameter("r_valor_ingresos"));
        double comision = Double.parseDouble(request.getParameter("comision"));
        
                
        CalcularService services = new CalcularService();
        
        request.setAttribute("moneda", moneda);
        request.setAttribute("cuotas", services.calcularCuotas(costoAuto, plazo, tea, desgravamen, moneda, inicial, ingresos, comision));
        request.getRequestDispatcher("/corrida.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
