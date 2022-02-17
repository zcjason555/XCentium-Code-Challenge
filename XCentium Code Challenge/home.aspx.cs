using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace XCentium_Code_Challenge
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] == null) { Response.Redirect("Login.aspx"); }

            using (SqlConnection sqlcon = new SqlConnection(@"Data Source=(local)\JASONSQL;initial Catalog=LoginDB;Integrated Security=True;"))
            {
                sqlcon.Open();

                SqlCommand sqlcmd = new SqlCommand("select Name from logindata where Username='" + Session["UserName"] + "'", sqlcon);
                SqlDataAdapter da = new SqlDataAdapter(sqlcmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                lblUserDetails.Text =  ds.Tables[0].Rows[0]["Name"].ToString();
            }
               

        }

        protected void btnLouout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}