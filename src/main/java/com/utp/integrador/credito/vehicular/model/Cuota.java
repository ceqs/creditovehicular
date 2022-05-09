/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utp.integrador.credito.vehicular.model;

/**
 *
 * @author ceqs
 */
public class Cuota {
    private int numero;
    private double capital;
    private double interes;
    private double amortizacion;
    private double comision;
    private double desgravamen;
    private double pagoSoles;
    private double pagoDolares;

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public double getCapital() {
        return capital;
    }

    public void setCapital(double capital) {
        this.capital = capital;
    }

    public double getInteres() {
        return interes;
    }

    public void setInteres(double interes) {
        this.interes = interes;
    }

    public double getAmortizacion() {
        return amortizacion;
    }

    public void setAmortizacion(double amortizacion) {
        this.amortizacion = amortizacion;
    }

    public double getComision() {
        return comision;
    }

    public void setComision(double comision) {
        this.comision = comision;
    }

    public double getDesgravamen() {
        return desgravamen;
    }

    public void setDesgravamen(double desgravamen) {
        this.desgravamen = desgravamen;
    }

    public double getPagoSoles() {
        return pagoSoles;
    }

    public void setPagoSoles(double pagoSoles) {
        this.pagoSoles = pagoSoles;
    }

    public double getPagoDolares() {
        return pagoDolares;
    }

    public void setPagoDolares(double pagoDolares) {
        this.pagoDolares = pagoDolares;
    }
}
