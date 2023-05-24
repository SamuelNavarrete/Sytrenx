﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD.Core.PL.Client
{
    public partial class AddClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            using (SytrenxEntities DBF = new SytrenxEntities())
            {
                Cliente cliente = new Cliente
                {
                    Nombre_Cliente = txbNombre.Text,
                    Direccion_Cliente = txbDirección.Text,
                    Telefono_Cliente = txbTelefono.Text,
                    Correo_Cliente = txbCorreo.Text,
                    Id_Vendedor = int.Parse(txbVendedor.Text)

                };
                DBF.Cliente.Add(cliente);
                DBF.SaveChanges();
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }
    }
}