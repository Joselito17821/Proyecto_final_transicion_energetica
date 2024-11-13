package org.example.subEnergias;

import org.example.EnergiaRenovable;
import org.example.IEnergia;

public class EnergiaHidroelectrica extends EnergiaRenovable implements IEnergia {
    public EnergiaHidroelectrica(double produccion, double consumo) {
        super("Energia Hidroelectrica", produccion, consumo);
    }

    @Override
    public double calcularEficiencia() {
        return (getProduccion() - 0.05 * getConsumo()) / getConsumo(); // Ejemplo de cálculo específico
    }
}