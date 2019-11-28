using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class boleta
    {

        private int id_boleta;
        private DateTime fecha_hora;
        private int id_venta;

        public boleta()
        {
            
        }

        public boleta(int id_boleta, DateTime fecha_hora, int id_venta)
        {
            this.id_boleta = id_boleta;
            this.fecha_hora = fecha_hora;
            this.id_venta = id_venta;
        }

        public int Id_boleta { get => id_boleta; set => id_boleta = value; }
        public DateTime Fecha_hora { get => fecha_hora; set => fecha_hora = value; }
        public int Id_venta { get => id_venta; set => id_venta = value; }
    }
}
