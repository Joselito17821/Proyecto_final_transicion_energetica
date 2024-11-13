package org.example.subEnergias;

import org.example.EnergiaRenovable;
import org.example.IEnergia;

public class EnergiaBiomasa extends EnergiaRenovable implements IEnergia {
    public EnergiaBiomasa(double produccion, double consumo ) {
        super("Solar", produccion, consumo);
    }

    @Override
    public double calcularEficiencia() {
        return (getProduccion() - 0.05 * getConsumo()) / getConsumo(); // Ejemplo de cálculo específico
    }
}
