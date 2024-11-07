package org.example;


public class EnergiaBiomasa extends FuenteEnergia {
    private double cantidadMaterialOrganico;

    public Biomasa(String id, double potenciaMaxima, double cantidadMaterialOrganico) {
        super(id, potenciaMaxima);
        this.cantidadMaterialOrganico = cantidadMaterialOrganico;
    }

    // Getters y Setters
    public double getCantidadMaterialOrganico() {
        return cantidadMaterialOrganico;
    }

    public void setCantidadMaterialOrganico(double cantidadMaterialOrganico) {
        this.cantidadMaterialOrganico = cantidadMaterialOrganico;
    }

    @Override
    public void verificarEstado() {
        if (cantidadMaterialOrganico < 10) {
            setEnFuncionamiento(false);
            System.out.println("La planta de biomasa " + getId() + " no tiene suficiente material para operar.");
        } else {
            setEnFuncionamiento(true);
            System.out.println("La planta de biomasa " + getId() + " está en funcionamiento.");
        }
    }
}
