using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD.Core.PL.Product
{
    public partial class DescriptionProduct : System.Web.UI.Page
    {
        // Propiedad para el producto
        protected Core.Model.Product.Product Product { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Obtener los parámetros de la URL
            string productId = Request.QueryString["id"];
            string imageUrl = Request.QueryString["image"];

            // Verificar si se proporcionó un ID de producto
            if (!string.IsNullOrEmpty(productId))
            {
                // Parsear el ID de producto a un entero
                int productIdInt;
                if (int.TryParse(productId, out productIdInt))
                {
                    // Aquí debes configurar los datos del producto, 
                    // ya sea cargándolos desde una base de datos o como desees.
                    // En este ejemplo, se crea un producto de ejemplo:
                    Product = new Core.Model.Product.Product
                    {
                        Id = productIdInt,
                        Name = "Producto de Ejemplo",
                        Description = "Esta es una descripción de ejemplo.",
                        ImageUrl = imageUrl
                    };
                }
            }
        }
    }
}