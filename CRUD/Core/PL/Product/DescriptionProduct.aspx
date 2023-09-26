<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DescriptionProduct.aspx.cs" Inherits="CRUD.Core.PL.Product.DescriptionProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous">
    </script>

    <title>Sytrenx</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <script>
        // Obtener parámetros de la URL
        const params = new URLSearchParams(window.location.search);
        const productId = params.get('id');
        const image = params.get('image');

        // Función para cargar los detalles del producto desde una fuente externa (por ejemplo, una solicitud AJAX)
        function loadProductDetails() {
            // Realiza una solicitud AJAX para obtener los detalles del producto desde tu servidor
            // Puedes usar una biblioteca como Axios o Fetch API para hacer la solicitud
            // Aquí se muestra un ejemplo ficticio:
            fetch(`/api/products/${productId}`) // Reemplaza la URL con la ruta correcta para obtener los detalles del producto
                .then(response => response.json())
                .then(product => {
                    // Actualizar elementos HTML con los datos del producto
                    document.getElementById('product-name').textContent = product.name;
                    document.getElementById('product-description').textContent = product.description;
                    document.getElementById('product-image').src = image; // Usar la URL de la imagen pasada como parámetro
                })
                .catch(error => {
                    console.error('Error al cargar los detalles del producto:', error);
                    // Manejar errores
                });
        }

        // Cargar los detalles del producto al cargar la página
        window.addEventListener("load", loadProductDetails);
    </script>

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
                                        <a class="nav-link active" aria-current="page" href="#">Pagina Principal</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Productos</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Iniciar Sesion</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Registrarse</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Compras</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Cerrar Sesion</a>
                                    </li>
                                </ul>
                                <form class="d-flex mt-3" role="search">
                                    <input class="form-control me-2" type="search" placeholder="Search"
                                        aria-label="Search">
                                    <button class="btn btn-success" type="submit">Search</button>
                                </form>
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
                    <img src="../../Resoruce/Assets/Logo.jpg" alt="Logo" width="200"
                        height="200">
                </center>
            </div>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>

        <!-- Contenedor para mostrar los detalles del producto -->

        <div id="product-details" class="card mb-3" style="max-width: 1000px;">
            <div class="row g-0">
                <div class="col-md-4">
                    <img id="product-image" src="" class="img-fluid rounded-start" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 id="product-name" class="card-title"></h5>
                        <p id="product-description" class="card-text"></p>
                    </div>
                </div>
            </div>
        </div>

        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
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
                    <img src="../../Resoruce/Assets/doc.jpg" alt="Logo" width="50"
                        height="50">
            </div>
            <div class="col-md-2">
                <br>
                <center>
                    <img src="../../Resoruce/Assets/doc.jpg" alt="Logo" width="50"
                        height="50">
            </div>
            <div class="col-md-2">
                <br>
                <center>
                    <img src="../../Resoruce/Assets/doc.jpg" alt="Logo" width="50"
                        height="50">
            </div>

        </div>
    </div>
</body>

</html>
