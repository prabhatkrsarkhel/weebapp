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
    public partial class Return : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BookData"].ConnectionString))
            {

                con.Open();
                string searchquery = "update [Books] SET [Quantity] = [Quantity]+1 where id=@id";
                ////string searchquery = "select * from Books where Name = @name ";
                SqlCommand cmd = new SqlCommand(searchquery, con);
                cmd.Parameters.AddWithValue("@id", textboxsearch.Text.Trim());
                int count = cmd.ExecuteNonQuery();
                if (count > 0)
                {
                    Label1.Text = "You have successfully returned this book!!!!!";
                    Label1.CssClass = "alert-success py-3 text-center ";
                }
                else
                {
                    Label1.Text = "No Books Found of that particular catagory. We are trying to stock up soon";
                    Label1.CssClass = "alert-danger py-3 text-center ";
                }



            }
        }
    
    }
}