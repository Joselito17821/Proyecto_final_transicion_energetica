package org.example;

public class EnergiaRenovable {
    //Definición de parametros
    private String id;
    private String tipo;
    private String pais;
    private int anio;
    private double producion;
    private double consumo;

    //Constructor
    public EnergiaRenovable(String id, String tipo, String pais, int anio, double producion, double consumo) {
        this.id = id;
        this.tipo = tipo;
        this.pais = pais;
        this.anio = anio;
        this.producion = producion;
        this.consumo = consumo;
    }

    //Metodos Setter y Getter

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }

    public void setProducion(double producion) {
        this.producion = producion;
    }

    public void setConsumo(double consumo) {
        this.consumo = consumo;
    }

    public String getId(){
        return id;
    }

    public String getTipo() {
        return tipo;
    }

    public String getPais() {
        return pais;
    }

    public int getAnio() {
        return anio; //year??
    }

    public double getProducion() {
        return producion;
    }

    public double getConsumo() {
        return consumo;
    }

    //Metodo Balance Energetica
    public  void balanceEnergetico(double parametroAuxiliar){
        double consumoEnergetico = producion-consumo;
        System.out.println("El balance de " + pais + " de energia " + tipo + " en el " + anio + " fue " + consumoEnergetico);
    }



    /*
    public double getPotenciaMaxima(){
        return potenciaMaxima;
    }

    public void setPotenciaMaxima(double potenciaMaxima){
        if(potenciaMaxima >0){
            this.potenciaMaxima = potenciaMaxima;
        }else{
            System.out.println("La potencia Maxima debe ser mauyor que 0");
        }
    }

    public double getNivelBateria() {
        return 0;
    }

    public void setNivelBateria(double nivelBateria){
        if(nivelBateria>0 && nivelBateria<100 ){
            this.nivelBateria = nivelBateria;
        }else{
            System.out.println("El nivel de bateria debe ser mayor que 0 y menor que 100");
        }

    }

    //Metodos de producción de energía
    public void producirEnergia(double horas){
        if(enFuncionamiento){
            double energiaProducida = potenciaMaxima * horas;
            System.out.println("Panel "+ id + " ha producido " + energiaProducida + " Kw");
        }else{
            System.out.println("Panel "+ id + " no ha producido energia");
        }
    }

    //Metodo Validar Estado
    public void verificarEstado(){
        if(nivelBateria < 20){
            System.out.println("Panel "+ id + " esta fuera de servicio");
        }else{
            System.out.println("Panel "+ id + " esta operativo");
        }
    }

    public void modoAhorro() {
    }

     */
}
