package com.utp.integrador.credito.vehicular.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import com.utp.integrador.credito.vehicular.model.Cuota;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
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

        List<Cuota> lsCuotas = new ArrayList<>();
        
        Cuota cuotaCero = new Cuota();
        cuotaCero.setNumero(0);
        cuotaCero.setCapital(12000.00);

        double[] intereses = new double[37];
        intereses[0] = 0;
        intereses[1] = 153.70;
        intereses[2] = 150.31;
        intereses[3] = 146.88;
        intereses[4] = 143.40;
        intereses[5] = 139.89;
        intereses[6] = 136.32;
        intereses[7] = 132.71;
        intereses[8] = 129.06;
        intereses[9] = 125.35;
        intereses[10] = 121.60;
        intereses[11] = 117.80;
        intereses[12] = 113.96;
        intereses[13] = 110.06;
        intereses[14] = 106.11;
        intereses[15] = 102.12;
        intereses[16] = 98.07;
        intereses[17] = 93.97;
        intereses[18] = 89.82;
        intereses[19] = 85.61;
        intereses[20] = 81.35;
        intereses[21] = 77.04;
        intereses[22] = 72.67;
        intereses[23] = 68.25;
        intereses[24] = 63.76;
        intereses[25] = 59.22;
        intereses[26] = 54.63;
        intereses[27] = 49.97;
        intereses[28] = 45.26;
        intereses[29] = 40.48; 
        intereses[30] = 35.64; 
        intereses[31] = 30.74; 
        intereses[32] = 25.78;
        intereses[33] = 20.75; 
        intereses[34] = 15.66;
        intereses[35] = 10.51; 
        intereses[36] = 5.29;
 
        double[] amortizaciones = new double[37];
        amortizaciones[0] = 0;
        amortizaciones[1] = 264.46;
        amortizaciones[2] = 267.85;
        amortizaciones[3] = 271.28;
        amortizaciones[4] = 274.76;
        amortizaciones[5] = 278.27;
        amortizaciones[6] = 281.84;
        amortizaciones[7] = 285.45;
        amortizaciones[8] = 289.10;
        amortizaciones[9] = 292.81;
        amortizaciones[10] = 296.56;
        amortizaciones[11] = 300.36;
        amortizaciones[12] = 304.20;
        amortizaciones[13] = 308.10;
        amortizaciones[14] = 312.05;
        amortizaciones[15] = 316.04;
        amortizaciones[16] = 320.09;
        amortizaciones[17] = 324.19;
        amortizaciones[18] = 328.34;
        amortizaciones[19] = 332.55;
        amortizaciones[20] = 336.81;
        amortizaciones[21] = 341.12;
        amortizaciones[22] = 345.49;
        amortizaciones[23] = 349.91;
        amortizaciones[24] = 354.40;
        amortizaciones[25] = 358.94;
        amortizaciones[26] = 363.53;
        amortizaciones[27] = 368.19;
        amortizaciones[28] = 372.90;
        amortizaciones[29] = 377.68;
        amortizaciones[30] = 382.52;
        amortizaciones[31] = 387.42;
        amortizaciones[32] = 392.38;
        amortizaciones[33] = 397.41;
        amortizaciones[34] = 402.50;
        amortizaciones[35] = 407.65; 
        amortizaciones[36] = 412.87;


        double oldCuota = 12000;
        for(int i = 1; i < 37; i++) {
            oldCuota -= amortizaciones[i];
            Cuota cuota = new Cuota();
            cuota.setNumero(i);
            cuota.setCapital(oldCuota);
            cuota.setInteres(intereses[i]);
            cuota.setAmortizacion(amortizaciones[i]);
            cuota.setComision(4.05);
            cuota.setDesgravamen(6.00);
            cuota.setPagoDolares(428.21);
            cuota.setPagoSoles(1091.93);
            lsCuotas.add(cuota);
        }        

        request.setAttribute("cuotas", lsCuotas);
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
