using System;
using System.Collections.Generic;
using System.Linq;
using CRUD.Core.Model;
using CRUD.Core.Model.Product; // Asegúrate de importar el espacio de nombres correcto

namespace CRUD.Core.PL.Product
{
    public partial class AllProducts : System.Web.UI.Page
    {
        protected List<Core.Model.Product.Product> products = new List<Core.Model.Product.Product>();

        protected void Page_Load(object sender, EventArgs e)
        {
            Result result = new Result();

            try
            {
                using (SytrenxEntities DBF = new SytrenxEntities())
                {
                    // Llama al procedimiento almacenado SP_GetAllProductos utilizando Entity Framework
                    var productsFromDB = DBF.SP_GetAllProductos().ToList();

                    if (productsFromDB != null)
                    {
                        result.Objects = new List<object>();
                        foreach (var objProduct in productsFromDB)
                        {
                            Core.Model.Product.Product product = new Core.Model.Product.Product
                            {
                                Id = objProduct.Id,
                                Name = objProduct.Nombre,
                                Description = objProduct.Descripcion,
                                ImageUrl = objProduct.ImagenUrl,
                                // Asigna otras propiedades del producto según la estructura de tu entidad
                            };

                            products.Add(product);
                            result.Objects.Add(product);
                        }

                        result.Correct = true;
                    }
                    else
                    {
                        result.Correct = false;
                        result.ErrorMessage = "No se encontraron registros de productos";
                    }
                }
            }
            catch (Exception ex)
            {
                result.Correct = false;
                result.ErrorMessage = ex.Message;
                result.Ex = ex;
            }
        }
    }
}
