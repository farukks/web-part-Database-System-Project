using IstanbulDCWebPortal;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IstanbulDCWebPortal
{
    public partial class CustomerPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PageBody.Attributes.Add("bgcolor", "cadetblue");
                SqlConnection con = new SqlConnection(Constants.ConString());
                SearchServer.Visible = false;
                Button1.Visible = false;
                TableRent.Visible = false;
                Label3.Visible = false;
                Button6.Visible = false;

                try
                {
                    con.Open();
                    Label1.Text = " Welcome " + Session["FullName"];//!!!!home pagede session oluşturulması gerkiyor ++ Ssn dahil
                    string sqlstr1;
                    sqlstr1 = "select Employee.FullName" + " from Employee,Customer" + " where Customer.RepresentativeID=Employee.Ssn and Customer.Ssn='" + Session["Ssn"] + "'";
                    SqlDataAdapter da = new SqlDataAdapter(sqlstr1, con);
                    DataTable ds = new DataTable();
                    da.Fill(ds);
                    Label2.Text = " Your Representative is " + ds.Rows[0][0].ToString();
                }
                catch (Exception)
                {
                    
                }
                finally
                {
                    con.Close();
                }
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(Constants.ConString());
            TableRent.Visible = false;
            Button6.Visible = false;
            Label3.Visible = false;
            GridView1.Visible = true;
            try
            {
                using (SqlConnection con2 = new SqlConnection(Constants.ConString()))
                {
                    using (SqlCommand cmd = new SqlCommand("GetServersWithPropertiesAndPrice", con2))
                    {
                        cmd.Connection = con2;
                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            cmd.Parameters.Add("@CPU", SqlDbType.VarChar).Value = TextBox1.Text;
                            cmd.Parameters.Add("@RAM", SqlDbType.VarChar).Value = TextBox2.Text;
                            cmd.Parameters.Add("@Storage", SqlDbType.VarChar).Value = TextBox3.Text;
                            cmd.Parameters.Add("@Price", SqlDbType.VarChar).Value = TextBox4.Text;
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                            
                        }
                    }
                    con2.Close();
                }
                
            }
            catch (Exception ex)
            {
                Label2.Text = ex.Message.ToString();
            }
            finally
            {
                
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SearchServer.Visible = false;
            Button1.Visible = false;
            TableRent.Visible = false;
            Button6.Visible = false;
            Label3.Visible = false;
            GridView1.Visible = true;
            SqlConnection con = new SqlConnection(Constants.ConString());

            try
            {
                con.Open();
                DataSet ds = new DataSet();
                string sqlstr = "select * from NotRentedServer";

                SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            catch (Exception)
            {

            }
            finally
            {
                con.Close();
            }

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            SearchServer.Visible = false;
            Button1.Visible = false;
            TableRent.Visible = false;
            Button6.Visible = false;
            Label3.Visible = false;
            SqlConnection con = new SqlConnection(Constants.ConString());
            GridView1.Visible = true;
            try
            {
                con.Open();
                DataSet ds = new DataSet();
                string sqlstr = "select * from Server where Server.CustomerID=" + Session["Ssn"];

                SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            catch (Exception)
            {
                
            }
            finally {
                con.Close();
            }

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            SqlConnection con = new SqlConnection(Constants.ConString());
            SearchServer.Visible = false;
            Button1.Visible = false;
            TableRent.Visible = false;
            Button6.Visible = false;
            Label3.Visible = false;
            try
            {
                con.Open();
                DataSet ds = new DataSet();
                string sqlstr = "select b.BillID, b.OrderID, b.Amount, b.Date from Orderr o,Bill b where o.CustomerID=" + Session["Ssn"] 
                    + " and b.OrderID=o.OrderID";

                SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            catch (Exception)
            {
               
            }
            finally
            {
                con.Close();
            }
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            SearchServer.Visible = false;
            Button1.Visible = false;
            TableRent.Visible = false;
            Button6.Visible = false;
            Label3.Visible = false;
            SqlConnection con = new SqlConnection(Constants.ConString());

            try
            {

                string sqlstr = "select Top 1 Customer.FullName,Bill.Amount from Customer," +
                    "Bill,Orderr Where Bill.OrderID=Orderr.OrderID and Orderr.CustomerID="+ Session["Ssn"] +" and Customer.Ssn=Orderr.CustomerID Order By Bill.Amount desc";

                con.Open();
                SqlDataAdapter da2 = new SqlDataAdapter(sqlstr, con);
                DataTable ds = new DataTable();
                da2.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Label2.Text = ex.Message.ToString();
            }
            finally
            {
                con.Close();
            }

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SearchServer.Visible = false;
            Button1.Visible = false;
            List<String> servers = new List<string>();
            try
            {
                using (SqlConnection con2 = new SqlConnection(Constants.ConString()))
                {
                    con2.Open();
                    string sqlstr = "select NotRentedServer.ServiceTag from NotRentedServer";
                    SqlDataAdapter da2 = new SqlDataAdapter(sqlstr, con2);
                    DataTable ds = new DataTable();
                    da2.Fill(ds);

                    for (int i=0; i<ds.Rows.Count; i++) 
                    {
                        servers.Add(ds.Rows[i][0].ToString());
                    }
                    con2.Close();
                    using (SqlCommand cmd = new SqlCommand("RentsServer", con2))
                    {
                        cmd.Connection = con2;
                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            cmd.Parameters.Add("@Ssn", SqlDbType.Int).Value = Session["Ssn"];
                            cmd.Parameters.Add("@ServiceTag", SqlDbType.VarChar).Value = TextBox5.Text;

                            if (servers.Contains(TextBox5.Text)) 
                            {
                                con2.Open();
                                cmd.ExecuteNonQuery();
                                Label3.Text = "Server " + TextBox5.Text + " rented.";
                                con2.Close();
                            }
                            else 
                            {
                                Label3.Text = "An error occurred while renting a server.";
                                return;
                            }

                           
                        }
                    }
                    
                }

            }
            catch (Exception ex)
            {
                Label3.Text = "An error occurred while renting a server." + ex.Message.ToString();
            }
            finally
            {

            }
        }

        protected void OpenSearch_Click(object sender, EventArgs e) 
        {
            SearchServer.Visible = true;
            Button1.Visible = true;
            TableRent.Visible = false;
            Button6.Visible = false;
            Label3.Visible = false;
            GridView1.Visible = false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            TableRent.Visible = true;
            Button6.Visible = true;
            Label3.Visible = true;
            SearchServer.Visible = false;
            Button1.Visible = false;
            GridView1.Visible = false;
            
        }
    }
}