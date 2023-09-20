using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace CRUD.Core.PL.Product
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            using (SytrenxEntities DBF = new SytrenxEntities())
            {
                Productos productos = new Productos
                {
                    Id_Tipo = int.Parse(txbTipo.Text),
                    Nombre_Producto = txbNombrep.Text,
                    Clave_Producto = txbClavep.Text,
                    Existencia_Producto = int.Parse(txbExistenciap.Text)
                    //Id_Vendedor = int.Parse(txbVendedor.Text)

                };
                DBF.Productos.Add(productos);
                DBF.SaveChanges();
            }
        }
    }
}