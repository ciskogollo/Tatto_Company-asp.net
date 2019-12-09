using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class Tatuaje
    {
        private int id_tatuaje;
        private String tamano;
        private int cant_color;
        private int sesiones;

        public Tatuaje()
        {
        }


        public Tatuaje(int id_tatuaje, string tamano, int cant_color, int sesiones)
        {
            this.id_tatuaje = id_tatuaje;
            this.tamano = tamano;
            this.cant_color = cant_color;
            this.sesiones = sesiones;
        }

        public int Id_tatuaje { get => id_tatuaje; set => id_tatuaje = value; }
        public string Tamaño { get => tamano; set => tamano = value; }
        public int Cant_color { get => cant_color; set => cant_color = value; }
        public int Sesiones { get => sesiones; set => sesiones = value; }

        public bool Agregar()
        {
            try
            {
                CapaDatos.tatuaje tatuaj = new CapaDatos.tatuaje();
                tatuaj.id_tatuaje = this.id_tatuaje;
                tatuaj.tamano = this.tamano;
                tatuaj.cant_color = this.cant_color.ToString(); //si esta huea no la dejas to.String la mierda pide parsearlo #TURCOCULIORENUNCIA 
                tatuaj.sesiones = this.sesiones;

                Entidades.CommonBC.tatu_CompanyEntities.tatuaje.Add(tatuaj);
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
                CapaDatos.tatuaje tatuaj = Entidades.CommonBC.tatu_CompanyEntities.tatuaje.First(suck => suck.id_tatuaje == this.id_tatuaje);
                this.id_tatuaje = tatuaj.id_tatuaje;
                this.tamano = tatuaj.tamano;

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
                CapaDatos.tatuaje tatuaj = new CapaDatos.tatuaje();
                tatuaj.id_tatuaje = this.id_tatuaje;
                tatuaj.tamano = this.tamano;
                tatuaj.cant_color = this.cant_color.ToString();
                tatuaj.sesiones = this.sesiones;

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
                CapaDatos.tatuaje tatuaj = new CapaDatos.tatuaje();
                Entidades.CommonBC.tatu_CompanyEntities.tatuaje.Remove(tatuaj);
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