using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace Entidades
{
    public class CommonBC
    {
        private static tatu_companyEntities _tatu_CompanyEntities;
        public static tatu_companyEntities tatu_CompanyEntities
        {
            get
            {
                if(_tatu_CompanyEntities == null)
                {
                    _tatu_CompanyEntities = new tatu_companyEntities();
                }
                return (_tatu_CompanyEntities);
            }
        }

        public CommonBC()
        {

        }
    }
}
