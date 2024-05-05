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

        private bool botonfiltro = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            mostrarEnTabla();
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
            botonfiltro = true;
            mostrarEnTabla();
        }

        protected void mostrarEnTabla()
        {
            string consulta = "SELECT Id_Sucursal, NombreSucursal AS Nombre, DescripcionSucursal AS Descripcion, DescripcionProvincia AS Provincia, DireccionSucursal AS Direccion FROM Sucursal s INNER JOIN Provincia p ON s.Id_ProvinciaSucursal = p.Id_Provincia";



            if (txtBusqueda.Text.Length > 0 && botonfiltro == true)
            {
                consulta += " WHERE s.Id_Sucursal = @Id_Sucursal";
            }

            using (SqlConnection conexion = new SqlConnection("Data Source=localhost\\sqlexpress; Initial Catalog = BDSucursales; Integrated Security = True"))
            {
                conexion.Open();

                SqlCommand cmd = new SqlCommand(consulta, conexion);

                if (!string.IsNullOrEmpty(txtBusqueda.Text))
                {
                    cmd.Parameters.AddWithValue("@Id_Sucursal", txtBusqueda.Text);
                }

                SqlDataReader dr = cmd.ExecuteReader();

                gvTabla.DataSource = dr;
                gvTabla.DataBind();
            }
        }
        protected void btnMostrartodos_Click(object sender, EventArgs e)
        {
            botonfiltro = false;
            mostrarEnTabla();
        }
    }
}