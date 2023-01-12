using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace IstanbulDCWebPortal
{
    public partial class SıgnIn : System.Web.UI.Page
    {
        string userInfo = "";
        string ssnInfo = "";

        SqlConnection con = new SqlConnection(Constants.ConString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public void SignIn(object sender, EventArgs e)
        {
            UserMsg.Text = "";
            try
            {

                if (LoginUserID.Text == "ADMIN" && LoginPassword.Text == "IstanbulDC")
                {
                    Session["FullName"] = userInfo;
                    UserMsg.Text = "You are being redirected to your admin page...";
                    System.Threading.Thread.Sleep(1000);
                    LoadAdminPage();
                }
                else
                {
                    string query = "select c.FullName, c.Ssn from Customer c Where c.UserID =" + LoginUserID.Text;
                    con.Open();
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(query, con);
                    DataTable dataTable = new DataTable();
                    sqlDataAdapter.Fill(dataTable);
                    userInfo = dataTable.Rows[0][0].ToString();
                    ssnInfo = dataTable.Rows[0][1].ToString();
                    UserFullName.Text = "Welcome " + userInfo;
                    UserMsg.Text = "You are being redirected to your customer page...";
                    Session["FullName"] = userInfo;
                    Session["Ssn"] = ssnInfo; 
                    System.Threading.Thread.Sleep(1000);
                    LoadCustomerPage();
                }

            }
            catch (Exception)
            {
                UserMsg.Text = "Please enter your UserID and Password correctly!";
            }

        }

        public void LoadCustomerPage()
        {
            UserMsg.Text = "";
            Response.Redirect("CustomerPanel.aspx");
        }

        public void LoadAdminPage()
        {
            UserMsg.Text = "";
            Response.Redirect("AdminPage.aspx");
        }

        public void LoadCustomerSignUp(object sender, EventArgs e)
        {
            UserMsg.Text = "";
            Response.Redirect("CustomerSignUp.aspx");
        }
    }
}