﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.Entity;
using System.Data.Entity.Validation;
using Newtonsoft.Json;
using System.IO;
using System.Data;

namespace CRUD.Core.PL.Seller
{
    public partial class DeleteSeller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            myMethodFind();
        }

        public void myMethodFind()
        {
            string vBus = txbId.Text;

            using (SytrenxEntities DBFSeller = new SytrenxEntities())
            {
                IQueryable<Vendedor> oNombre = from q in DBFSeller.Vendedor where q.Id_Vendedor.ToString() == vBus select q;

                List<Vendedor> list = oNombre.ToList();
                var listNombre = list[0];

                txbIdVendedor.Text = listNombre.Id_Vendedor.ToString();
                txbNombre.Text = listNombre.Nombre_Vendedor;

                GridView1.DataSource = list;
                GridView1.DataBind();
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            BotonBorrar();
        }

        public void BotonBorrar()
        {
            string vBorrarVendedor = txbEliminar.Text;
            using (SytrenxEntities oBorrar = new SytrenxEntities())
            {
                Vendedor oVendedor = (from q in oBorrar.Vendedor where q.Nombre_Vendedor == vBorrarVendedor select q).First();
                try
                {
                    oBorrar.Vendedor.Remove(oVendedor);
                    oBorrar.SaveChanges();
                }
                catch (Exception ex)
                {

                }
            }
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            LeerJson();
        }

        public void LeerJson()
        {
            using (StreamReader oLeer = File.OpenText(@"C:\JsonSytrenx\Reporte.json"))
            {
                string Vjson = oLeer.ReadToEnd();
                DataTable myArray = (DataTable)JsonConvert.DeserializeObject(Vjson, typeof(DataTable));

                GrdJson.DataSource = myArray;
                GrdJson.DataBind();

                dynamic myArray2 = JsonConvert.DeserializeObject(Vjson);
                foreach (var variable2 in myArray2)
                {
                    txbNombre2.Text = variable2.Nombre;
                }
            }
        }
    }
}