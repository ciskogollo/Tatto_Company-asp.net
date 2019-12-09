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

        public Cliente()
        {
        }

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

        public bool Agregar()
        {
            try
            {
                CapaDatos.cliente client = new CapaDatos.cliente();
                client.id_cliente = this.id_cliente;
                client.nombre = this.nombre;
                client.edad = this.edad;
                client.telefono = this.telefono;
                client.correo = this.correo;

                Entidades.CommonBC.tatu_CompanyEntities.cliente.Add(client);
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
                CapaDatos.cliente client = Entidades.CommonBC.tatu_CompanyEntities.cliente.First(suck => suck.id_cliente == this.id_cliente);
                this.id_cliente = client.id_cliente;
                this.nombre = client.nombre;
                this.edad = client.edad;
                this.telefono = client.telefono;
                this.correo = client.correo;

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
                CapaDatos.cliente client = new CapaDatos.cliente();
                client.id_cliente = this.id_cliente;
                client.nombre = this.nombre;
                client.edad = this.edad;
                client.telefono = this.telefono;
                client.correo = this.correo;


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
                CapaDatos.cliente client = new CapaDatos.cliente();
                Entidades.CommonBC.tatu_CompanyEntities.cliente.Remove(client);
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