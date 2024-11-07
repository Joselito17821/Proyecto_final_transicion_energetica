package org.example;


public class EnergiaHidroelectrica  {
    private double energiaHidroelectrica; // Renombrado para evitar confusión con el tipo

    // Constructor
    public EnergiaHidroelectrica(String id, double potenciaMaxima, double energiaHidroelectrica) {
        super(id, potenciaMaxima);
        this.energiaHidroelectrica = energiaHidroelectrica;
    }

    // Getter y Setter
    public double getEnergiaHidroelectrica() {
        return energiaHidroelectrica;
    }

    public void setEnergiaHidroelectrica(double energiaHidroelectrica) {
        this.energiaHidroelectrica = energiaHidroelectrica;
    }

    // Método sobreescrito
    @Override
    public void verificarEstado() {
        if (energiaHidroelectrica < 100) {
            setEnFuncionamiento(false);
            System.out.println("La planta hidroeléctrica " + getId() + " no tiene suficiente energía para operar.");
        } else {
            setEnFuncionamiento(true);
            System.out.println("La planta hidroeléctrica " + getId() + " está en funcionamiento.");
        }
    }
}