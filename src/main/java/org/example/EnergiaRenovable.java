package org.example;

public class EnergiaRenovable {

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
    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public double getProduccion() {
        return produccion;
    }

    public void setProduccion(double produccion) {
        this.produccion = produccion;
    }

    public double getConsumo() {
        return consumo;
    }

    public void setConsumo(double consumo) {
        this.consumo = consumo;
    }

    // Método abstracto para calcular eficiencia
    public abstract double calcularEficiencia();
}
