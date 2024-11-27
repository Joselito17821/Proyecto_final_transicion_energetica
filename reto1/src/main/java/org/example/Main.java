package org.example;

import org.example.subEnergias.*;

import javax.swing.JOptionPane;
import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {
        ArrayList<Region> regiones = new ArrayList<>();

        while (true) {
            String opcion = JOptionPane.showInputDialog("Ingrese:\n1. Registrar Pais\n2. Registrar Energía\n3. Resúmen Energético por Pais\n4. Salir");

            switch (opcion) {
                case "1":
                    String nombreRegion = JOptionPane.showInputDialog("Ingrese el nombre del Pais:");
                    String localizacion = JOptionPane.showInputDialog("Ingrese la localización del Pais:");
                    regiones.add(new Region(nombreRegion, localizacion));
                    JOptionPane.showMessageDialog(null, "Pais agregado exitosamente.");
                    break;

                case "2":
                    if (regiones.isEmpty()) {
                        JOptionPane.showMessageDialog(null, "Primero debe registrar un Pais.");
                        break;
                    }

                    String tipoEnergia = JOptionPane.showInputDialog("Ingrese el tipo de energía (Solar, Eolica, Biomasa, Geotermica o Hidroelectrica):");
                    double produccion = Double.parseDouble(JOptionPane.showInputDialog("Ingrese la producción de energía:"));
                    double consumo = Double.parseDouble(JOptionPane.showInputDialog("Ingrese el consumo de energía:"));

                    EnergiaRenovable energia = null;
                    if (tipoEnergia != null && tipoEnergia.equalsIgnoreCase("Solar")) {
                        energia = new EnergiaSolar(produccion, consumo);
                    } else if (tipoEnergia != null && tipoEnergia.equalsIgnoreCase("Eolica")) {
                        energia = new EnergiaEolica(produccion, consumo);
                    } else if (tipoEnergia != null && tipoEnergia.equalsIgnoreCase("Biomasa")) {
                        energia = new EnergiaBiomasa(produccion, consumo);
                    } else if (tipoEnergia != null && tipoEnergia.equalsIgnoreCase("Geotermica")) {
                        energia = new EnergiaGeotermica(produccion, consumo);
                    } else if (tipoEnergia != null && tipoEnergia.equalsIgnoreCase("Hidroelectrica")) {
                        energia = new EnergiaHidroelectrica(produccion, consumo);
                    } else {
                        JOptionPane.showMessageDialog(null, "Tipo de energía no reconocido.");
                        break;
                    }
                    //String nombreRegion = JOptionPane.showInputDialog
                    String nombreRegionSeleccionada = JOptionPane.showInputDialog("Ingrese el nombre del Pais a asignar:");
                    Region regionSeleccionada = regiones.stream()
                            .filter(r -> r.getNombre().equalsIgnoreCase(nombreRegionSeleccionada))
                            .findFirst()
                            .orElse(null);

                    if (regionSeleccionada != null) {
                        regionSeleccionada.agregarEnergia(energia);
                        JOptionPane.showMessageDialog(null, "Energía registrada en el pais.");
                    } else {
                        JOptionPane.showMessageDialog(null, "Pais no encontrado.");
                    }
                    break;

                case "3":
                    for (Region region : regiones) {
                        region.mostrarRegion();
                        region.mostrarEficiencias();
                    }
                    break;
                    /*
                case "4":
                    for (Region region : regiones) {
                        for (EnergiaRenovable Benergia : region.getEnergias()) {
                            System.out.println("\n" + "---->Balance energético de " + Benergia.getTipo() + ": " + Benergia.calcularBalanceEnergetico());
                        }
                    }
                    break; */

                case "4":
                    JOptionPane.showMessageDialog(null, "Saliendo del programa.");
                    System.exit(0);
                    break;

                default:
                    JOptionPane.showMessageDialog(null, "Opción inválida. Intente de nuevo.");
            }
        }
    }
}
