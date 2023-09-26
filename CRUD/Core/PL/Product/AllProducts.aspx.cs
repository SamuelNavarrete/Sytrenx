using System;
using System.Collections.Generic;
using System.Xml.Linq;

namespace CRUD.Core.PL.Product
{
    public partial class AllProducts : System.Web.UI.Page
    {
        protected List<Core.Model.Product.Product> products = new List<Core.Model.Product.Product>
        {
            new Core.Model.Product.Product { Id = 1, Name = "Azufre Liquido", Description = "This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.", ImageUrl = "../../Resoruce/Assets/aliquido.jpg" },
            new Core.Model.Product.Product { Id = 2, Name = "Azufre Sólido", Description = "This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.", ImageUrl = "../../Resoruce/Assets/amolienda.jpg" },
            new Core.Model.Product.Product { Id = 3, Name = "Azufre Sólido", Description = "This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.", ImageUrl = "../../Resoruce/Assets/amolienda.jpg" },
            new Core.Model.Product.Product { Id = 4, Name = "Azufre Sólido", Description = "This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.", ImageUrl = "../../Resoruce/Assets/amolienda.jpg" },
            new Core.Model.Product.Product { Id = 5, Name = "Azufre Liquido", Description = "This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.", ImageUrl = "../../Resoruce/Assets/aliquido.jpg" },
            new Core.Model.Product.Product { Id = 6, Name = "Azufre Liquido", Description = "This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.", ImageUrl = "../../Resoruce/Assets/aliquido.jpg" },
            // Agrega más productos aquí
        };

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
