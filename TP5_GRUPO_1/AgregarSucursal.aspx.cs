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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            String consulta = "insert into Sucursal(NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal,DireccionSucursal) values (" + txtAgregarSucursal.Text + ",'" + txtDescripcion.Text + "'," + ddlProvincia.SelectedValue + "'," + txtboxDireccion.Text + ")";
            /*int filas = conexion.ejecutaAgregado(consulta);
            if (filas == 0)
            {
                No se agregaba a a base de datos
            }
            else
            {
                //Se agrego con exito
            }*/

        }
    }
}