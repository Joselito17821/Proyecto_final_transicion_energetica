<!DOCTYPE html> <!-- Define que el archivo utiliza HTML5 -->
<html lang="es"> <!-- Idioma de la p�gina en espa�ol -->

<head>
    <title>TIPOS DE ENERG�A</title> <!-- T�tulo de la p�gina en la barra del navegador -->
    <link rel="short icon" href="/imagenes/iconoPaginaWeb.png">
    <meta charset="UTF-8"> <!-- Codificaci�n de caracteres -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Escala la p�gina para dispositivos m�viles -->

    <!-- Vincula los archivos CSS -->
    <link rel="stylesheet" href="style_tipos_energia.css"> <!-- Archivo de estilos personalizado -->


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"> <!-- Bootstrap -->


 <!-- LINK PARA ICONOS EMPLEADOS EN EL MEN� /  Font Awesome Solid (�conos de estilo s�lido) -->
    <!--script para cargar Font Awesome-->

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"> <!-- Font Awesome actualizado -->


    <!-- �conos de FontAwesome -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

</head>

<body>
    <header>
        <div ></div> <!-- Contenedor del encabezado con una imagen de fondo -->
    </header>
    <header>
        <div class="banner"></div> <!-- Contenedor del encabezado con una imagen de fondo -->
    </header>

