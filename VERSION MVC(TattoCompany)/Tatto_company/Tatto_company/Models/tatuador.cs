//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Tatto_company.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tatuador
    {
        public int id_tatuador { get; set; }
        public string rut { get; set; }
        public string nombres { get; set; }
        public string apellidos { get; set; }
        public Nullable<System.DateTime> fec_nac { get; set; }
        public string direccion { get; set; }
        public string telefono { get; set; }
        public string genero { get; set; }
    }
}
