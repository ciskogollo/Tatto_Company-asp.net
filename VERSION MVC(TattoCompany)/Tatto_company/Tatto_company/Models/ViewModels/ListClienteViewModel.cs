using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tatto_company.Models.ViewModels
{
    public class ListClienteViewModel
    {
        public int id_cliente { get; set; }
        public string nombre { get; set; }
        public int edad  { get; set; }
        public int telefono { get; set; }
        public string correo { get; set; }
    }
}