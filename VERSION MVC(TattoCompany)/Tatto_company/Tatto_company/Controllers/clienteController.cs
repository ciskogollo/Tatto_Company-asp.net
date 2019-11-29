using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Mvc;
using Tatto_company.Models;
using Tatto_company.Models.ViewModels;




namespace Tatto_company.Controllers
{
    public class clienteController : Controller
    {

        // Get cliente 

        public ActionResult Index()
        {
            List<ListClienteViewModel> lst;
            using (CrudEntities db = new CrudEntities())
            {
                lst = (from d in db.cliente
                       select new ListClienteViewModel
                       {
                         id_cliente = d.id_cliente,
                          nombre = d.nombre,
                          edad =d.edad,


                        })





            }
            return View(lst);

        }

    internal class CrudEntities
    {
        public CrudEntities()
        {
        }
    }
}
}
 