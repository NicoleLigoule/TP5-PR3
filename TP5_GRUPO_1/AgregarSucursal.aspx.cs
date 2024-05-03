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

    public partial class AgregarSucursal : System.Web.UI.Page
    {
        private ClassSQLconexion conexion = new ClassSQLconexion();
        protected void Page_Load(object sender, EventArgs e)
        {  
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                cargarProvincias();
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            String consulta = "insert into Sucursal(NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal,DireccionSucursal) values ('" + txtAgregarSucursal.Text + "','" + txtDescripcion.Text + "','" + ddlProvincia.SelectedValue + "','" + txtboxDireccion.Text + "')";
            int filas = conexion.ejecutaAgregado(consulta);
            if (filas == 0)
            {
                lblMensaje.Text = "La sucursal no se ha podido agregar";
            }
            else
            {
                lblMensaje.Text = "La sucursal se ha agregado con éxito";
            }
            limpiarCampos();
        }

        public void limpiarCampos()
        {
            txtAgregarSucursal.Text = "";
            txtDescripcion.Text = "";
            txtboxDireccion.Text = "";
            ddlProvincia.SelectedIndex = 0;
        }


        protected void cargarProvincias()
        {
            if (!IsPostBack)
            {
                string consulta = "SELECT DescripcionProvincia, Id_Provincia FROM dbo.Provincia";
                List<string> provincias = new List<string>();
                using (SqlConnection conexion = new SqlConnection("Data Source=localhost\\sqlexpress; Initial Catalog = BDSucursales; Integrated Security = True"))
                {
                    SqlCommand commandprov = new SqlCommand(consulta, conexion);
                    conexion.Open();
                    SqlDataReader reader = commandprov.ExecuteReader();

                    while (reader.Read())
                    {
                        string provincia = reader["DescripcionProvincia"].ToString();
                        if (!provincias.Contains(provincia))
                        {
                            provincias.Add(provincia);
                            ddlProvincia.Items.Add(new ListItem(provincia, reader["Id_Provincia"].ToString()));
                        }
                    }
                }
                ddlProvincia.Items.Insert(0, new ListItem("-- Seleccionar --", ""));
            }
        }

    }
}