using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class tatuador
    {
        private int id_tatuador;
        private String rut;
        private String nombres;
        private String apellidos;
        private DateTime fecha_nacimiento;
        private String direccion;
        private String telefono;
        private char genero;

        public tatuador(){
        }

        public tatuador(int id_tatuador, string rut, string nombres, string apellidos, DateTime fecha_nacimiento, string direccion, string telefono, char genero)
        {
            this.Id_tatuador = id_tatuador;
            this.Rut = rut;
            this.Nombres = nombres;
            this.Apellidos = apellidos;
            this.Fecha_nacimiento = fecha_nacimiento;
            this.Direccion = direccion;
            this.Telefono = telefono;
            this.Genero = genero;
        }

        public int Id_tatuador { get => id_tatuador; set => id_tatuador = value; }
        public string Rut { get => rut; set => rut = value; }
        public string Nombres { get => nombres; set => nombres = value; }
        public string Apellidos { get => apellidos; set => apellidos = value; }
        public DateTime Fecha_nacimiento { get => fecha_nacimiento; set => fecha_nacimiento = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string Telefono { get => telefono; set => telefono = value; }
        public char Genero { get => genero; set => genero = value; }
    }

}
