package com.utp.integrador.credito.vehicular.controller.services;

import com.utp.integrador.credito.vehicular.model.Banco;
import java.util.ArrayList;
import java.util.List;

/**
 * Curso Integrador 1: Sistemas y Software
 * @author U20101684 - Carlos Quispe Salazar
 * @author U20100058 - Marco Schenone
 */
public class BancoService {
    /*
    Esta información debería llegar desde una base de datos.
    cobrariamos a los bancos por mostrar la información.
    */
    public List<Banco> listarBancos() {
        List<Banco> lsBancos = new ArrayList<>();
        Banco bcp = new Banco();
        bcp.setNombre("Banco de credito del Perú");
        bcp.setTasa(8.00);
        bcp.setLogo("images/bancos/bcp.svg");
        bcp.setDescripcion("BCP ofrece una tasa desde el <b>" + bcp.getTasa() + "%</b> anual.");
        lsBancos.add(bcp);
        
        Banco scotiabank = new Banco();
        scotiabank.setNombre("Scotiabank");
        scotiabank.setTasa(8.50);
        scotiabank.setLogo("images/bancos/bcp.svg");
        scotiabank.setDescripcion("Scotiabank ofrece una tasa desde el <b>" + scotiabank.getTasa() + "%</b> anual.");
        lsBancos.add(scotiabank);
        
        Banco bbva = new Banco();
        bbva.setNombre("BBVA");
        bbva.setTasa(9.00);
        bbva.setLogo("images/bancos/bbva.svg");
        bbva.setDescripcion("BBVA ofrece una tasa desde el <b>" + bbva.getTasa() + "%</b> anual.");
        lsBancos.add(bbva);
        
        Banco banbif = new Banco();
        banbif.setNombre("Banbif");
        banbif.setTasa(9.50);
        banbif.setLogo("images/bancos/banbif.svg");
        banbif.setDescripcion("Banbif ofrece una tasa desde el <b>" + banbif.getTasa() + "%</b> anual.");
        lsBancos.add(banbif);
        return lsBancos;
    }
}
