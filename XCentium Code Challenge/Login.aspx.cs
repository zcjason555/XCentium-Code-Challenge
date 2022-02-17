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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void ButLogin_Click()
        {
            
        }

        protected void ButLogin_Click1(object sender, EventArgs e)
        {

            using (SqlConnection sqlcon = new SqlConnection(@"Data Source=(local)\JASONSQL;initial Catalog=LoginDB;Integrated Security=True;"))
            {
                sqlcon.Open();
                string query = "SELECT COUNT(1) FROM logindata WHERE username=@username AND password=@password";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                
                sqlcmd.Parameters.AddWithValue("@username", TxtUsername.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@password", Txtpwd.Text.Trim());
                int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = TxtUsername.Text.Trim();
                    Response.Redirect("home.aspx");
                }
                else
                {
                    lblErrorMessage.Visible = true;
                }
            }
        }
    }
}