﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IstanbulDCWebPortal
{
    public partial class HomePage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public void LoadSignInPage(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }


        public void LoadCustomerSignUp(object sender, EventArgs e)
        {
            Response.Redirect("CustomerSignUp.aspx");

        }
    }
}