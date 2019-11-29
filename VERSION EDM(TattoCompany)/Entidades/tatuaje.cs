using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class tatuaje
    {
        private int id_tatuaje;
        private String tamaño;
        private int cant_color;
        private int sesiones;

        public tatuaje() {
        }


        public tatuaje(int id_tatuaje, string tamaño, int cant_color, int sesiones)
        {
            this.id_tatuaje = id_tatuaje;
            this.tamaño = tamaño;
            this.cant_color = cant_color;
            this.sesiones = sesiones;
        }

        public int Id_tatuaje { get => id_tatuaje; set => id_tatuaje = value; }
        public string Tamaño { get => tamaño; set => tamaño = value; }
        public int Cant_color { get => cant_color; set => cant_color = value; }
        public int Sesiones { get => sesiones; set => sesiones = value; }
    }
}
