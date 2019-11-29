using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidades;
using System.Data.Entity;

namespace CapaNegocio
{
    public class VentaContext : DbContext
    {
        public VentaContext() : base("CapaNegocio") { }
        public DbSet<Venta> Ventas { get; set; }
    }
}
