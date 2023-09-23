<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteSeller.aspx.cs" Inherits="CRUD.Core.PL.Seller.DeleteSeller" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Sytrenx</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
    <style type="text/css">
        .auto-style1 {
            width: 231px;
            height: 183px;
        }
    </style>
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
                <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Dark offcanvas</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"
                  aria-label="Close"></button>
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
                </div>
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
                  <button class="btn btn-success" type="submit">Search</button>
              </div>
            </div>
          </div>
        </nav>
      </div>
    </div>
    <br/>
    <br/>
    <br/>
    <div class="row">
      <div class="col-md">
          <center><img class="auto-style1" src="../../Resoruce/Assets/Logo.jpg" /></center>     
      </div>
    </div>
    <br/>

        <asp:Label ID="lblId" runat="server" Text="Id (Colocar)"></asp:Label>
        &nbsp;<br />
        <asp:TextBox ID="txbId" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblIdVendedor" runat="server" Text="Id Vendedor"></asp:Label>
        <br />
        <asp:TextBox ID="txbIdVendedor" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblNombre" runat="server" Text="Nombre Vendedor"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="lblNombre2" runat="server" Text="Nombre"></asp:Label>
        <br />
        <asp:TextBox ID="txbNombre" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="txbNombre2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar Json" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

             <asp:GridView ID="GrdJson" runat="server">
             </asp:GridView>

             <br />
             <br />
             <br />
             <asp:Label ID="lblEliminar" runat="server" Text="Eliminar Vendedor"></asp:Label>
             <br />
             <asp:TextBox ID="txbEliminar" runat="server"></asp:TextBox>
             <br />
             <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
    <br/>
    <br/>
    <br/>
    <footer><div class="row" style="background-color: rgba(128, 128, 128, 0.178);">
      <div class="col-md-4">
        
          <address>
            Conocenos<br>
          </address>
          <ul>
            <li><a href="/">Correo</a></li>
            <li><a href="/food">Direccion</a></li>
            <li><a href="/drinks">Ubicacion</a></li>
          </ul>
      </div>
      <div class="col-md-2"><br>
        <center> <img class="img" src="../../Resoruce/Assets/doc.jpg " width="80" height="80" />
      </div>
      <div class="col-md-2"><br>
        <center> <img class="img" src="../../Resoruce/Assets/doc.jpg " width="80" height="80" />
      </div>
      <div class="col-md-2"><br>
        <center> <img class="img" src="../../Resoruce/Assets/doc.jpg " width="80" height="80" />
      </div>
    </div></footer>
    </form>
</body>
</html>
