using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IstanbulDCWebPortal
{
    public class Constants
    {
        private static string conString = System.Configuration.ConfigurationManager.ConnectionStrings["DbConnectionString"].ConnectionString;

        public static string ConString()
        {
            return conString;
        }
    }
}