using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IstanbulDCWebPortal
{
    public partial class AdminPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(Constants.ConString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Tables.Visible = false;
                AddServerTable.Visible = false;
                AddServerButton.Visible = false;
                PageBody.Attributes.Add("bgcolor", "cadetblue");
            }
        }

        protected void ButtonListServer_Click(object sender, EventArgs e)
        {
            AddServerStatuLabel.Text = "";
            GetAllServerList();
        }
        protected void AddServerButton_Click(object sender, EventArgs e) 
        {
            AddServerStatuLabel.Text = "";
            try
            {
                using (SqlCommand cmd = new SqlCommand("CreateServer", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@ServiceTag", SqlDbType.VarChar).Value = ServiceTagText.Text;
                    cmd.Parameters.Add("@Model", SqlDbType.VarChar).Value = ModelText.Text;
                    cmd.Parameters.Add("@CPU", SqlDbType.VarChar).Value = CPUText.Text;
                    cmd.Parameters.Add("@RAM", SqlDbType.VarChar).Value = RAMText.Text;
                    cmd.Parameters.Add("@Storage", SqlDbType.VarChar).Value = StorageText.Text;
                    cmd.Parameters.Add("@Price", SqlDbType.VarChar).Value = PriceText.Text;
                    cmd.Parameters.Add("@CabinID", SqlDbType.VarChar).Value = CabinIDText.Text;

                    con.Open();
                    cmd.ExecuteNonQuery();
                    
                }
            }
            catch (Exception ex)
            {
                AddServerStatuLabel.Text = "Please fill in the fields as appropriate!";
            }
            finally {
                con.Close();
            }
            
        }

        protected void ButtonAddServer_Click(object sender, EventArgs e) 
        {
            AddServerStatuLabel.Text = "";
            GridViewServerList.Visible = false;
            AddServerTable.Visible = true;
            AddServerButton.Visible = true;
            Tables.Visible = false;
        }
        public void GetAllServerList()
        {
            AddServerStatuLabel.Text = "";
            Tables.Visible = true;
            AddServerTable.Visible = false;
            AddServerButton.Visible = false;
            GridViewServerList.Visible = true;
            try
            {
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter("select * from Server", con);

                DataTable ds = new DataTable();

                da.Fill(ds);

                GridViewServerList.DataSource = ds;

                GridViewServerList.DataBind();

                LabelMessage.Text = "";
            }
            catch (Exception ex)
            {
                LabelMessage.Text = ex.Message.ToString();
            }

            finally
            {
                con.Close();

            }
        }

        public void ButtonGetEmployeeInDept_Click(object sender, EventArgs e)
        {
            AddServerStatuLabel.Text = "";
            Tables.Visible = true;
            AddServerTable.Visible = false;
            AddServerButton.Visible = false;
            GridViewServerList.Visible = true;
            try
            {
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter("select * from NumberOfEmployeeInDepartments", con);

                DataTable ds = new DataTable();

                da.Fill(ds);

                GridViewServerList.DataSource = ds;

                GridViewServerList.DataBind();

                LabelMessage.Text = "";
            }
            catch (Exception ex)
            {
                LabelMessage.Text = ex.Message.ToString();
            }

            finally
            {
                con.Close();

            }
        }

        public void CheckCabin_Click(object sender, EventArgs e)
        {
            AddServerStatuLabel.Text = "";
            Tables.Visible = true;
            AddServerTable.Visible = false;
            AddServerButton.Visible = false;
            GridViewServerList.Visible = true;
            try
            {
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter("select * from CabinNoOfEmptyRail", con);

                DataTable ds = new DataTable();

                da.Fill(ds);

                GridViewServerList.DataSource = ds;

                GridViewServerList.DataBind();

                LabelMessage.Text = "";
            }
            catch (Exception ex)
            {
                LabelMessage.Text = ex.Message.ToString();
            }

            finally
            {
                con.Close();

            }
        }

        public void ButtonCustomerSpend_Click(object sender, EventArgs e)
        {
            AddServerStatuLabel.Text = "";
            Tables.Visible = true;
            AddServerTable.Visible = false;
            AddServerButton.Visible = false;
            GridViewServerList.Visible = true;
            try
            {
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter("select * from TotalAmountCustomer", con);

                DataTable ds = new DataTable();

                da.Fill(ds);

                GridViewServerList.DataSource = ds;

                GridViewServerList.DataBind();

                LabelMessage.Text = "";
            }
            catch (Exception ex)
            {
                LabelMessage.Text = ex.Message.ToString();
            }

            finally
            {
                con.Close();

            }
        }
        
    }
}