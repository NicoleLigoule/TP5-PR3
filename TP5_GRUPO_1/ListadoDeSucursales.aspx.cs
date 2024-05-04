using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_1
{
    public partial class ListadoDeSucursales : System.Web.UI.Page
    {
        private ClassSQLconexion conexion = new ClassSQLconexion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {

            filtrarSucursales();
            limpiarCampos();

        }

        public void limpiarCampos()
        {
            txtBusqueda.Text = "";
        }

        protected void filtrarSucursales()
        {
            if (IsPostBack)
            {
                using (SqlConnection conexion = new SqlConnection("Data Source=localhost\\sqlexpress; Initial Catalog = BDSucursales; Integrated Security = True"))
                {
                    
                    conexion.Open();


                    string consulta = "select Id_Sucursal, NombreSucursal As Nombre, DescripcionSucursal As Descripcion, DescripcionProvincia AS Provincia, DireccionSucursal As Direccion from Sucursal s INNER JOIN Provincia p ON s.Id_ProvinciaSucursal = p.Id_Provincia WHERE s.Id_Sucursal = @Id_Sucursal";

                    SqlCommand cmd = new SqlCommand(consulta, conexion);
                    cmd.Parameters.AddWithValue("@Id_Sucursal", txtBusqueda.Text);

                  
                    SqlDataReader dr = cmd.ExecuteReader();

                   
                    gvTabla.DataSource = dr;
                    gvTabla.DataBind();
                }
            }
        }


    }
}