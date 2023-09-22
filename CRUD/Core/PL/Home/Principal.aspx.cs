using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD.Core.PL.Home
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Verifica si el usuario está autenticado
                if (Session["Usuario"] == null)
                {
                    // Si no está autenticado, redirige a la página de inicio de sesión
                    Response.Redirect("/Core/PL/Login/Login.aspx");
                }
            }
        }

       
    }
}
