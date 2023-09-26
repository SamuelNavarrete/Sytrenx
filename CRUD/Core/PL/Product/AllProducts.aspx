<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllProducts.aspx.cs" Inherits="CRUD.Core.PL.Product.AllProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Sytrenx</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    
    <link href="/Core/Common/CSS/estilos.css" rel="stylesheet" type="text/css">

    <!-- Agrega el código JavaScript necesario para cargar las tarjetas dinámicamente -->
    <script>
        // Función para cargar las tarjetas de productos
        function loadProducts() {
            const productContainer = document.getElementById('product-container');

            Core.Model.Product.Product.ProductsList.forEach(product => {
                const cardHtml = `
                    <div class="col-md-4">
                        <div class="card mb-3" style="max-width: 1000px;">
                            <div class="row g-0">
                                <div class="col-md-4">
                                    <img src="${product.ImageUrl}" class="img-fluid rounded-start" alt="...">
                                </div>
                                <div class="col-md-4">
                                    <div class="card-body">
                                        <h5 class="card-title">${product.Name}</h5>
                                        <p class="card-text">${product.Description}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card-body">
                                        <a href="DescriptionProduct.aspx?id=${product.Id}" class="btn btn-primary btn-sm">Ver Detalles</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                `;

                productContainer.innerHTML += cardHtml;
            });
        }

        // Carga las tarjetas de productos al cargar la página
        window.addEventListener("load", loadProducts);
    </script>

    <style>
        /* Cambia el color de fondo de los indicadores del carrusel */
        .carousel-indicators {
            bottom: -40px; /* Posiciona los indicadores por debajo del carrusel */
        }

        .carousel-indicators li {
            background-color: #000; /* Cambia el color de fondo a negro (#000) */
        }

        /* Cambia el color de los botones de navegación del carrusel (flechas) */
        .carousel-control-prev,
        .carousel-control-next {
            background-color: #000; /* Cambia el color de las flechas a negro (#000) */
        }

        /* Cambia el color del ícono de flecha en los botones de navegación del carrusel */
        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            background-color: #fff; /* Cambia el color del ícono a blanco (#fff) */
        }

        /* Cambia el color del ícono de flecha en los botones de navegación del carrusel al pasar el mouse */
        .carousel-control-prev:hover .carousel-control-prev-icon,
        .carousel-control-next:hover .carousel-control-next-icon {
            background-color: #fff; /* Cambia el color del ícono al pasar el mouse */
        }
    </style>

</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md">
                <nav class="navbar navbar-dark bg-dark fixed-top">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">Sytrenx, S.A. de C.V.</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                            data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar"
                            aria-labelledby="offcanvasDarkNavbarLabel">
                            <div class="offcanvas-header">
                                <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Dark offcanvas</h5>
                                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"
                                    aria-label="Close">
                                </button>
                            </div>
                            <div class="offcanvas-body">
                                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                                    <li class="nav-item">
                                        <a class="nav-link" href="/Core/PL/Home/Principal.aspx">Pagina Principal</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/Core/PL/Product/AllProducts.aspx">Productos</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Compras</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/Core/PL/Login/Login.aspx" onclick="return mostrarAlertaCerrarSesion();" runat="server">Cerrar Sesión</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="row">
            <div class="col-md">
                <center>
                    <img src="../../Resoruce/Assets/Logo.jpg" alt="Logo" width="200" height="200" />
                </center>
            </div>
        </div>
        <br>
        <!-- Carrusel de Productos Destacados -->
        <div class="row">
            <div class="col-md">
                <div id="productCarousel" class="carousel slide" data-bs-ride="carousel">
                    <!-- Indicadores -->
                    <ol class="carousel-indicators">
                        <% for (int i = 0; i < Math.Ceiling((double)products.Count / 3); i++)
                            { %>
                        <li data-bs-target="#productCarousel" data-bs-slide-to="<%= i %>" <% if (i == 0)
                            { %>class="active"
                            <% } %>></li>
                        <% } %>
                    </ol>
                    <!-- Slides -->
                    <div class="carousel-inner">
                        <% for (int i = 0; i < Math.Ceiling((double)products.Count / 3); i++)
                            { %>
                        <div class="carousel-item <% if (i == 0)
                            { %>active<% } %>">
                            <div class="row">
                                <% for (int j = i * 3; j < Math.Min((i + 1) * 3, products.Count); j++)
                                    { %>
                                <div class="col-md-4">
                                    <div class="card mb-3" style="max-width: 1000px;">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <img src="<%= products[j].ImageUrl %>" class="img-fluid rounded-start" alt="<%= products[j].Name %>">
                                            </div>
                                            <div class="col-md-4">
                                                <div class="card-body">
                                                    <h5 class="card-title"><%= products[j].Name %></h5>
                                                    <p class="card-text"><%= products[j].Description %></p>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="card-body">
                                                    <a href="DescriptionProduct.aspx?id=<%= products[j].Id %>" class="btn btn-primary btn-sm">Ver Detalles</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <% } %>
                            </div>
                        </div>
                        <% } %>
                    </div>
                    <!-- Controles izquierda y derecha -->
                    <button class="carousel-control-prev" type="button" data-bs-target="#productCarousel" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Anterior</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#productCarousel" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Siguiente</span>
                    </button>
                </div>
            </div>
        </div>
        <br>
        <div class="row" style="background-color: rgba(128, 128, 128, 0.178);">
            <div class="col-md-4">
                <footer>
                    <address>
                        Conocenos<br>
                    </address>
                    <ul>
                        <li><a href="/">Correo</a></li>
                        <li><a href="/food">Direccion</a></li>
                        <li><a href="/drinks">Ubicacion</a></li>
                    </ul>
                </footer>
            </div>
            <div class="col-md-2">
                <br>
                <center>
                    <img src="../../Resoruce/Assets/doc.jpg" alt="Logo" width="50" height="50" />
                </center>
            </div>
            <div class="col-md-2">
                <br>
                <center>
                    <img src="../../Resoruce/Assets/doc.jpg" alt="Logo" width="50" height="50" />
                </center>
            </div>
            <div class="col-md-2">
                <br>
                <center>
                    <img src="../../Resoruce/Assets/doc.jpg" alt="Logo" width="50" height="50" />
                </center>
            </div>
        </div>
    </div>
</body>
</html>