<!-- Encabezado -->
    <header class="d-flex align-items-center p-3 bg-primary text-white">
        <div class="container d-flex justify-content-between">
            <h1>Tipos de Energia</h1> <!-- T�tulo principal -->

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
                    <li class="nav-item"><a class="nav-link" href="Equipo 9_ Energ�as Renovables.html">Inicio</a></li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="fuentesMenu" role="button" data-bs-toggle="dropdown">
                            Fuentes de Energ�a
                        </a>
                        <ul class="dropdown-menu"> <!-- Submen� desplegable -->
                            <li><a class="dropdown-item" href="#energia-solar"><i class="fas fa-sun"></i> Solar</a></li>
                            <li><a class="dropdown-item" href="#energia-eolica"><i class="fas fa-wind"></i> E�lica</a></li>
                            <li><a class="dropdown-item" href="#energia-hidraulica"><i class="fas fa-water"></i> Hidr�ulica</a></li>
                            <li><a class="dropdown-item" href="#energia-nuclear"><i class="fas fa-atom"></i> Nuclear</a></li>
                            <li><a class="dropdown-item" href="#energia-carbon"><i class="fas fa-cloud"></i> Carb�n</a></li>
                            <li><a class="dropdown-item" href="#energia-petroleo"><i class="fa-solid fa-fill-drip"></i>Petr�leo</a></li>
                            <li><a class="dropdown-item" href="#energia-gasnatural"><i class="fa-brands fa-free-code-camp"></i>Gas Natural</a></li>
                            <li><a class="dropdown-item" href="#energia-geotermica"><i class="fa-solid fa-fire"></i>Geot�rmica</a></li>
                            <li><a class="dropdown-item" href="#energia-biomasa"><i class="fa-solid fa-seedling"></i>Biomasa</a></li>
                            <li><a class="dropdown-item" href="#energia-mareomotriz"><i class="fa-solid fa-ship"></i>Mareomotriz</a></li>
                            <li><a class="dropdown-item" href="#energia-volcanica"><i class="fa-solid fa-mountain"></i>Volc�nica</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="/TIPS DE AHORRO.html">Tips Energ�ticos</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Estad�sticas</a></li>
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Datos Energ�ticos</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#"><i class="fas fa-chart-line"></i> Producci�n</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-chart-bar"></i> Consumo</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="#">Contacto</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Contenido principal -->
    <main class="container my-4">


        <div id="energia-solar" class="content-vertical">
            <div class="card-container">
                <div class="card">
                    <img src="./imagenes.ENERGIAS/Esolar.PNG" alt="Imagen 1">
                </div>
                <p class="text">La energ�a solar se obtiene de la radiaci�n solar. Los paneles solares fotovoltaicos convierten la luz solar directamente en electricidad, mientras que los colectores solares t�rmicos utilizan el calor del sol para calentar agua o aire para uso dom�stico o industrial. Es una fuente de energ�a limpia y renovable que no produce emisiones contaminantes durante su uso.</p>
            </div>
        
            <div id="energia-eolica" class="card-container">
                <div class="card">
                    <img src="./imagenes.ENERGIAS/Eeolica.PNG" alt="Imagen 2">
                </div>
                <p class="text">La energ�a e�lica se genera a partir del viento mediante aerogeneradores. Estos dispositivos convierten la energ�a cin�tica del viento en energ�a el�ctrica. Es una fuente de energ�a renovable y limpia, aunque su eficiencia depende de la ubicaci�n y las condiciones clim�ticas.</p>
            </div>
        
            <div id="energia-hidraulica" class="card-container">
                <div class="card">
                    <img src="./imagenes.ENERGIAS/Ehidraulica.PNG" alt="Imagen 3">
                </div>
                <p class="text">La energ�a hidr�ulica se produce por el movimiento del agua en r�os y embalses. Las plantas hidroel�ctricas utilizan turbinas para convertir la energ�a cin�tica del agua en electricidad. Es una fuente de energ�a renovable, pero puede tener impactos ambientales significativos, como la alteraci�n de ecosistemas acu�ticos.</p>
            </div>
        
            <div id="energia-nuclear" class="card-container">
                <div class="card">
                    <img src="./imagenes.ENERGIAS/Enuclear.PNG" alt="Imagen 4">
                </div>
                <p class="text">La energ�a nuclear se libera durante reacciones de fisi�n o fusi�n nuclear. En las plantas de energ�a nuclear, los �tomos de uranio o plutonio se dividen (fisi�n) para liberar una gran cantidad de energ�a en forma de calor, que se utiliza para generar electricidad. Aunque es una fuente de energ�a potente y de bajas emisiones de carbono, conlleva riesgos asociados a la gesti�n de residuos radiactivos y la seguridad.</p>
            </div>

            <div id="energia-carbon" class="card-container">
                <div class="card">
                    <img src="./imagenes.ENERGIAS/Carbon.PNG" alt="Imagen 3">
                </div>
                <p class="text">El carb�n es un combustible f�sil utilizado para la generaci�n de electricidad. Su quema produce calor, que se utiliza para generar vapor y mover turbinas que producen electricidad. Sin embargo, la combusti�n del carb�n libera grandes cantidades de di�xido de carbono (CO2) y otros contaminantes, contribuyendo al cambio clim�tico y la contaminaci�n del aire.</p>
            </div>

            <div id="energia-petroleo" class="card-container">
                <div class="card">
                    <img src="./imagenes.ENERGIAS/Petroleo.PNG" alt="Imagen 3">
                </div>
                <p class="text">El petr�leo es un combustible f�sil l�quido usado en transporte y producci�n de energ�a. Se refina para producir gasolina, di�sel y otros productos derivados. Aunque es una fuente de energ�a muy vers�til, su uso contribuye significativamente a las emisiones de gases de efecto invernadero y la contaminaci�n ambiental.</p>
            </div>

            <div id="energia-gasnatural" class="card-container">
                <div class="card">
                    <img src="./imagenes.ENERGIAS/Gnatural.PNG" alt="Imagen 3">
                </div>
                <p class="text">El gas natural es un combustible f�sil gaseoso utilizado para calefacci�n y generaci�n el�ctrica. Es m�s limpio que el carb�n y el petr�leo en t�rminos de emisiones de CO2, pero sigue siendo una fuente de energ�a no renovable. Se utiliza en plantas de energ�a para generar electricidad y en hogares para calefacci�n y cocina.</p>
            </div>

            <div id="energia-geotermica" class="card-container">
                <div class="card">
                    <img src="./imagenes.ENERGIAS/Egeotermica.PNG" alt="Imagen 3">
                </div>
                <p class="text">La energ�a geot�rmica proviene del calor interno de la Tierra. Se aprovecha mediante la perforaci�n de pozos para extraer vapor o agua caliente, que se utiliza para generar electricidad o calefacci�n. Es una fuente de energ�a renovable y constante, pero su viabilidad depende de la ubicaci�n geol�gica.</p>
            </div>

            <div id="energia-biomasa" class="card-container">
                <div class="card">
                    <img src="./imagenes.ENERGIAS/Biomasa.PNG" alt="Imagen 3">
                </div>
                <p class="text">La biomasa es material org�nico utilizado como fuente de energ�a renovable. Incluye residuos agr�colas, forestales y desechos org�nicos. La biomasa se puede quemar directamente para producir calor o convertir en biocombustibles l�quidos o gaseosos para generar electricidad y calor. Es una fuente de energ�a renovable, pero su uso debe gestionarse adecuadamente para evitar impactos negativos en el medio ambiente.</p>
            </div>

            <div id="energia-mareomotriz" class="card-container">
                <div class="card">
                    <img src="./imagenes.ENERGIAS/Emareom.PNG" alt="Imagen 3">
                </div>
                <p class="text">La energ�a mareomotriz se genera a partir de las mareas oce�nicas. Se utilizan turbinas submarinas para convertir la energ�a cin�tica de las mareas en electricidad. Es una fuente de energ�a renovable y limpia, pero su implementaci�n puede ser costosa y depende de las caracter�sticas geogr�ficas del lugar.</p>
            </div>

            <div id="energia-volcanica" class="card-container">
                <div class="card">
                    <img src="./imagenes.ENERGIAS/Evolcanica.PNG" alt="Imagen 3">
                </div>
                <p class="text">La energ�a volc�nica se genera por el calor de la lava. Similar a la energ�a geot�rmica, se aprovecha el calor de los volcanes para generar electricidad y calefacci�n. Es una fuente de energ�a renovable, pero su uso est� limitado a regiones con actividad volc�nica.</div>
        </div>
        

        </section> 
        
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
                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-circle-user"></i> Jose Manuel Londo�o Casta�o</a></li>
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
