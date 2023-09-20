﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CRUD.Core.PL.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Sytrenx</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
    <form id="form1" runat="server">
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
                                <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">MENU</h5>
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
                                    <input class="form-control me-2" type="search" placeholder="Search"
                                        aria-label="Search">
                                    <button class="btn btn-success" type="submit">BUSCAR</button>
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
                    <img src="../../Resoruce/Assets/Logo.jpg" alt="Logo" width="300" height="300" />
                </center>
            </div>
        </div>
        <br>
        <br>
        <center>
                <label for="name">CORREO ELECTRONICO</label>
                <br>
                <br>
                <input type="text" id="name" name="user_name">
                <br>
                <br>
                <label for="mail">CONTRASEÑA</label>
                <br>
                <br>
                <input type="email" id="mail" name="user_mail">
                <br>
                <br>
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Entrar" />
                <br>
                <br>
                <input type="checkbox" class="form-check-input" id="dropdownCheck">
                <label class="form-check-label" for="dropdownCheck">Reordarme</label>
                <br>
                <br>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Registrarse</a>
                <a class="dropdown-item" href="#">¿Olvido su contraseña?</a>
            </center>
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
                        <li><a href="/drinks">Ubicacion 
                            <img src="../../Resoruce/Assets/icono.jpg" alt="ubi" width="15" height="15" /></a></li>
                    </ul>
                </footer>
            </div>
            <div class="col-md-2">
                <br>
                <center>
                    <img src="../../Resoruce/Assets/doc.jpg" alt="Logo" width="50" height="50" />
                    <br>
                    <label for="doc">Certificado</label>
            </div>
            <div class="col-md-2">
                <br>
                <center>
                    <img src="../../Resoruce/Assets/doc.jpg" alt="Logo" width="50" height="50" />
                    <br>
                    <label for="doc">Certificado</label>
            </div>
            <div class="col-md-2">
                <br>
                <center>
                    <img src="../../Resoruce/Assets/doc.jpg" alt="Logo" width="50" height="50" />
                    <br>
                    <label for="doc">Certificado</label>
            </div>

        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous">
    </script>
    </form>
</body>

</html>
