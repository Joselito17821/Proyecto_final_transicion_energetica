<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    
    
    
    <!-- Vincula los archivos CSS -->
    <link rel="stylesheet" href="styles_v2.css"> <!-- Archivo de estilos personalizado -->


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"> <!-- Bootstrap -->


    <!-- LINK PARA ICONOS EMPLEADOS EN EL MENÚ /  Font Awesome Solid (íconos de estilo sólido) -->
    <!--script para cargar Font Awesome-->

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"> <!-- Font Awesome actualizado -->


    <!-- Íconos de FontAwesome -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    
    
    
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .titulo-tabla{
            text-align: center;
            color: #4caf50;
        }
        .chart-container {
            width: 80%;
            margin: 0 auto;
        }
    </style>
    <title>Tabla con Paginación</title>
    <!-- Estilos de DataTables -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
    <!-- Estilos generales -->
    <style>
        body {
            font-family: Arial, sans-serif;
           
        }
        
        .con-principal{
            padding: 30px;
        }
    </style>
</head>
<body>
    <header>
        <main class="main-container"> <!-- Contenedor principal de la página -->

            <!-- Código Extraido de https://getbootstrap.com/docs/5.0/components/carousel/ -->
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="imagenes/BannerEnergyBlack.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="imagenes/BannerEnergyBlack2.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="imagenes/BannerEnergyBlack3.png" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

    </header>

<!-- Encabezado -->
    <header class="d-flex align-items-center p-3 bg-primary text-white">
        <div class="container d-flex justify-content-between">
            <h1>Plataforma Energías Renovables</h1> <!-- Título principal -->

    <!-- BOTÓN DE TEMA -->
            <!--<button id="theme-toggle" class="btn btn-secondary">Cambiar Tema</button>  Botón para alternar el tema -->

            <button id="theme-toggle" class="btn btn-secondary">
                <i id="theme-icon" class="fas fa-sun"></i> <!-- Icono por defecto (sol para tema claro) -->
                <!--Cambiar Tema // Esta linea agrega texto al botón, en caso de requerirse-->
            </button> <!-- Botón para alternar el tema -->
        </div>
    </header>

    <!-- Menú de navegación -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <!-- Botón hamburguesa para dispositivos móviles -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menuNavegacion">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Elementos del menú -->
            <div class="collapse navbar-collapse" id="menuNavegacion"> <!-- identificador único del Contenedor -->
                <ul class="navbar-nav me-auto"> <!-- Clase para alinear los elementos -->
                    <li class="nav-item"><a class="nav-link" href="./index.jsp">Inicio</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="fuentesMenu" role="button" data-bs-toggle="dropdown">
                            Fuentes de Energía
                        </a>
                        <ul class="dropdown-menu"> <!-- Submenú desplegable -->
                            <li><a class="dropdown-item" href="#"><i class="fas fa-sun"></i> Solar</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-wind"></i> Eólica</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-water"></i> Hidráulica</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-atom"></i> Nuclear</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-cloud"></i> Carbón</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fa-solid fa-fill-drip"></i>Petróleo</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fa-brands fa-free-code-camp"></i>Gas Natural</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fa-solid fa-fire"></i>Geotérmica</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fa-solid fa-seedling"></i>Biomasa</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fa-solid fa-ship"></i>Mareomotriz</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fa-solid fa-mountain"></i>Volcánica</a></li>
                        </ul>
                    </li>
                    <li class="nav-item "><a class="nav-link" href="./Botones-tablas.jsp">Estadísticas</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#"><i class="fas fa-chart-line"></i> Consulta1</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-chart-bar"></i> Consulta2</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Datos Energéticos</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="./graficaconsulta3.jsp"><i class="fas fa-chart-line"></i> Producción</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-chart-bar"></i> Consumo</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="#">Contacto</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    
    
    <main class="con-principal">
        <h1 class="titulo-tabla">Tabla de Datos</h1>
    <!-- Tabla con id 'dataTable' -->
    <table id="dataTable" class="display">
        <thead>
            <tr>
                <th>Fuente de Energia</th>
                <th>Total de Produccion</th>
                
            </tr>
        </thead>
        <tbody>
            <!-- Aquí se agregarán las filas dinámicamente -->
        </tbody>
    </table>

    <!-- Scripts de jQuery y DataTables -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

    <script>
        // URL de la API
        const apiUrl = 'http://localhost:8080/WebApplication1/data8.jsp';

        // Llamada AJAX para obtener los datos
        fetch(apiUrl)
            .then(response => response.json())
            .then(data => {
                const tableBody = document.querySelector('#dataTable tbody');
                
                let rows = '';
                
                // Usar un ciclo for en lugar de forEach
                for (let i = 0; i < data.length; i++) {
                    const item = data[i];

                    // Crear una nueva fila
                    const row = document.createElement('tr');

                    // Crear celdas para cada dato

                    const nameCell = document.createElement('td');
                    nameCell.textContent = item.name;
                    row.appendChild(nameCell);

                    const totalProductionCell = document.createElement('td');
                    totalProductionCell.textContent = item.totalProduction.toFixed(2);
                    row.appendChild(totalProductionCell);

                    // Añadir la fila al cuerpo de la tabla
                    tableBody.appendChild(row);
                }

                // Inicializar DataTable
                new DataTable('#dataTable', {
                    pageLength: 5,
                    lengthMenu: [5, 10, 25, 50],
                    language: {
                        paginate: {
                            first: "Primero",
                            last: "Último",
                            next: "Siguiente",
                            previous: "Anterior"
                        },
                        search: "Buscar:",
                        zeroRecords: "No se encontraron registros",
                        info: "Mostrando _START_ a _END_ de _TOTAL_ registros",
                        infoEmpty: "Mostrando 0 a 0 de 0 registros",
                        infoFiltered: "(filtrado de _MAX_ registros en total)"
                    }
                });
            })
            .catch(error => {
                console.error('Error al obtener los datos:', error);
            });
    </script>
    
    <div class="chart-container">
    <canvas id="myChart"></canvas>
