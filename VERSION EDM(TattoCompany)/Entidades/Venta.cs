using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class Venta
    {
        private int id_venta;
        private int id_cliente;
        private int id_tatuador;
        private int id_sucursal;
        private int id_tatuaje;
        private DateTime fecha_hora;
        private int valor_total;

        public Venta()
        {
        }

        public Venta(int id_venta, int id_cliente, int id_tatuador, int id_sucursal, int id_tatuaje, DateTime fecha_hora, int valor_total)
        {
            this.id_venta = id_venta;
            this.id_cliente = id_cliente;
            this.id_tatuador = id_tatuador;
            this.id_sucursal = id_sucursal;
            this.id_tatuaje = id_tatuaje;
            this.fecha_hora = fecha_hora;
            this.valor_total = valor_total;
        }

        public int Id_venta { get => id_venta; set => id_venta = value; }
        public int Id_cliente { get => id_cliente; set => id_cliente = value; }
        public int Id_tatuador { get => id_tatuador; set => id_tatuador = value; }
        public int Id_sucursal { get => id_sucursal; set => id_sucursal = value; }
        public int Id_tatuaje { get => id_tatuaje; set => id_tatuaje = value; }
        public DateTime Fecha_hora { get => fecha_hora; set => fecha_hora = value; }
        public int Valor_total { get => valor_total; set => valor_total = value; }

        public bool Agregar()
        {
            try
            {
                CapaDatos.venta vents = new CapaDatos.venta();
                vents.id_venta = this.id_venta;
                Entidades.CommonBC.tatu_CompanyEntities.venta.Add(vents);
                Entidades.CommonBC.tatu_CompanyEntities.SaveChanges();

                return true;
            }catch(Exception ex)
            {
                return false;
            }
        }

        public bool Buscar()
        {
            try
            {
                CapaDatos.venta vents = Entidades.CommonBC.tatu_CompanyEntities.venta.First(suck => suck.id_venta == this.id_venta);
                return true;
            }
        }
    }
}
