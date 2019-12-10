using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;

namespace CapaPresentacion
{
    public partial class tatuaje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Tatuaje objTatu = new Tatuaje();
            objTatu.Tamano = txtTamano.Text;
            objTatu.Cant_color = txtCantidadColores.Text;
            objTatu.Sesiones = Int32.Parse(txtCantidadSesiones.Text);

            objTatu.Agregar();
        }

    }
}