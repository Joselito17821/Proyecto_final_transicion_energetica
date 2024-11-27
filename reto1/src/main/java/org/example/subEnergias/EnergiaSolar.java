package org.example.subEnergias;

import org.example.EnergiaRenovable;
import org.example.IEnergia;

public class EnergiaSolar extends EnergiaRenovable implements IEnergia {
    public EnergiaSolar(double produccion, double consumo ) {
        super("Solar", produccion, consumo);
    }

    @Override
    public double calcularEficiencia() {
        return getProduccion() / getConsumo();
    }
}

