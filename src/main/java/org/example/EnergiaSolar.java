package org.example;

public class EnergiaSolar extends EnergiaRenovable{
    public EnergiaSolar(String id, String tipo, String pais, int anio, double producion, double consumo) {
        super(id, tipo, pais, anio, producion, consumo);
    }
/*
    public EnergiaSolar(String id, double potenciaMaxima, double nivelBateria) {
        super(id, potenciaMaxima, nivelBateria);
    }


    @Override
    public void producirEnergia(double horas){
        double energiaProducida = super.getPotenciaMaxima() * horas * 1.2;
        System.out.println("Panel industrial "+ super.getId() + " ha producido " + energiaProducida + " Kwh");
    }

    public void modoAhorro(){
        System.out.println("El panel industrial " + super.getId() + " esta en modo ahorro");
    }


 */

}
