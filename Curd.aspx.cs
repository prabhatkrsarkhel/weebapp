using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webapp
{
    public partial class Curd : System.Web.UI.Page
    {
        int temp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString))
                {
                    con.Open();
                    string checkuser = "Select COUNT(*) FROM UserData WHERE username = @username ";
                    SqlCommand cmd = new SqlCommand(checkuser, con);
                    cmd.Parameters.AddWithValue("@username", username.Text.Trim());
                    temp = Convert.ToInt32(cmd.ExecuteScalar());
                    //Response.Write(temp);
                    //if (temp == 1)
                    //{
                    //    Response.Write("User alredy exists");
                    //}
                    //con.Close();
                }

            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con.Open();
            string insertquery = "update UserData set email = @email where username = @uname";
            SqlCommand cmd = new SqlCommand(insertquery, con);
            cmd.Parameters.AddWithValue("@uname", username.Text.Trim());
            cmd.Parameters.AddWithValue("@email", email.Text.Trim());
            cmd.ExecuteNonQuery();
            Response.Write("update is successful");
            Response.Redirect("Manager.aspx");
            con.Close();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con.Open();
            string insertquery = "delete from UserData where username = @uname";
            SqlCommand cmd = new SqlCommand(insertquery, con);
            cmd.Parameters.AddWithValue("@uname", username.Text.Trim());
            cmd.ExecuteNonQuery();
            Response.Write("update is successful");
            Response.Redirect("Manager.aspx");
            con.Close();
        }
        

    }
}