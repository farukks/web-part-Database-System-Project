using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IstanbulDCWebPortal
{
    public partial class CustomerSignUp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(Constants.ConString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void AddCustomer(object sender, EventArgs e)
        {
            SignUpMsg.Text = "";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "exec createCustomer " + Ssn.Text + ",'" + FirstName.Text + "','" + LastName.Text + "','" + Gender.Text + "','" + Birthdate.Text + "'," + PhoneNumber.Text + ",'" + Mail.Text + "','" + UserPassword.Text + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                System.Threading.Thread.Sleep(1000);
                printCustomerInfo();
            }
            catch (Exception ex)
            {
                SignUpMsg.Text = "Please fill in the fields as appropriate!";
            }

            finally
            {
                con.Close();
            }


        }

        public void printCustomerInfo()
        {
            SignUpMsg.Text = "";
            con.Open();
            SqlDataAdapter query = new SqlDataAdapter("select c.UserID,c.RepresentativeID,e.FullName from Customer c inner join Employee e on c.RepresentativeID=e.Ssn Where c.Ssn=" + Ssn.Text, con);

            DataTable dataTable = new DataTable();

            query.Fill(dataTable);

            UserProperties.DataSource = dataTable;

            UserProperties.DataBind();
            con.Close();

        }

        public void LoadSignIn(object sender, EventArgs e)
        {
            SignUpMsg.Text = "";
            System.Threading.Thread.Sleep(3000);
            Response.Redirect("SignIn.aspx");
        }
    }



}