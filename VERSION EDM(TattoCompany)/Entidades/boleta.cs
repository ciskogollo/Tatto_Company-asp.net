using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class Boleta
    {

        private int id_boleta;
        private DateTime fecha_hora;
        private int id_venta;

        public Boleta()
        {

        }

        public Boleta(int id_boleta, DateTime fecha_hora, int id_venta)
        {
            this.id_boleta = id_boleta;
            this.fecha_hora = fecha_hora;
            this.id_venta = id_venta;
        }

        public int Id_boleta { get => id_boleta; set => id_boleta = value; }
        public DateTime Fecha_hora { get => fecha_hora; set => fecha_hora = value; }
        public int Id_venta { get => id_venta; set => id_venta = value; }


        public bool Agregar()
        {
            try
            {
                CapaDatos.boleta bol = new CapaDatos.boleta();
                bol.id_boleta = this.id_boleta;
                bol.fecha_hora = this.fecha_hora;
                bol.id_venta = this.id_venta;

                Entidades.CommonBC.tatu_CompanyEntities.boleta.Add(bol);
                Entidades.CommonBC.tatu_CompanyEntities.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }


        public bool Buscar()
        {
            try
            {
                CapaDatos.boleta bol = Entidades.CommonBC.tatu_CompanyEntities.boleta.First(suck => suck.id_boleta == this.id_boleta);
                this.id_boleta = bol.id_boleta;
                this.fecha_hora = bol.fecha_hora;
                this.id_venta = bol.id_venta;

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool Update()
        {
            try
            {
                CapaDatos.boleta bol = new CapaDatos.boleta();
                bol.id_boleta = this.id_boleta;
                bol.fecha_hora = this.fecha_hora;
                bol.id_venta = this.id_venta;

                Entidades.CommonBC.tatu_CompanyEntities.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool Delete()
        {
            try
            {
                CapaDatos.boleta bol = new CapaDatos.boleta();
                Entidades.CommonBC.tatu_CompanyEntities.boleta.Remove(bol);
                Entidades.CommonBC.tatu_CompanyEntities.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }

    }
}