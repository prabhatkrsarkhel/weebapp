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
    public partial class Addbooks : System.Web.UI.Page
    {
        int temp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BookData"].ConnectionString))
                {
                    con.Open();
                    string checkbook = "Select COUNT(*) FROM Books WHERE Name = @bookname";
                    SqlCommand cmd = new SqlCommand(checkbook, con);
                    cmd.Parameters.AddWithValue("@bookname", bookname.Text.Trim());
                    temp = Convert.ToInt32(cmd.ExecuteScalar());
                }
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if(temp==1)
            {
                Response.Write("Duplicate user found");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BookData"].ConnectionString);
                    con.Open();
                    string insertbook = "insert into Books (Name,Author,Publisher,Quantity) values (@bookname,@author,@publisher,@quantity)";
                    SqlCommand cmd = new SqlCommand(insertbook, con);
                    cmd.Parameters.AddWithValue("@bookname", bookname.Text.Trim());
                    cmd.Parameters.AddWithValue("@author", author.Text.Trim());
                    cmd.Parameters.AddWithValue("@publisher", publisher.Text.Trim());
                    cmd.Parameters.AddWithValue("@quantity", quantity.Text.Trim());
                    cmd.ExecuteNonQuery();
                    Response.Redirect("BooksManager.aspx");
                }
                catch(Exception ex)
                {
                    Response.Write("Error :" + ex.ToString());

                }
            }
        }
    }
}