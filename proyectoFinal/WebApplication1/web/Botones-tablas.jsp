<!DOCTYPE html>
<html lang="es">
<head>
    <link rel="short icon" href="/imagenes/iconoPaginaWeb.png">
    <meta charset="UTF-8"> <!-- Codificaci�n de caracteres -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Escala la p�gina para dispositivos m�viles -->

    <!-- Vincula los archivos CSS -->
    <link rel="stylesheet" href="styles_v2.css"> <!-- Archivo de estilos personalizado -->


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"> <!-- Bootstrap -->


 <!-- LINK PARA ICONOS EMPLEADOS EN EL MEN� /  Font Awesome Solid (�conos de estilo s�lido) -->
    <!--script para cargar Font Awesome-->

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"> <!-- Font Awesome actualizado -->


    <!-- �conos de FontAwesome -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <title>Consultas Energ�ticas</title>
    
    
    
    
    
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }

        h1 {
            color: #4caf50;
            text-align: center;
            margin-top: 50px;
            font-size: 2.5em;
        }

        .container-simulacion {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            padding: 20px;
            max-width: 1200px;
            margin: 50px auto;
        }

        .card {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
            padding: 20px;
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .card-title {
            font-size: 1.25em;
            color: #333;
            margin-bottom: 10px;
        }

        .card-text {
            color: #555;
            margin-bottom: 20px;
        }

        .btn-custom {
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            font-size: 16px;
            border-radius: 5px;
            border: none;
            text-align: center;
            text-decoration: none;
            width: 100%; /* Asegura que el bot�n ocupe todo el ancho */
            display: inline-block;
            box-sizing: border-box; /* Incluye el padding en el ancho total */
            transition: background-color 0.3s ease;
        }


        .btn-custom:hover {
            background-color: #0056b3;
        }

        .footer {
            background-color: #343a40;
            color: white;
            padding: 10px 0;
            text-align: center;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
    
    <style>
        body {
            font-family: Arial, sans-serif;
           
        }
        
        div .titulo1{
            margin-top: 0px;
            color: #FFFFFF;
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
            <h1 class="titulo1">Plataforma Energ�as Renovables</h1> <!-- T�tulo principal -->

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
                    <li class="nav-item"><a class="nav-link" href="#">Inicio</a></li>
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

<h1>Consultas Energ�ticas</h1>

<div class="container-simulacion">
    <div class="card">
        <h5 class="card-title">Fuentes de Energ�a</h5>
        <p class="card-text">Consulta las fuentes de energ�a registradas en el sistema.</p>
        <a href="consulta1.jsp" class="btn-custom">Ver Fuentes</a>
    </div>
    <div class="card">
        <h5 class="card-title">Datos de Energ�a</h5>
        <p class="card-text">Accede a la tabla completa de datos de energ�a.</p>
        <a href="consulta2.jsp" class="btn-custom">Ver Datos</a>
    </div>
    <div class="card">
        <h5 class="card-title">Producci�n y Consumo</h5>
        <p class="card-text">Consulta la producci�n y consumo por fuente de energ�a.</p>
        <a href="./graficaconsulta3.jsp" class="btn-custom">Ver Producci�n y Consumo</a>
    </div>
    <div class="card">
        <h5 class="card-title">A�o con Mayor Producci�n</h5>
        <p class="card-text">Consulta el a�o con mayor producci�n por fuente de energ�a.</p>
        <a href="./graficaconsulta4.jsp" class="btn-custom">Ver A�o con Mayor Producci�n</a>
    </div>
    <div class="card">
        <h5 class="card-title">Consumo Promedio</h5>
        <p class="card-text">Consulta el consumo promedio de energ�a por a�o.</p>
        <a href="consulta5.jsp" class="btn-custom">Ver Consumo Promedio</a>
    </div>
    <div class="card">
        <h5 class="card-title">Consumo Relativo</h5>
        <p class="card-text">Consulta la fuente de energ�a con mayor consumo relativo.</p>
        <a href="consulta6.jsp" class="btn-custom">Ver Consumo Relativo</a>
    </div>
    <div class="card">
        <h5 class="card-title">Diferencia de Producci�n</h5>
        <p class="card-text">Consulta la diferencia entre producci�n m�xima y m�nima.</p>
        <a href="consulta7.jsp" class="btn-custom">Ver Diferencia de Producci�n</a>
    </div>
    <div class="card">
        <h5 class="card-title">Producci�n Total</h5>
        <p class="card-text">Consulta la producci�n total por fuente de energ�a.</p>
        <a href="consulta8.jsp" class="btn-custom">Ver Producci�n Total</a>
    </div>
</div>

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
