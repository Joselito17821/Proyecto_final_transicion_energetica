package org.example;

import java.util.ArrayList;
import java.util.List;

public class PlantaPanel {

    public static void main(String[] args) {
        EnergiaEolica eolica1 = new EnergiaEolica("001","eolica","colombia",2015,600.0,200.5);
        eolica1.balanceEnergetico(150);
/*
        List<EnergiaRenovable> paneles = new ArrayList<>();

        paneles.add(new PanelResidencial("001", 50, 80));
        paneles.add(new PanelIndustrial("001", 60, 50));


        for(EnergiaRenovable panel:paneles){
            panel.producirEnergia(3.5);
            panel.modoAhorro();
        }
 */
    }

}