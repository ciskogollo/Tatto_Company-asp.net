using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class Cliente
    {
        private int id_cliente;
        private String nombre;
        private int edad;
        private String telefono;
        private String correo;

        public Cliente(int id_cliente, string nombre, int edad, string telefono, string correo)
        {
            this.id_cliente = id_cliente;
            this.nombre = nombre;
            this.edad = edad;
            this.telefono = telefono;
            this.correo = correo;
        }

        public int Id_cliente { get => id_cliente; set => id_cliente = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public int Edad { get => edad; set => edad = value; }
        public string Telefono { get => telefono; set => telefono = value; }
        public string Correo { get => correo; set => correo = value; }
    }
}
