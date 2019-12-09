using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;

namespace CapaPresentacion
{
    public partial class ventas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Venta objVenta = new Venta();

            objVenta.Id_cliente = Int32.Parse(selCliente.SelectedValue);
            objVenta.Id_tatuador = Int32.Parse(selTatuador.SelectedValue);
            objVenta.Id_sucursal = Int32.Parse(selSucursal.SelectedValue); 

            System.Diagnostics.Debug.WriteLine(objVenta.ToString());
            objVenta.Agregar();
        }

    }
}