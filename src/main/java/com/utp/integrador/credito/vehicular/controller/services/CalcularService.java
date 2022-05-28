package com.utp.integrador.credito.vehicular.controller.services;

import com.utp.integrador.credito.vehicular.model.Cuota;
import java.util.ArrayList;
import java.util.List;

/**
 * Curso Integrador 1: Sistemas y Software
 * @author U20101684 - Carlos Quispe Salazar
 * @author U20100058 - Marco Schenone
 */
public class CalcularService {
    public final static int DAYS_MONTH = 30;
    public final static double DOLAR_CHANGE = 3.66;
    
    public List<Cuota> calcularCuotas(double costoAuto, int plazo, double tea, double desgravamen, String moneda, int inicial, int ingresos, double comision) {
        
        double tem = tem(tea, DAYS_MONTH);
        double capital = costoAuto - ((costoAuto * inicial) / 100);
        double capitalActual = capital;
        double seguro = (capitalActual * desgravamen) / 100;
        
        List<Cuota> lsCuotas = new ArrayList<>();
        
        Cuota cuotaCero = new Cuota();
        cuotaCero.setNumero(0);
        cuotaCero.setCapital(capitalActual);
        lsCuotas.add(cuotaCero);

        for(int i = 1; i <= plazo; i++) {
            double interes = ipmt(tem/100, i, plazo, (capital * -1));
            double amortizacion = ppmt(tem/100, i, plazo, (capital * -1));
            capitalActual -= amortizacion;
            double pago = interes + amortizacion + comision + seguro;
            double pagoDolares;
            double pagoSoles;
            if(moneda.equals("D")) {
                pagoDolares = interes + amortizacion + comision + seguro;
                pagoSoles = pagoDolares * DOLAR_CHANGE;
            }
            else {
                pagoSoles = interes + amortizacion + comision + seguro;
                pagoDolares = pagoSoles / DOLAR_CHANGE;
            }
            
            Cuota cuota = new Cuota();
            cuota.setNumero(i);
            cuota.setCapital(capitalActual);
            cuota.setInteres(interes);
            cuota.setAmortizacion(amortizacion);
            cuota.setComision(comision);
            cuota.setDesgravamen(seguro);
            cuota.setPagoDolares(pagoDolares);
            cuota.setPagoSoles(pagoSoles);
            lsCuotas.add(cuota);
        }
        return lsCuotas;
    }
    
    static public double tem(double tea, double periodo) {
        double tem = (Math.pow((1+(tea/100)),(periodo/360))-1)*100;
        return tem;
    }
    
    /*
    La función FV calculará el valor futuro de una inversión, cuota o pagos programados en 
    base a pagos periódicos y constantes con tasa de interés fija. 
    */
    static public double fv(double r, int nper, double pmt, double pv, int type) {
        double fv = -(pv * Math.pow(1 + r, nper) + pmt * (1 + r * type) * (Math.pow(1 + r, nper) - 1) / r);
        return fv;
    }

    static public double fv(double r, int nper, double c, double pv) {
        return fv(r, nper, c, pv, 0);
    }

    /*
    La función PMT calcula el pago mensual de un préstamo amortizable con tipo de interés fijo. 
    */
    static public double pmt(double r, int nper, double pv, double fv, int type) {
        double pmt = -r * (pv * Math.pow(1 + r, nper) + fv) / ((1 + r * type) * (Math.pow(1 + r, nper) - 1));
        return pmt;
    }

    static public double pmt(double r, int nper, double pv, double fv) {
        return pmt(r, nper, pv, fv, 0);
    }

    static public double pmt(double r, int nper, double pv) {
        return pmt(r, nper, pv, 0);
    }

    /*
    La función IPMT calcula el pago de intereses de una inversión para un período determinado basándose en 
    pagos periódicos y constantes y una tasa de interés constante.
    */
    static public double ipmt(double r, int per, int nper, double pv, double fv, int type) {
        double ipmt = fv(r, per - 1, pmt(r, nper, pv, fv, type), pv, type) * r;
        if (type == 1) ipmt /= (1 + r);
        return ipmt;
    }

    static public double ipmt(double r, int per, int nper, double pv, double fv) {
        return ipmt(r, per, nper, pv, fv, 0);
    }

    static public double ipmt(double r, int per, int nper, double pv) {
        return ipmt(r, per, nper, pv, 0);
    }
    
    /*
    La función PPMT calcula el pago de capital durante un período específico para una inversión basada en 
    pagos constantes repetidos y una tasa de interés constante. El capital es la cantidad que tiene que 
    devolver y los intereses son los cargos que paga por pedir prestado el dinero.
    */
    static public double ppmt(double r, int per, int nper, double pv, double fv, int type) {
        return pmt(r, nper, pv, fv, type) - ipmt(r, per, nper, pv, fv, type);
    }

    static public double ppmt(double r, int per, int nper, double pv, double fv) {
        return pmt(r, nper, pv, fv) - ipmt(r, per, nper, pv, fv);
    }

    static public double ppmt(double r, int per, int nper, double pv) {
        return pmt(r, nper, pv) - ipmt(r, per, nper, pv);
    }
}
