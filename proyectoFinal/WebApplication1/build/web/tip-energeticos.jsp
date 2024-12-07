<!DOCTYPE html>
<html lang="en">

    <head>
        <title>TIPS ENERG�TICOS</title> <!-- T�tulo de la p�gina en la barra del navegador -->
        <link rel="short icon" href="/imagenes/iconoPaginaWeb.png">
        <meta charset="UTF-8"> <!-- Codificaci�n de caracteres -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Escala la p�gina para dispositivos m�viles -->

        <!-- Vincula los archivos CSS -->
        <link rel="stylesheet" href="style_tips_ahorro.css"> <!-- Archivo de estilos personalizado -->


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
                        <li class="nav-item"><a class="nav-link" href="./index.jsp">Inicio</a></li>
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

        <!-- Carrusel de Tips Energ�ticos -->
        <div id="carouselTips" class="carousel slide mt-4" data-bs-ride="carousel">
            <div class="carousel-inner">
                <!-- Slide 1 -->
                <div class="carousel-item active">
                    <div class="row">

                        <!-- En las difernetes imagenes se presenta el atributo ALT 
                         (se utiliza dentro de la etiqueta <img> para proporcionar 
                         un texto alternativo a una imagen. Este texto alternativo 
                         se muestra si la imagen no puede cargarse por alg�n motivo 
                         (por ejemplo, si el archivo no est� disponible o si el usuario tiene una conexi�n lenta). 
                         Adem�s, el atributo alt mejora la accesibilidad, ya que los lectores de pantalla pueden 
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
                                        <p class="card-text">Limpia las lamparas y bombillos, una l�mpara en mal estado
                                            puede llegar a perder hasta un 50 % de luminosidad. Al
                                            limpiar las l�mparas, puedes usar focos de menor potencia y ahorrar hasta 20 %
                                            en el consumo de electricidad. Procura aprovechar al m�ximo la luz natural.</p>
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
                                            y siete veces menos que uno tradicional y duran m�s tiempo. El ahorro total de
                                            energ�a en una casa con este tipo de iluminaci�n puede ser del 80 %. </p>
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
                                            demanda la mayor cantidad de energ�a en el hogar, despu�s de la calefacci�n y el
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
                                        <p class="card-text">Desconecta los aparatos que no utilices, as� est�n apagados,
                                            los electrodom�sticos conectados a la corriente el�ctrica pueden usar hasta un
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
                                        <p class="card-text">El consumo de los electrodom�sticos se mide por su
                                            etiqueta. Las etiquetas de clase A (color verde) garantizan que las m�quinas
                                            funcionan con el menor gasto de energ�a posible. �Procura comprar estrictamente
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
                                            Abrir las cortinas durante el d�a permite aprovechar la luz natural, reduciendo
                                            el uso de electricidad para iluminaci�n y, en temporadas fr�as, ayuda a calentar
                                            los espacios con la energ�a solar, disminuyendo el costo energ�tico y cuidando
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
                        legend: {position: 'top'},
                        title: {display: true, text: 'Producci�n por Fuente de Energ�a'}
                    }
                }
            });
        </script>
    </body>

</html>