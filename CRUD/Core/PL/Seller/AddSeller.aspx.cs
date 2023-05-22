using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.Entity;
using System.Data.Entity.Validation;

namespace CRUD
{
    public partial class AddSeller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            using (SytrenxEntities DBF = new SytrenxEntities())
            {
                Vendedor vendedor = new Vendedor
                {
                    Nombre_Vendedor = txbNombre.Text,
                    Telefono_Vendedor = txbTelefono.Text,
                    Correo_Vendedor = txbCorreo.Text
                };
                DBF.Vendedor.Add(vendedor);
                DBF.SaveChanges();
            }
        }
    }
}