<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllProducts.aspx.cs" Inherits="CRUD.Core.PL.Product.AllProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Sytrenx</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
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
                    <img src="../../Resoruce/Assets/Logo.jpg" alt="Logo" width="200" height="200" />
                </center>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md">
                <div class="card mb-3" style="max-width: 1000px;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="../../Resoruce/Assets/aliquido.jpg" class="img-fluid rounded-start" alt="..." />
                        </div>
                        <div class="col-md-4">
                            <div class="card-body">
                                <h5 class="card-title">Azufre Liquido</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card-body">
                                <h5 class="card-title">Azufre Liquido</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md">
                <div class="card mb-3" style="max-width: 1000px;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="../../Resoruce/Assets/asolido.jpg" class="img-fluid rounded-start" alt="..." />
                        </div>
                        <div class="col-md-4">
                            <div class="card-body">
                                <h5 class="card-title">Azufre Solido</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card-body">
                                <h5 class="card-title">Grueso</h5>
                                <h5 class="card-title">Fino</h5>
                                <h5 class="card-title">G1</h5>
                                <h5 class="card-title">G2</h5>
                                <h5 class="card-title">Laja</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md">
                <div class="card mb-3" style="max-width: 1000px;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="../../Resoruce/Assets/amolienda.jpg" class="img-fluid rounded-start" alt="..." />
                        </div>
                        <div class="col-md-4">
                            <div class="card-body">
                                <h5 class="card-title">Azufre Solido</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card-body">
                                <h5 class="card-title">Azufre 100% Extra Fino</h5>
                                <h5 class="card-title">Azufre Agricola 93%</h5>
                                <h5 class="card-title">Azufre Humectable</h5>
                                <h5 class="card-title">Azufre Flowable</h5>
                            </div>
                        </div>
                    </div>
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
            </div>
            <div class="col-md-2">
                <br>
                <center>
                    <img src="../../Resoruce/Assets/doc.jpg" alt="Logo" width="50" height="50" />
            </div>
            <div class="col-md-2">
                <br>
                <center>
                    <img src="../../Resoruce/Assets/doc.jpg" alt="Logo" width="50" height="50" />
            </div>

        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous">
    </script>
</body>

</html>
