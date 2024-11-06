package org.example;

public class EnergiaEolica extends EnergiaRenovable{

    public EnergiaEolica(String id, String tipo, String pais, int anio, double producion, double consumo) {
        super(id, tipo, pais, anio, producion, consumo);
    }

    @Override
         public void balanceEnergetico(double numeroGeneradores){
             //double consumoEnergetico = super.getProducion() - super.getConsumo();
             //System.out.println("El balance de " + super.getPais() + " de energia " + super.getTipo() + " en el " + super.getAnio() + " fue " + consumoEnergetico);
             super.balanceEnergetico(numeroGeneradores);
             System.out.println("Usando un numero de " + numeroGeneradores + " turbinas ");

         }

}
