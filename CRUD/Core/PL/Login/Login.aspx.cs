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
            if (!IsPostBack)
            {
                // Verifica si existen cookies para recordar el correo y la contraseña
                HttpCookie correoCookie = Request.Cookies["CorreoElectronico"];
                HttpCookie contraseñaCookie = Request.Cookies["Contraseña"];

                if (correoCookie != null)
                {
                    // Si se encuentran las cookies, carga los valores en los TextBox de correo
                    txbCorreo.Text = correoCookie.Value;

                    // Verifica si la cookie de contraseña no es nula antes de asignarla al TextBox de contraseña
                    if (contraseñaCookie != null)
                    {
                        txbPassword.Attributes["value"] = contraseñaCookie.Value;
                        chkRecordarCredenciales.Checked = true; // Marca el CheckBox
                    }
                }
            }
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string correoElectronico = txbCorreo.Text;
            string contraseña = txbPassword.Text;

            if (ValidarCredenciales(correoElectronico, contraseña))
            {
                // Las credenciales son válidas, redirige al usuario a la página de productos

                // Verifica si el usuario desea recordar las credenciales
                if (chkRecordarCredenciales.Checked)
                {
                    // Crea cookies para recordar el correo y la contraseña
                    HttpCookie correoCookie = new HttpCookie("CorreoElectronico", correoElectronico);
                    HttpCookie contraseñaCookie = new HttpCookie("Contraseña", contraseña);

                    // Establece la fecha de expiración de las cookies (por ejemplo, 30 días)
                    correoCookie.Expires = DateTime.Now.AddDays(30);
                    contraseñaCookie.Expires = DateTime.Now.AddDays(30);

                    // Agrega las cookies a la respuesta
                    Response.Cookies.Add(correoCookie);
                    Response.Cookies.Add(contraseñaCookie);
                }
                else
                {
                    // Si el usuario no desea recordar las credenciales, elimina las cookies si existen
                    if (Request.Cookies["CorreoElectronico"] != null)
                    {
                        Response.Cookies["CorreoElectronico"].Expires = DateTime.Now.AddDays(-1);
                    }
                    if (Request.Cookies["Contraseña"] != null)
                    {
                        // Elimina la cookie de contraseña si existe antes de establecerla como nula
                        Response.Cookies["Contraseña"].Expires = DateTime.Now.AddDays(-1);
                    }
                }
                Session["Usuario"] = correoElectronico; // En este ejemplo, usamos el correo como identificador único del usuario

                Response.Redirect("/Core/PL/Home/Principal.aspx");
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