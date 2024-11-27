package org.example;

public abstract class EnergiaRenovable {

    private String tipo;
    private double produccion;
    private double consumo;

    // Constructor

    public EnergiaRenovable(String tipo, double produccion, double consumo) {
        this.tipo = tipo;
        this.produccion = produccion;
        this.consumo = consumo;
    }


    // Métodos Get y Set


    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setProduccion(double produccion) {
        this.produccion = produccion;
    }

    public void setConsumo(double consumo) {
        this.consumo = consumo;
    }

    public String getTipo() {
            return tipo;
        }

        public double getProduccion() {
            return produccion;
        }

        public double getConsumo() {
            return consumo;
        }

    // Método abstracto para calcular eficiencia
    public abstract double calcularEficiencia();

    // Método para calcular el balance energético
    public double calcularBalanceEnergetico() {
        return produccion - consumo;
    }

}


