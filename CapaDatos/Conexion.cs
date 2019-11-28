using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace CapaDatos
{
    class Conexion
    {
        public Conexion() { }

        public string GetConexion()
        {
            string strConnect = ConfigurationManager.ConnectionStrings["company_tattu"].ConnectionString;
            if(object.ReferenceEquals(strConnect, string.Empty))
            {
                return string.Empty;
            }
            else
            {
                return strConnect;
            }
                
        }
    }
}
