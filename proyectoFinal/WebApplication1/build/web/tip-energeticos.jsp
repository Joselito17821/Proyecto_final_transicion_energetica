<!DOCTYPE html>
<html lang="en">

    <head>
        <title>TIPS ENERGÉTICOS</title> <!-- Título de la página en la barra del navegador -->
        <link rel="short icon" href="/imagenes/iconoPaginaWeb.png">
        <meta charset="UTF-8"> <!-- Codificación de caracteres -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Escala la página para dispositivos móviles -->

        <!-- Vincula los archivos CSS -->
        <link rel="stylesheet" href="style_tips_ahorro.css"> <!-- Archivo de estilos personalizado -->


        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap -->


        <!-- LINK PARA ICONOS EMPLEADOS EN EL MENÚ /  Font Awesome Solid (íconos de estilo sólido) -->
        <!--script para cargar Font Awesome-->

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <!-- Font Awesome actualizado -->


        <!-- Íconos de FontAwesome -->
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    </head>

    <body>
        <header>
            <div></div> <!-- Contenedor del encabezado con una imagen de fondo -->
        </header>
        <!--<header>
            <div class="banner"></div> <!-- Contenedor del encabezado con una imagen de fondo
        </header>-->
        <header>
            <main class="main-container"> <!-- Contenedor principal de la página -->

                <!-- Código Extraido de https://getbootstrap.com/docs/5.0/components/carousel/ -->
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                                class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="imagenes/BannerEnergyBlack.jpeg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="imagenes/BannerEnergyBlack2.jpeg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="imagenes/BannerEnergyBlack3.jpeg" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="next">
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
                            <a class="nav-link dropdown-toggle" href="/Equipo 9_ Energías Renovables.html" id="fuentesMenu"
                               role="button" data-bs-toggle="dropdown">
                                Fuentes de Energía
                            </a>
                            <ul class="dropdown-menu"> <!-- Submenú desplegable -->
                                <li><a class="dropdown-item" href="tipos-energias.jsp#energia-solar"><i
                                            class="fas fa-sun"></i> Solar</a></li>
                                <li><a class="dropdown-item" href="tipos-energias.jsp#energia-eolica"><i
                                            class="fas fa-wind"></i> Eólica</a></li>
                                <li><a class="dropdown-item" href="tipos-energias.jsp#energia-hidraulica"><i
                                            class="fas fa-water"></i> Hidráulica</a></li>
                                <li><a class="dropdown-item" href="tipos-energias.jsp#energia-nuclear"><i
                                            class="fas fa-atom"></i> Nuclear</a></li>
                                <li><a class="dropdown-item" href="tipos-energias.jsp#energia-carbon"><i
                                            class="fas fa-cloud"></i> Carbón</a></li>
                                <li><a class="dropdown-item" href="tipos-energias.jsp#energia-petroleo"><i
                                            class="fa-solid fa-fill-drip"></i>Petróleo</a></li>
                                <li><a class="dropdown-item" href="tipos-energias.jsp#energia-gasnatural"><i
                                            class="fa-brands fa-free-code-camp"></i>Gas Natural</a></li>
                                <li><a class="dropdown-item" href="tipos-energias.jsp#energia-geotermica"><i
                                            class="fa-solid fa-fire"></i>Geotérmica</a></li>
                                <li><a class="dropdown-item" href="tipos-energias.jsp#energia-biomasa"><i
                                            class="fa-solid fa-seedling"></i>Biomasa</a></li>
                                <li><a class="dropdown-item" href="tipos-energias.jsp#energia-mareomotriz"><i
                                            class="fa-solid fa-ship"></i>Mareomotriz</a></li>
                                <li><a class="dropdown-item" href="tipos-energias.jsp#energia-volcanica"><i
                                            class="fa-solid fa-mountain"></i>Volcánica</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="./tip-energeticos.jsp">Tips Energéticos</a></li>
                        <li class="nav-item"><a class="nav-link" href="./Botones-tablas.jsp">Estadísticas</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Datos
                                Energéticos</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="./tablaconsulta1.jsp"><i class="fas fa-chart-line"></i> Producción</a></li>
                                <li><a class="dropdown-item" href="./tablaconsulta2.jsp"><i class="fas fa-chart-bar"></i> Consumo</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

        <!-- Carrusel de Tips Energéticos -->
        <div id="carouselTips" class="carousel slide mt-4" data-bs-ride="carousel">
            <div class="carousel-inner">
                <!-- Slide 1 -->
                <div class="carousel-item active">
                    <div class="row">

                        <!-- En las difernetes imagenes se presenta el atributo ALT 
                         (se utiliza dentro de la etiqueta <img> para proporcionar 
                         un texto alternativo a una imagen. Este texto alternativo 
                         se muestra si la imagen no puede cargarse por algún motivo 
                         (por ejemplo, si el archivo no está disponible o si el usuario tiene una conexión lenta). 
                         Además, el atributo alt mejora la accesibilidad, ya que los lectores de pantalla pueden 
                         leerlo para describir la imagen a las personas con discapacidad visual.) -->

                        <!-- Tarjeta 1 -->
                        <div class="col-md-4">
                            <div class="card-container mx-auto">
                                <div class="card-inner">
                                    <div class="card-front">
                                        <img src="./images_carrusel_tips/limpiar_bombillos.png"
                                             alt="Imagen limpiando bombillos" class="card-img">
                                    </div>
                                    <div class="card-back">
                                        <p class="card-text">Limpia las lamparas y bombillos, una lámpara en mal estado
                                            puede llegar a perder hasta un 50 % de luminosidad. Al
                                            limpiar las lámparas, puedes usar focos de menor potencia y ahorrar hasta 20 %
                                            en el consumo de electricidad. Procura aprovechar al máximo la luz natural.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Tarjeta 2 -->
                        <div class="col-md-4">
                            <div class="card-container mx-auto">
                                <div class="card-inner">
                                    <div class="card-front">
                                        <img src="./images_carrusel_tips/bombillos_led.png" alt="Bombilla led"
                                             class="card-img">
                                    </div>
                                    <div class="card-back">
                                        <p class="card-text">Utiliza bombillas LED. este tipo de bombillos consume entre
                                            seis
                                            y siete veces menos que uno tradicional y duran más tiempo. El ahorro total de
                                            energía en una casa con este tipo de iluminación puede ser del 80 %. </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Tarjeta 3 -->
                        <div class="col-md-4">
                            <div class="card-container mx-auto">
                                <div class="card-inner">
                                    <div class="card-front">
                                        <img src="./images_carrusel_tips/duchas_cortas.png" alt="Tip 3" class="card-img">
                                    </div>
                                    <div class="card-back">
                                        <p class="card-text">Toma duchas cortasy con agua fria ya que el agua caliente
                                            demanda la mayor cantidad de energía en el hogar, después de la calefacción y el
                                            aire acondicionado</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Slide 2 -->
                <div class="carousel-item">
                    <div class="row">
                        <!-- Tarjeta 4 -->
                        <div class="col-md-4">
                            <div class="card-container mx-auto">
                                <div class="card-inner">
                                    <div class="card-front">
                                        <img src="./images_carrusel_tips/desconectar aparatos.avif"
                                             alt="imagen desconectando un aparato electronico" class="card-img">
                                    </div>
                                    <div class="card-back">
                                        <p class="card-text">Desconecta los aparatos que no utilices, así estén apagados,
                                            los electrodomésticos conectados a la corriente eléctrica pueden usar hasta un
                                            10 % del consumo normal en funcionamiento.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Tarjeta 5 -->
                        <div class="col-md-4">
                            <div class="card-container mx-auto">
                                <div class="card-inner">
                                    <div class="card-front">
                                        <img src="./images_carrusel_tips/Etiqueta_eficiencia_energetica.png"
                                             alt="Imagen de etiqueta de eficiencia energetica" class="card-img">
                                    </div>
                                    <div class="card-back">
                                        <p class="card-text">El consumo de los electrodomésticos se mide por su
                                            etiqueta. Las etiquetas de clase A (color verde) garantizan que las máquinas
                                            funcionan con el menor gasto de energía posible. ¡Procura comprar estrictamente
                                            lo necesario! </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Tarjeta 6 -->
                        <div class="col-md-4">
                            <div class="card-container mx-auto">
                                <div class="card-inner">
                                    <div class="card-front">
                                        <img src="./images_carrusel_tips/cortinas abiertas.png"
                                             alt="Imagen de ventanas abiertas" class="card-img">
                                    </div>
                                    <div class="card-back">
                                        <p class="card-text">
                                            Abrir las cortinas durante el día permite aprovechar la luz natural, reduciendo
                                            el uso de electricidad para iluminación y, en temporadas frías, ayuda a calentar
                                            los espacios con la energía solar, disminuyendo el costo energético y cuidando
                                            el medio ambiente.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Controles del carrusel -->
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselTips" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselTips" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Siguiente</span>
            </button>
        </div>



        <!-- Pie de página -->
        <footer style="text-align: center; background-color: #000000; padding: 20px; border-top: 2px solid #007bff;">
            <div class="footer-links" style="margin-bottom: 15px;">
                <a href="./index.jsp" style="margin: 0 10px; color: #007bff; text-decoration: none; font-weight: bold;">Inicio</a>

            </div>

            <div class="footer-copy" style="color: #6c757d; margin-bottom: 20px; font-size: 14px;">
                &copy; 2024 Plataforma de Energías Renovables
            </div>

            <!-- Dropdown para integrantes -->
            <div class="dropdown" style="display: inline-block; position: relative;">
                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownIntegrantes"
                        data-bs-toggle="dropdown" aria-expanded="false">
                    Integrantes
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownIntegrantes" style="text-align: left;">
                    <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Andrés Felipe Zuluaga
                            Osorio</a></li>
                    <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Juan José Villa García</a>
                    </li>
                    <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Juan José Gómez
                            Castaño</a></li>
                    <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Jose Manuel Londoño
                            Castaño</a></li>
                    <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Gabriel Enrique Romero
                            Cabarcas</a></li>
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
                        legend: {position: 'top'},
                        title: {display: true, text: 'Producción por Fuente de Energía'}
                    }
                }
            });
        </script>
    </body>

</html>