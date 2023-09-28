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
            // Obtener el ID del producto de la URL
            string productId = Request.QueryString["id"];

            // Verificar si se proporcionó un ID de producto
            if (!string.IsNullOrEmpty(productId))
            {
                // Parsear el ID de producto a un entero
                int productIdInt;
                if (int.TryParse(productId, out productIdInt))
                {
                    using (SytrenxEntities DBF = new SytrenxEntities())
                    {
                        // Consultar la base de datos para obtener el producto por su ID
                        var selectedProduct = DBF.Productos.FirstOrDefault(p => p.Id_Producto == productIdInt);

                        if (selectedProduct != null)
                        {
                            // Asignar los datos del producto a la propiedad Product
                            Product = new Core.Model.Product.Product
                            {
                                Id = selectedProduct.Id_Producto,
                                Name = selectedProduct.Nombre_Producto,
                                Description = selectedProduct.Descripcion_Producto,
                                ImageUrl = selectedProduct.Imagen_Producto
                            };
                        }
                        else
                        {
                            // Manejar el caso en el que no se encontró el producto
                            // Puedes mostrar un mensaje de error o redirigir a una página de error.
                        }
                    }
                }
                else
                {
                    // Manejar el caso en el que el ID de producto no es un número válido
                    // Puedes mostrar un mensaje de error o redirigir a una página de error.
                }
            }
            else
            {
                // Manejar el caso en el que no se proporcionó un ID de producto
                // Puedes mostrar un mensaje de error o redirigir a una página de error.
            }
        }

    }
}