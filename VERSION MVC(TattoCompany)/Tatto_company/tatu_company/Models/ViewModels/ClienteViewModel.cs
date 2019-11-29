using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace tatu_company.Models.ViewModels
{
    public class ClienteViewModel
    {
        public int id_cliente { get; set; }
        [Required]
        [StringLength(50)]
        [Display(Name ="nombre")]
        public string nombre { get; set; }
        [Required]
        [Display(Name = "edad")]
        public int edad { get; set; }
        [Required]
        [Display(Name = "telefono")]
        public string telefono { get; set; }
        [Required]
        [StringLength(50)]
        [EmailAddress]
        [Display(Name = "correo")]
        public string correo { get; set; }

    }
}