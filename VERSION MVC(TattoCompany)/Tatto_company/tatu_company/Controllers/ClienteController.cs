using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using tatu_company.Models;
using tatu_company.Models.ViewModels;

namespace tatu_company.Controllers
{
    public class ClienteController : Controller
    {
        // GET: Cliente
        public ActionResult Index()
        {

            List<ListClienteViewModel> lst;
            using (tatu_companyEntities db = new tatu_companyEntities())
            {
                lst = (from d in db.cliente
                       select new ListClienteViewModel
                       {

                           id_cliente = d.id_cliente,
                           nombre = d.nombre,
                           edad = d.edad,
                           telefono = d.telefono,
                           correo = d.correo

                       }).ToList();

            
                return View();
            }

            [HttpPost]
            public ActionResult Nuevo()
            {
                return View();
            }


            [HttpPost]
            public ActionResult Nuevo(ClienteViewModel model)
            {
                try
                {
                    if (ModelState.IsValid)
                    {
                        using (tatu_companyEntities db = new tatu_companyEntities())
                        {
                            var oCliente = new cliente();
                            oCliente.correo = model.correo;
                            oCliente.edad = model.edad;
                            oCliente.telefono = model.telefono;
                            oCliente.nombre = model.nombre;

                            db.cliente.Add(oCliente);
                            db.SaveChanges();
                        }
                    }

                    return Redirect("Cliente/");

                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message); 
                    throw;
                }
            }
        }
    }
}