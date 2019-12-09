using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;

namespace CapaPresentacion
{
    public partial class cliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Cliente objCliente = new Cliente();

            objCliente.Nombre = txtNombre.Text;
            objCliente.Edad = Int32.Parse(txtEdad.Text);
            objCliente.Telefono = txtTel.Text;
            objCliente.Correo = txtCorreo.Text;

            System.Diagnostics.Debug.WriteLine(objCliente.ToString());
            objCliente.Agregar();
        }
    }
}