package org.example;

import java.util.ArrayList;

public class Region {
    private String nombre;
    private String localizacion;
    private ArrayList<EnergiaRenovable> energias;

    public Region(String nombre, String localizacion) {
        this.nombre = nombre;
        this.localizacion = localizacion;
        this.energias = new ArrayList<>();
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setLocalizacion(String localizacion) {
        this.localizacion = localizacion;
    }

    public void setEnergias(ArrayList<EnergiaRenovable> energias) {
        this.energias = energias;
    }

    public String getNombre() {
        return nombre;
    }

    public String getLocalizacion() {
        return localizacion;
    }

    public ArrayList<EnergiaRenovable> getEnergias() {
        return energias;
    }

    public void agregarEnergia(EnergiaRenovable energia) { energias.add(energia); }

    public void mostrarRegion() {
        System.out.println("Pais: " + nombre);
    }

    public void mostrarEficiencias() {
        for (EnergiaRenovable energia : energias) {
            System.out.println("Tipo de energía: " + energia.getTipo() + ", Eficiencia: " + energia.calcularEficiencia());
        }
    }
}
