package org.example;

import org.example.subEnergias.*;

import javax.swing.JOptionPane;
import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {
        ArrayList<Region> regiones = new ArrayList<>();

        while (true) {
            String opcion = JOptionPane.showInputDialog("Ingrese:\n1. Registrar Región\n2. Registrar Energía\n3. Ver Eficiencia por Región\n4. Salir");

            switch (opcion) {
                case "1":
                    String nombrePais = JOptionPane.showInputDialog("Ingrese el nombre del pais:");
                    String localizacion = JOptionPane.showInputDialog("Ingrese el continente del pais:");
                    regiones.add(new Region(nombrePais, localizacion));
                    JOptionPane.showMessageDialog(null, "Región agregada exitosamente.");
                    break;

                case "2":
                    if (regiones.isEmpty()) {
                        JOptionPane.showMessageDialog(null, "Primero debe registrar una región.");
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

                    String nombreRegionSeleccionada = JOptionPane.showInputDialog("Ingrese el nombre del pais a asignar:");
                    Region regionSeleccionada = regiones.stream()
                            .filter(r -> r.getNombre().equalsIgnoreCase(nombreRegionSeleccionada))
                            .findFirst()
                            .orElse(null);

                    if (regionSeleccionada != null) {
                        regionSeleccionada.agregarEnergia(energia);
                        JOptionPane.showMessageDialog(null, "Energía registrada en el pais.");
                    } else {
                        JOptionPane.showMessageDialog(null, "Pais no encontrada.");
                    }
                    break;

                case "3":
                    for (Region region : regiones) {
                        region.mostrarRegion();
                        region.mostrarEficiencias();
                    }
                    break;

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
