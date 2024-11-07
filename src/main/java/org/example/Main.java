package org.example;

/*
***********************************************************************************
Implementa un menú interactivo utilizando JOptionPanepara
que el usuario pueda registrar regiones, tipos de energía y consultar eficiencias.
********************************************+++++++++++++++++++++++++++++++++++++++
*/

import javax.swing.JOptionPane;
import java.util.ArrayList;


//Prueba del Prpgrama para la aplicación del caso 1, Energías Renovables
public class Main {

    public static void main(String[] args) {
        ArrayList<Region> regiones = new ArrayList<>();

        while (true) {
            String opcion = JOptionPane.showInputDialog("Ingrese:\n1. Registrar Región\n2. Registrar Energía\n3. Ver Eficiencia por Región\n4. Salir");

            switch (opcion) {
                case "1":
                    String nombreRegion = JOptionPane.showInputDialog("Ingrese el nombre de la región:");
                    String localizacion = JOptionPane.showInputDialog("Ingrese la localización de la región:");
                    regiones.add(new Region(nombreRegion, localizacion));
                    JOptionPane.showMessageDialog(null, "Región agregada exitosamente.");
                    break;

                case "2":
                    if (regiones.isEmpty()) {
                        JOptionPane.showMessageDialog(null, "Primero debe registrar una región.");
                        break;
                    }

                    String tipoEnergia = JOptionPane.showInputDialog("Ingrese el tipo de energía (Solar o Eolica):");
                    double produccion = Double.parseDouble(JOptionPane.showInputDialog("Ingrese la producción de energía:"));
                    double consumo = Double.parseDouble(JOptionPane.showInputDialog("Ingrese el consumo de energía:"));

                    EnergiaRenovable energia = null;
                    if (tipoEnergia.equalsIgnoreCase("Solar")) {
                        energia = new EnergiaSolar(produccion, consumo);
                    } else if (tipoEnergia.equalsIgnoreCase("Eolica")) {
                        energia = new EnergiaEolica(produccion, consumo);
                    } else {
                        JOptionPane.showMessageDialog(null, "Tipo de energía no reconocido.");
                        break;
                    }

                    String nombreRegionSeleccionada = JOptionPane.showInputDialog("Ingrese el nombre de la región a asignar:");
                    Region regionSeleccionada = regiones.stream()
                            .filter(r -> r.getNombre().equalsIgnoreCase(nombreRegionSeleccionada))
                            .findFirst()
                            .orElse(null);

                    if (regionSeleccionada != null) {
                        regionSeleccionada.agregarEnergia(energia);
                        JOptionPane.showMessageDialog(null, "Energía registrada en la región.");
                    } else {
                        JOptionPane.showMessageDialog(null, "Región no encontrada.");
                    }
                    break;

                case "3":
                    for (Region region : regiones) {
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


