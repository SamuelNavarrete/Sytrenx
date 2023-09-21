using System;
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
            if (Page.IsValid) // Verifica que todas las validaciones en la página sean válidas.
            {
                // Verifica si los campos requeridos están llenos antes de guardar en la base de datos.
                if (!string.IsNullOrEmpty(txbNombre.Text) && !string.IsNullOrEmpty(txbDirección.Text) && !string.IsNullOrEmpty(txbTelefono.Text) && !string.IsNullOrEmpty(txbCorreo.Text) && !string.IsNullOrEmpty(txtPassword.Text))
                {
                    using (SytrenxEntities DBF = new SytrenxEntities())
                    {
                        Cliente cliente = new Cliente
                        {
                            Nombre_Cliente = txbNombre.Text,
                            Direccion_Cliente = txbDirección.Text,
                            Telefono_Cliente = txbTelefono.Text,
                            Correo_Cliente = txbCorreo.Text,
                            Contraseña_Cliente = txtPassword.Text
                        };

                        DBF.Cliente.Add(cliente);
                        DBF.SaveChanges();
                    }
                    // Redirige o muestra un mensaje de éxito aquí.
                }
                else
                {
                    // Alguno de los campos requeridos está vacío, muestra un mensaje de error o realiza alguna acción apropiada.
                    // Por ejemplo, puedes mostrar un mensaje de error o mostrar una alerta al usuario.
                    // Puedes usar JavaScript para mostrar una alerta o un control de ASP.NET para mostrar el mensaje.
                }
            }
        }

    }
}