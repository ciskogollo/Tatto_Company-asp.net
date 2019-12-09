using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;

namespace CapaPresentacion
{
    public partial class tatuador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Tatuador objTatuador = new Tatuador();

            objTatuador.Rut = txtRut.Text;
            objTatuador.Nombres = txtNombre.Text;
            objTatuador.Apellidos = txtApellidos.Text;
            objTatuador.Fecha_nacimiento = calendarFecNac.SelectedDate;
            objTatuador.Direccion = txtDireccion.Text;
            objTatuador.Telefono = txtTel.Text;
            objTatuador.Genero = char.Parse(txtApellidos.Text);

            System.Diagnostics.Debug.WriteLine(objTatuador.ToString());
            objTatuador.Agregar();
        }
    }
}