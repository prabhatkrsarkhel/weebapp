using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace webapp
{
    public partial class Login : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void LoginButton_Click(object sender, EventArgs e)
        //{

        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Data Source = (LocalDB)MSSQLLocalDB; AttachDbFilename =| DataDirectory |Registration.mdf; Integrated Security = True"].ConnectionString);
        //    con.Open();
        //    string checkuser = "select Count(*) from UserData where username = ' " + username.Text.Trim() + " ' ";
        //    Response.Write(username.Text+"    ");

        //    SqlCommand cmd = new SqlCommand(checkuser, con);
        //    Response.Write(cmd);

        //    int temp = Convert.ToInt32(cmd.ExecuteScalar());
        //    Response.Write(temp);
        //    if (temp == 1)
        //    {
        //        con.Open();
        //        string checkpswd = "select password from UserData where username ='"+username.Text+"'";
        //        SqlCommand cmdd = new SqlCommand(checkpswd, con);
        //        string pswd = cmdd.ExecuteScalar().ToString().Replace(" ","");
        //        if(pswd == password.Text )
        //        {
        //            Session["New"] = username.Text;
        //            Response.Write("Password is correct");
        //        }
        //        else
        //        {
        //            Response.Write("Password not correct");
        //        }
        //    }
        //    else
        //    {
        //        Response.Write("user name not present");
        //    }

        //    con.Close();
        //}

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.
                ConnectionStrings["RegConnectionString"].ConnectionString)) 
            {
                con.Open();
                string query = "Select COUNT(*) FROM UserData WHERE username=@username AND password=@password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", username.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if(count == 1 && username.Text.Trim().Equals("admin"))
                {
                    Session["username"] = username.Text.Trim();
                    Response.Redirect("home.aspx");
                }
                else if(count == 1)
                {
                    Session["username"] = username.Text.Trim();
                    Response.Redirect("home1.aspx");
                }
                else
                {
                    //Response.Write("Login unsuccesfull");
                    Response.Write("<script>alert('Login unsuccesful')</script>");
                    
                }
            }
        }
    }
}