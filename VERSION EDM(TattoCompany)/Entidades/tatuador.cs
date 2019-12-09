using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class Tatuador
    {
        private int id_tatuador;
        private String rut;
        private String nombres;
        private String apellidos;
        private DateTime fecha_nacimiento;
        private String direccion;
        private String telefono;
        private char genero;

        public Tatuador()
        {
        }

        public Tatuador(int id_tatuador, string rut, string nombres, string apellidos, DateTime fecha_nacimiento, string direccion, string telefono, char genero)
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


        public bool Agregar()
        {
            try
            {
                CapaDatos.tatuador tatuad = new CapaDatos.tatuador();
                tatuad.id_tatuador = this.id_tatuador;
                tatuad.rut = this.rut;
                tatuad.nombres = this.nombres;
                tatuad.apellidos = this.apellidos;
                tatuad.fec_nac = this.fecha_nacimiento;
                tatuad.direccion = this.direccion;
                tatuad.telefono = this.telefono;
                tatuad.genero = this.genero.ToString();


                Entidades.CommonBC.tatu_CompanyEntities.tatuador.Add(tatuad);
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
                CapaDatos.tatuador tatuad = Entidades.CommonBC.tatu_CompanyEntities.tatuador.First(suck => suck.id_tatuador == this.id_tatuador);
                this.id_tatuador = tatuad.id_tatuador;
                this.rut = tatuad.rut;

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
                CapaDatos.tatuador tatuad = new CapaDatos.tatuador();
                tatuad.id_tatuador = this.id_tatuador;
                tatuad.rut = this.rut;
                tatuad.nombres = this.nombres;
                tatuad.apellidos = this.apellidos;
                tatuad.fec_nac = this.fecha_nacimiento;
                tatuad.direccion = this.direccion;
                tatuad.telefono = this.telefono;
                tatuad.genero = this.genero.ToString();

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
                CapaDatos.tatuador tatuad = new CapaDatos.tatuador();
                Entidades.CommonBC.tatu_CompanyEntities.tatuador.Remove(tatuad);
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