</div>

<script>
    // Llamada AJAX para obtener los datos de consulta3.jsp
    fetch("http://localhost:8080/WebApplication1/data8.jsp")
        .then(response => response.json())
        .then(data => {
            // Procesar los datos para el gráfico
            const labels = data.map(item => item.name); // Nombres de las fuentes de energía
            const Total = data.map(item => item.totalProduction);

            // Crear el gráfico con Chart.js
            const ctx = document.getElementById('myChart').getContext('2d');
            new Chart(ctx, {
                type: 'bar', // Tipo de gráfico: barras
                data: {
                    labels: labels,
                    datasets: [
                        {
                            label: 'Total de Producción',
                            data: Total,
                            backgroundColor: 'rgba(75, 192, 192, 0.6)',
                            borderColor: 'rgba(75, 192, 192, 1)',
                            borderWidth: 1
                        }
                    ]
                },
                options: {
                    responsive: true,
                    plugins: {
                        legend: {
                            position: 'top'
                        },
                        tooltip: {
                            enabled: true
                        }
                    },
                    scales: {
                        x: {
                            beginAtZero: true
                        },
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        })
        .catch(error => console.error('Error al cargar los datos:', error));
</script>
        
    </main>
    
    <!-- Pie de página -->
    <footer style="text-align: center; background-color: #000000; padding: 20px; border-top: 2px solid #007bff;">
        <div class="footer-links" style="margin-bottom: 15px;">
            <a href="#" style="margin: 0 10px; color: #007bff; text-decoration: none; font-weight: bold;">Inicio</a>
            <a href="#" style="margin: 0 10px; color: #007bff; text-decoration: none; font-weight: bold;">Sobre Nosotros</a>
        </div>

        <div class="footer-copy" style="color: #6c757d; margin-bottom: 20px; font-size: 14px;">
            &copy; 2024 Plataforma de Energías Renovables
        </div>

        <!-- Dropdown para integrantes -->
        <div class="dropdown" style="display: inline-block; position: relative;">
            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownIntegrantes" data-bs-toggle="dropdown" aria-expanded="false">
                Integrantes
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownIntegrantes" style="text-align: left;">
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Andrés Felipe Zuluaga Osorio</a></li>
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Juan José Villa García</a></li>
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Juan José Gómez Castaño</a></li>
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> José Manuel Londoño Castaño</a></li>
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Gabriel Enrique Romero Cabarcas</a></li>
            </ul>
        </div>
    </footer>
    
    
    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> <!-- Librería Chart.js -->
    <script>
        // Código HTML/JavaScript Cambia entre tema claro y oscuro
        //document.getElementById('theme-toggle').addEventListener('click', () => {
        //   document.body.classList.toggle('dark-theme'); // Alterna la clase del tema oscuro
        //});

        // Código HTML/JavaScript Cambia ICONO entre tema claro y oscuro
        const themeToggle = document.getElementById('theme-toggle'); // Botón de cambio de tema
        const themeIcon = document.getElementById('theme-icon'); // Ícono dentro del botón

            themeToggle.addEventListener('click', () => {
                document.body.classList.toggle('dark-theme'); // Alterna entre temas

                // Cambiar el ícono según el tema activo
                if (document.body.classList.contains('dark-theme')) {
                    themeIcon.classList.remove('fa-sun'); // Quita el ícono del sol
                    themeIcon.classList.add('fa-moon'); // Agrega el ícono de la luna
                } else {
                    themeIcon.classList.remove('fa-moon'); // Quita el ícono de la luna
                    themeIcon.classList.add('fa-sun'); // Agrega el ícono del sol
                }
            });
        //----------------------------------------------------------------------------------

        // Configuración de la gráfica
        const ctx = document.getElementById('chart').getContext('2d');
        const chart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Solar', 'Eólica', 'Hidráulica'],
                datasets: [{
                    label: 'Producción (MW)',
                    data: [500, 300, 700],
                    backgroundColor: ['#f39c12', '#3498db', '#27ae60']
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: { position: 'top' },
                    title: { display: true, text: 'Producción por Fuente de Energía' }
                }
            }
        });
    </script>
</body>
</html>
