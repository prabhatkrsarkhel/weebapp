using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace webapp
{
    public partial class registration : System.Web.UI.Page
    {
        int temp=0;

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

        //protected int dupuser_check(object sender, EventArgs e)
        //{
        //    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString))
        //    {
        //        con.Open();
        //        string checkuser = "Select COUNT(*) FROM UserData WHERE username = @username ";
        //        SqlCommand cmd = new SqlCommand(checkuser, con);
        //        cmd.Parameters.AddWithValue("@username", username.Text.Trim());
        //        int temp = Convert.ToInt32(cmd.ExecuteScalar());
        //        Response.Write(temp);
        //        return temp;
                
        //    }
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if(temp == 1)
            {
                Response.Write("Duplicate User Present");
            }
            else
            {
                try
                {
                    Guid newguid = Guid.NewGuid();


                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                    con.Open();
                    string insertquery = "insert into UserData (Id,username,email,password,country) values (@id,@uname,@email,@password,@country)";
                    SqlCommand cmd = new SqlCommand(insertquery, con);
                    cmd.Parameters.AddWithValue("@id", newguid.ToString());
                    cmd.Parameters.AddWithValue("@uname", username.Text);
                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Parameters.AddWithValue("@password", pswd.Text);
                    cmd.Parameters.AddWithValue("@country", country.SelectedItem.ToString());
                    cmd.ExecuteNonQuery();
                    Response.Write("Registration is successful");
                    Response.Redirect("Login.aspx");
                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error :" + ex.ToString());
                }

            }
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            clear();
        }

        public void clear()
        {
            username.Text = "";
            email.Text = "";
            pswd.Text = "";
            con_pswd.Text = "";
            country.SelectedIndex=0;
        }
    }
}