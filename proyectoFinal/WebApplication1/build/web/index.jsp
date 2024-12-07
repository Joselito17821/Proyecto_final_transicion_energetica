<!DOCTYPE html> <!-- Define que el archivo utiliza HTML5 -->
<html lang="es"> <!-- Idioma de la p�gina en espa�ol -->

<head>
    <title>ENERG�AS RENOVABLES</title> <!-- T�tulo de la p�gina en la barra del navegador -->
    <link rel="short icon" href="/imagenes/iconoPaginaWeb.png">
    <meta charset="UTF-8"> <!-- Codificaci�n de caracteres -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Escala la p�gina para dispositivos m�viles -->

    <!-- Vincula los archivos CSS -->
    <link rel="stylesheet" href="styles_v2.css"> <!-- Archivo de estilos personalizado -->


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap -->


    <!-- LINK PARA ICONOS EMPLEADOS EN EL MEN� /  Font Awesome Solid (�conos de estilo s�lido) -->
    <!--script para cargar Font Awesome-->

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <!-- Font Awesome actualizado -->


    <!-- �conos de FontAwesome -->
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
        <main class="main-container"> <!-- Contenedor principal de la p�gina -->

            <!-- C�digo Extraido de https://getbootstrap.com/docs/5.0/components/carousel/ -->
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
                    <li class="nav-item"><a class="nav-link" href="#">Inicio</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="/Equipo 9_ Energ�as Renovables.html" id="fuentesMenu"
                            role="button" data-bs-toggle="dropdown">
                            Fuentes de Energ�a
                        </a>
                        <ul class="dropdown-menu"> <!-- Submen� desplegable -->
                            <li><a class="dropdown-item" href="tipos-energias.jsp#energia-solar"><i
                                        class="fas fa-sun"></i> Solar</a></li>
                            <li><a class="dropdown-item" href="tipos-energias.jsp#energia-eolica"><i
                                        class="fas fa-wind"></i> E�lica</a></li>
                            <li><a class="dropdown-item" href="tipos-energias.jsp#energia-hidraulica"><i
                                        class="fas fa-water"></i> Hidr�ulica</a></li>
                            <li><a class="dropdown-item" href="tipos-energias.jsp#energia-nuclear"><i
                                        class="fas fa-atom"></i> Nuclear</a></li>
                            <li><a class="dropdown-item" href="tipos-energias.jsp#energia-carbon"><i
                                        class="fas fa-cloud"></i> Carb�n</a></li>
                            <li><a class="dropdown-item" href="tipos-energias.jsp#energia-petroleo"><i
                                        class="fa-solid fa-fill-drip"></i>Petr�leo</a></li>
                            <li><a class="dropdown-item" href="tipos-energias.jsp#energia-gasnatural"><i
                                        class="fa-brands fa-free-code-camp"></i>Gas Natural</a></li>
                            <li><a class="dropdown-item" href="tipos-energias.jsp#energia-geotermica"><i
                                        class="fa-solid fa-fire"></i>Geot�rmica</a></li>
                            <li><a class="dropdown-item" href="tipos-energias.jsp#energia-biomasa"><i
                                        class="fa-solid fa-seedling"></i>Biomasa</a></li>
                            <li><a class="dropdown-item" href="tipos-energias.jsp#energia-mareomotriz"><i
                                        class="fa-solid fa-ship"></i>Mareomotriz</a></li>
                            <li><a class="dropdown-item" href="tipos-energias.jsp#energia-volcanica"><i
                                        class="fa-solid fa-mountain"></i>Volc�nica</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="./tip-energeticos.jsp">Tips Energ�ticos</a></li>
                    <li class="nav-item"><a class="nav-link" href="./Botones-tablas.jsp">Estad�sticas</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Datos
                            Energ�ticos</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="./tablaconsulta1.jsp"><i class="fas fa-chart-line"></i> Producci�n</a></li>
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
                    <button class="btn btn-primary">Fuentes de Energ�a</button>
                    <button class="btn btn-primary">Datos de Energ�a</button>
                </div>
            </div>
        </div>

        <!-- Grupo de botones para Consultas -->
        <div class="row">
            <div class="col-12">
                <h3>Consultas:</h3>
                <div class="d-flex gap-3 flex-wrap">
                    <button class="btn btn-success">Producci�n y Consumo</button>
                    <button class="btn btn-success">A�o con Mayor Producci�n</button>
                    <button class="btn btn-success">Consumo Promedio</button>
                    <button class="btn btn-success">Consumo Relativo</button>
                    <button class="btn btn-success">Diferencia de Producci�n</button>
                    <button class="btn btn-success">Producci�n Total</button>
                </div>
            </div>
        </div>

        <section class="container my-4 d-flex flex-wrap">
            <div class="container">
                <article>
                    <h2>El impacto medioambiental de las energ�as no renovables y contaminantes</h2>
                    <p>Las energ�as renovables buscan promover la sostenibilidad y reducir la huella de carbono, siendo
                        una soluci�n clave para mitigar el cambio clim�tico. Aunque todas contribuyen positivamente al
                        medioambiente, algunas tienen un menor impacto que otras. La energ�a solar fotovoltaica es una
                        de las m�s limpias y menos contaminantes, ya que no produce CO2 ni contribuye al efecto
                        invernadero. Adem�s, es silenciosa, no afecta negativamente al paisaje o al suelo, y no requiere
                        agua para generar energ�a. Los paneles solares son fabricados con materiales reciclables como
                        silicio, vidrio y aluminio, y tienen una vida �til de hasta 30 a�os, tras los cuales pueden
                        reciclarse casi en su totalidad. Seg�n un estudio de Our World Data, la energ�a solar es la m�s
                        segura, con el menor n�mero de muertes relacionadas con su uso en comparaci�n con otras fuentes
                        de energ�a. <img src="imagenes/article1.png" class="d-block w-100" alt="..."> </p>
                </article>
                <div class="asides-container">
                    <aside>
                        <h3>? Beneficios de las energ�as renovables</h3>
                        <p>El uso de energ�as renovables reduce la emisi�n de gases contaminantes, ayudando a combatir
                            el cambio clim�tico y a conservar la biodiversidad....</p>
                    </aside>
                    <aside>
                        <h3>? Energ�as renovables y sostenibilidad</h3>
                        <p>Al depender de recursos inagotables como el sol y el viento, estas energ�as aseguran un
                            suministro limpio y sostenible a largo plazo...</p>
                    </aside>
                    <aside>
                        <h3>? �Sab�as que...?</h3>
                        <p>Las energ�as renovables no solo protegen el medioambiente, sino que tambi�n generan empleos y
                            fortalecen las econom�as locales.</p>
                    </aside>
                    <aside>
                        <h3>? Reducir el impacto ambiental</h3>
                        <p>Las fuentes de energ�a tradicionales contribuyen al agotamiento de recursos y al
                            desequilibrio ecol�gico. Las renovables son la soluci�n para un planeta m�s verde..</p>
                    </aside>
                </div>
            </div>
            <article>
                <h2>Hitos y avances en la transici�n energ�tica global</h2>
                <p>La generaci�n de electricidad a partir de fuentes limpias alcanz� un r�cord en 2023, con m�s del 40%
                    proveniente de energ�as renovables, lideradas por la e�lica y solar. Este crecimiento, impulsado por
                    inversiones globales, destaca la necesidad de colaboraci�n p�blico-privada para superar desaf�os en
                    la transici�n energ�tica, seg�n el Foro Econ�mico Mundial.

                    En el Reino Unido, el cierre de su �ltima planta de carb�n marca un paso hacia su objetivo de ser
                    l�der en energ�a limpia, con proyecciones de alcanzar un 83% de generaci�n renovable para 2050.

                    Otras noticias incluyen avances en energ�as limpias en Australia, China y EE. UU., adem�s del
                    impacto futuro de la inteligencia artificial en la industria petrolera.

                    Fuente: Foro Econ�mico Mundial
                    (https://es.weforum.org/stories/2024/09/la-generacion-global-de-renovables-alcanza-un-hito-y-otras-noticias-sobre-energia/)
                    <img src="imagenes/article2.png" class="article2" alt="...">
                </p>
            </article>
            <div class="asides-container">
                <aside>
                    <h3>? Hito hist�rico en renovables</h3>
                    <p>La generaci�n de energ�a renovable ha alcanzado niveles hist�ricos, marcando un avance crucial
                        hacia un futuro m�s sostenible</p>
                </aside>
                <aside>
                    <h3>? Renovables: l�deres del cambio</h3>
                    <p>Contribuyendo a m�s del 30% de la energ�a global, las fuentes renovables est�n transformando la
                        matriz energ�tica mundial.</p>
                </aside>
                <aside>
                    <h3>? El impacto de las renovables</h3>
                    <p>La expansi�n de las energ�as limpias no solo reduce emisiones, sino que impulsa econom�as
                        sostenibles y genera empleos verdes.</p>
                </aside>
                <aside>
                    <h3>? Dato clave</h3>
                    <p>Por primera vez, la generaci�n renovable supera a las fuentes f�siles en regiones clave,
                        mostrando el camino hacia la descarbonizaci�n global.</p>
                </aside>
            </div>
            </div>

        </section>

    </main>

    <!-- Pie de p�gina -->
    <footer style="text-align: center; background-color: #000000; padding: 20px; border-top: 2px solid #007bff;">
        <div class="footer-links" style="margin-bottom: 15px;">
            <a href="./index.jsp" style="margin: 0 10px; color: #007bff; text-decoration: none; font-weight: bold;">Inicio</a>
            
        </div>

        <div class="footer-copy" style="color: #6c757d; margin-bottom: 20px; font-size: 14px;">
            &copy; 2024 Plataforma de Energ�as Renovables
        </div>

        <!-- Dropdown para integrantes -->
        <div class="dropdown" style="display: inline-block; position: relative;">
            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownIntegrantes"
                data-bs-toggle="dropdown" aria-expanded="false">
                Integrantes
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownIntegrantes" style="text-align: left;">
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Andr�s Felipe Zuluaga
                        Osorio</a></li>
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Juan Jos� Villa Garc�a</a>
                </li>
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Juan Jos� G�mez
                        Casta�o</a></li>
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Jose Manuel Londo�o
                        Casta�o</a></li>
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Gabriel Enrique Romero
                        Cabarcas</a></li>
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