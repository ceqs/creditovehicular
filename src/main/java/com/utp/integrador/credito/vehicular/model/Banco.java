package com.utp.integrador.credito.vehicular.model;

/**
 * Curso Integrador 1: Sistemas y Software
 * @author U20101684 - Carlos Quispe Salazar
 * @author U20100058 - Marco Schenone
 */
public class Banco {
    private String nombre;
    private String descripcion;
    private double tasa;
    private String logo;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getTasa() {
        return tasa;
    }

    public void setTasa(double tasa) {
        this.tasa = tasa;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }
}
