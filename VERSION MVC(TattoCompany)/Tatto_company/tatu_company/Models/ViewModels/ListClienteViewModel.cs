using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace tatu_company.Models.ViewModels
{
    public class ListClienteViewModel
    {
        public int id_cliente { get; set; }
        public string nombre { get; set; }
        public int edad { get; set; }
        public string telefono { get; set; }
        public string correo { get; set; }

    }
}