using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using CapaEntidades;

namespace CapaDatos
{
    public class VentasDatos
    {
        SqlConnection conexion;
        Venta objVenta = new Venta();
        Conexion cnx = new Conexion();
        SqlCommand CMD = new SqlCommand();
        bool exito;

        public VentasDatos()
        {
            conexion = new SqlConnection(cnx.GetConexion());
        }
    }
}
