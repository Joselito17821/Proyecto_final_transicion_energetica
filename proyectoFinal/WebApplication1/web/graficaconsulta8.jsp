<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    
    
    
    <!-- Vincula los archivos CSS -->
    <link rel="stylesheet" href="styles_v2.css"> <!-- Archivo de estilos personalizado -->


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"> <!-- Bootstrap -->


    <!-- LINK PARA ICONOS EMPLEADOS EN EL MEN� /  Font Awesome Solid (�conos de estilo s�lido) -->
    <!--script para cargar Font Awesome-->

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"> <!-- Font Awesome actualizado -->


    <!-- �conos de FontAwesome -->
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
    <title>Tabla con Paginaci�n</title>
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
        <main class="main-container"> <!-- Contenedor principal de la p�gina -->

            <!-- C�digo Extraido de https://getbootstrap.com/docs/5.0/components/carousel/ -->
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
            <h1>Plataforma Energ�as Renovables</h1> <!-- T�tulo principal -->

    <!-- BOT�N DE TEMA -->
            <!--<button id="theme-toggle" class="btn btn-secondary">Cambiar Tema</button>  Bot�n para alternar el tema -->

            <button id="theme-toggle" class="btn btn-secondary">
                <i id="theme-icon" class="fas fa-sun"></i> <!-- Icono por defecto (sol para tema claro) -->
                <!--Cambiar Tema // Esta linea agrega texto al bot�n, en caso de requerirse-->
            </button> <!-- Bot�n para alternar el tema -->
        </div>
    </header>

    <!-- Men� de navegaci�n -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <!-- Bot�n hamburguesa para dispositivos m�viles -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menuNavegacion">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Elementos del men� -->
            <div class="collapse navbar-collapse" id="menuNavegacion"> <!-- identificador �nico del Contenedor -->
                <ul class="navbar-nav me-auto"> <!-- Clase para alinear los elementos -->
                    <li class="nav-item"><a class="nav-link" href="./index.jsp">Inicio</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="fuentesMenu" role="button" data-bs-toggle="dropdown">
                            Fuentes de Energ�a
                        </a>
                        <ul class="dropdown-menu"> <!-- Submen� desplegable -->
                            <li><a class="dropdown-item" href="#"><i class="fas fa-sun"></i> Solar</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-wind"></i> E�lica</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-water"></i> Hidr�ulica</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-atom"></i> Nuclear</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-cloud"></i> Carb�n</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fa-solid fa-fill-drip"></i>Petr�leo</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fa-brands fa-free-code-camp"></i>Gas Natural</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fa-solid fa-fire"></i>Geot�rmica</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fa-solid fa-seedling"></i>Biomasa</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fa-solid fa-ship"></i>Mareomotriz</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fa-solid fa-mountain"></i>Volc�nica</a></li>
                        </ul>
                    </li>
                    <li class="nav-item "><a class="nav-link" href="./Botones-tablas.jsp">Estad�sticas</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#"><i class="fas fa-chart-line"></i> Consulta1</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-chart-bar"></i> Consulta2</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Datos Energ�ticos</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="./graficaconsulta3.jsp"><i class="fas fa-chart-line"></i> Producci�n</a></li>
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
            <!-- Aqu� se agregar�n las filas din�micamente -->
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

                    // A�adir la fila al cuerpo de la tabla
                    tableBody.appendChild(row);
                }

                // Inicializar DataTable
                new DataTable('#dataTable', {
                    pageLength: 5,
                    lengthMenu: [5, 10, 25, 50],
                    language: {
                        paginate: {
                            first: "Primero",
                            last: "�ltimo",
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
            // Procesar los datos para el gr�fico
            const labels = data.map(item => item.name); // Nombres de las fuentes de energ�a
            const Total = data.map(item => item.totalProduction);

            // Crear el gr�fico con Chart.js
            const ctx = document.getElementById('myChart').getContext('2d');
            new Chart(ctx, {
                type: 'bar', // Tipo de gr�fico: barras
                data: {
                    labels: labels,
                    datasets: [
                        {
                            label: 'Total de Producci�n',
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
    
    <!-- Pie de p�gina -->
    <footer style="text-align: center; background-color: #000000; padding: 20px; border-top: 2px solid #007bff;">
        <div class="footer-links" style="margin-bottom: 15px;">
            <a href="#" style="margin: 0 10px; color: #007bff; text-decoration: none; font-weight: bold;">Inicio</a>
            <a href="#" style="margin: 0 10px; color: #007bff; text-decoration: none; font-weight: bold;">Sobre Nosotros</a>
        </div>

        <div class="footer-copy" style="color: #6c757d; margin-bottom: 20px; font-size: 14px;">
            &copy; 2024 Plataforma de Energ�as Renovables
        </div>

        <!-- Dropdown para integrantes -->
        <div class="dropdown" style="display: inline-block; position: relative;">
            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownIntegrantes" data-bs-toggle="dropdown" aria-expanded="false">
                Integrantes
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownIntegrantes" style="text-align: left;">
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Andr�s Felipe Zuluaga Osorio</a></li>
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Juan Jos� Villa Garc�a</a></li>
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Juan Jos� G�mez Casta�o</a></li>
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Jos� Manuel Londo�o Casta�o</a></li>
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Gabriel Enrique Romero Cabarcas</a></li>
            </ul>
        </div>
    </footer>
    
    
    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> <!-- Librer�a Chart.js -->
    <script>
        // C�digo HTML/JavaScript Cambia entre tema claro y oscuro
        //document.getElementById('theme-toggle').addEventListener('click', () => {
        //   document.body.classList.toggle('dark-theme'); // Alterna la clase del tema oscuro
        //});

        // C�digo HTML/JavaScript Cambia ICONO entre tema claro y oscuro
        const themeToggle = document.getElementById('theme-toggle'); // Bot�n de cambio de tema
        const themeIcon = document.getElementById('theme-icon'); // �cono dentro del bot�n

            themeToggle.addEventListener('click', () => {
                document.body.classList.toggle('dark-theme'); // Alterna entre temas

                // Cambiar el �cono seg�n el tema activo
                if (document.body.classList.contains('dark-theme')) {
                    themeIcon.classList.remove('fa-sun'); // Quita el �cono del sol
                    themeIcon.classList.add('fa-moon'); // Agrega el �cono de la luna
                } else {
                    themeIcon.classList.remove('fa-moon'); // Quita el �cono de la luna
                    themeIcon.classList.add('fa-sun'); // Agrega el �cono del sol
                }
            });
        //----------------------------------------------------------------------------------

        // Configuraci�n de la gr�fica
        const ctx = document.getElementById('chart').getContext('2d');
        const chart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Solar', 'E�lica', 'Hidr�ulica'],
                datasets: [{
                    label: 'Producci�n (MW)',
                    data: [500, 300, 700],
                    backgroundColor: ['#f39c12', '#3498db', '#27ae60']
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: { position: 'top' },
                    title: { display: true, text: 'Producci�n por Fuente de Energ�a' }
                }
            }
        });
    </script>
</body>
</html>
