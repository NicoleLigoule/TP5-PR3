﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_1
{
   
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        private ClassSQLconexion conexion = new ClassSQLconexion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            String consulta = "DELETE FROM Sucursal WHERE Id_Sucursal = @Id_Sucursal";

        }
    }
}