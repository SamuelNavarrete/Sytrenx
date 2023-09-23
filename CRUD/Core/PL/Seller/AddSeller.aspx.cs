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
using CRUD.Core.ML;
using System.IO;
using Newtonsoft.Json;

namespace CRUD
{
    public partial class AddSeller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            agregarVendedorEnDB();
            capturarJson();
            generarJson();
        }


        public void agregarVendedorEnDB()
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

        public void capturarJson()
        {

            cVendedor oVendedor = new cVendedor()
            {
                Nombre = txbNombre.Text,
                Telefono = txbTelefono.Text,
                Correo = txbCorreo.Text
            };

            if (Session["TxtJSON"].ToString() == string.Empty)
            {
                Session["TxtJSON"] = JsonConvert.SerializeObject(oVendedor);
            }
            else
            {
                Session["TxtJSON"] = Session["TxtJSON"].ToString()
                    + "," + JsonConvert.SerializeObject(oVendedor);
            }
        }

        public void generarJson()
        {
            File.WriteAllText(@"C:\JsonSytrenx\Reporte.json", "[" + Session["TxtJSON"].ToString() + "]");
        }

    }
}