package org.example.subEnergias;

import org.example.EnergiaRenovable;
import org.example.IEnergia;

public class EnergiaGeotermica extends EnergiaRenovable implements IEnergia {
    public EnergiaGeotermica(double produccion, double consumo) {
        super("Geotermica", produccion, consumo);
    }

    @Override
    public double calcularEficiencia() {
        return (getProduccion() - 0.05 * getConsumo()) / getConsumo(); // Ejemplo de cálculo específico
    }

}
