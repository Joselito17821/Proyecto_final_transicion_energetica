<!DOCTYPE html> <!-- Define que el archivo utiliza HTML5 -->
<html lang="es"> <!-- Idioma de la página en español -->

<head>
    <title>ENERGÍAS RENOVABLES</title> <!-- Título de la página en la barra del navegador -->
    <link rel="short icon" href="/imagenes/iconoPaginaWeb.png">
    <meta charset="UTF-8"> <!-- Codificación de caracteres -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Escala la página para dispositivos móviles -->

    <!-- Vincula los archivos CSS -->
    <link rel="stylesheet" href="styles_v2.css"> <!-- Archivo de estilos personalizado -->


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
                    <li class="nav-item"><a class="nav-link" href="#">Inicio</a></li>
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

    <!-- Contenido principal -->
    <main class="container my-4">
        <!-- Grupo de botones para Bases de Datos -->
        <div class="row mb-4">
            <div class="col-12">
                <h3>Bases de Datos:</h3>
                <div class="d-flex gap-3 flex-wrap">
                    <button class="btn btn-primary">Fuentes de Energía</button>
                    <button class="btn btn-primary">Datos de Energía</button>
                </div>
            </div>
        </div>

        <!-- Grupo de botones para Consultas -->
        <div class="row">
            <div class="col-12">
                <h3>Consultas:</h3>
                <div class="d-flex gap-3 flex-wrap">
                    <button class="btn btn-success">Producción y Consumo</button>
                    <button class="btn btn-success">Año con Mayor Producción</button>
                    <button class="btn btn-success">Consumo Promedio</button>
                    <button class="btn btn-success">Consumo Relativo</button>
                    <button class="btn btn-success">Diferencia de Producción</button>
                    <button class="btn btn-success">Producción Total</button>
                </div>
            </div>
        </div>

        <section class="container my-4 d-flex flex-wrap">
            <div class="container">
                <article>
                    <h2>El impacto medioambiental de las energías no renovables y contaminantes</h2>
                    <p>Las energías renovables buscan promover la sostenibilidad y reducir la huella de carbono, siendo
                        una solución clave para mitigar el cambio climático. Aunque todas contribuyen positivamente al
                        medioambiente, algunas tienen un menor impacto que otras. La energía solar fotovoltaica es una
                        de las más limpias y menos contaminantes, ya que no produce CO2 ni contribuye al efecto
                        invernadero. Además, es silenciosa, no afecta negativamente al paisaje o al suelo, y no requiere
                        agua para generar energía. Los paneles solares son fabricados con materiales reciclables como
                        silicio, vidrio y aluminio, y tienen una vida útil de hasta 30 años, tras los cuales pueden
                        reciclarse casi en su totalidad. Según un estudio de Our World Data, la energía solar es la más
                        segura, con el menor número de muertes relacionadas con su uso en comparación con otras fuentes
                        de energía. <img src="imagenes/article1.png" class="d-block w-100" alt="..."> </p>
                </article>
                <div class="asides-container">
                    <aside>
                        <h3>? Beneficios de las energías renovables</h3>
                        <p>El uso de energías renovables reduce la emisión de gases contaminantes, ayudando a combatir
                            el cambio climático y a conservar la biodiversidad....</p>
                    </aside>
                    <aside>
                        <h3>? Energías renovables y sostenibilidad</h3>
                        <p>Al depender de recursos inagotables como el sol y el viento, estas energías aseguran un
                            suministro limpio y sostenible a largo plazo...</p>
                    </aside>
                    <aside>
                        <h3>? ¿Sabías que...?</h3>
                        <p>Las energías renovables no solo protegen el medioambiente, sino que también generan empleos y
                            fortalecen las economías locales.</p>
                    </aside>
                    <aside>
                        <h3>? Reducir el impacto ambiental</h3>
                        <p>Las fuentes de energía tradicionales contribuyen al agotamiento de recursos y al
                            desequilibrio ecológico. Las renovables son la solución para un planeta más verde..</p>
                    </aside>
                </div>
            </div>
            <article>
                <h2>Hitos y avances en la transición energética global</h2>
                <p>La generación de electricidad a partir de fuentes limpias alcanzó un récord en 2023, con más del 40%
                    proveniente de energías renovables, lideradas por la eólica y solar. Este crecimiento, impulsado por
                    inversiones globales, destaca la necesidad de colaboración público-privada para superar desafíos en
                    la transición energética, según el Foro Económico Mundial.

                    En el Reino Unido, el cierre de su última planta de carbón marca un paso hacia su objetivo de ser
                    líder en energía limpia, con proyecciones de alcanzar un 83% de generación renovable para 2050.

                    Otras noticias incluyen avances en energías limpias en Australia, China y EE. UU., además del
                    impacto futuro de la inteligencia artificial en la industria petrolera.

                    Fuente: Foro Económico Mundial
                    (https://es.weforum.org/stories/2024/09/la-generacion-global-de-renovables-alcanza-un-hito-y-otras-noticias-sobre-energia/)
                    <img src="imagenes/article2.png" class="article2" alt="...">
                </p>
            </article>
            <div class="asides-container">
                <aside>
                    <h3>? Hito histórico en renovables</h3>
                    <p>La generación de energía renovable ha alcanzado niveles históricos, marcando un avance crucial
                        hacia un futuro más sostenible</p>
                </aside>
                <aside>
                    <h3>? Renovables: líderes del cambio</h3>
                    <p>Contribuyendo a más del 30% de la energía global, las fuentes renovables están transformando la
                        matriz energética mundial.</p>
                </aside>
                <aside>
                    <h3>? El impacto de las renovables</h3>
                    <p>La expansión de las energías limpias no solo reduce emisiones, sino que impulsa economías
                        sostenibles y genera empleos verdes.</p>
                </aside>
                <aside>
                    <h3>? Dato clave</h3>
                    <p>Por primera vez, la generación renovable supera a las fuentes fósiles en regiones clave,
                        mostrando el camino hacia la descarbonización global.</p>
                </aside>
            </div>
            </div>

        </section>

    </main>

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
                    legend: { position: 'top' },
                    title: { display: true, text: 'Producción por Fuente de Energía' }
                }
            }
        });
    </script>
</body>

</html>