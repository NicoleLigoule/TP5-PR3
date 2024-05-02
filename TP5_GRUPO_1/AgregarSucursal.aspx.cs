using System;
using System.Collections.Generic;
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

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            String consulta = "insert into Sucursal(NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal,DireccionSucursal) values (" + txtAgregarSucursal.Text + ",'" + txtDescripcion.Text + "'," + ddlProvincia.SelectedValue + "'," + txtboxDireccion.Text + ")";
            int filas = conexion.ejecutaAgregado(consulta);
            if (filas == 0)
            {
                lblMensaje.Text = "La sucursal no se ha podido agregar";
            }
            else
            {
                lblMensaje.Text = "La sucursal se ha agregado con éxito";
            }

        }
    }
}