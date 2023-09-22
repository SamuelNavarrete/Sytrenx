using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD.Core.PL.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string correoElectronico = txbCorreo.Text;
            string contraseña = txbPassword.Text;

            if (ValidarCredenciales(correoElectronico, contraseña))
            {
                // Las credenciales son válidas, redirige al usuario a la página de productos
                Response.Redirect("/Core/PL/Product/AllProducts.aspx");
            }
            else
            {
                // Las credenciales no son válidas, muestra un mensaje de error
                lblMensajeError.Text = "Credenciales incorrectas. Verifique su correo electrónico y contraseña.";
                lblMensajeError.Visible = true;
            }
        }

        private bool ValidarCredenciales(string correoElectronico, string contraseña)
        {
            // Aquí realizas la validación de las credenciales utilizando tu clase Cliente
            // Puedes acceder a la base de datos u otro medio para verificar las credenciales

            using (var dbContext = new SytrenxEntities())
            {
                // Busca un cliente con el correo electrónico proporcionado
                var cliente = dbContext.Cliente.FirstOrDefault(c => c.Correo_Cliente == correoElectronico);

                if (cliente != null)
                {
                    // Si se encuentra un cliente con el correo electrónico, verifica la contraseña
                    if (cliente.Contraseña_Cliente == contraseña)
                    {
                        // Las credenciales son válidas
                        return true;
                    }
                }
            }

            // Las credenciales no son válidas
            return false;
        }
    }
}