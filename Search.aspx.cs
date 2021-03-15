using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webapp
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_Click(object sender, EventArgs e)
        {
           
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BookData"].ConnectionString))
            {
                Label1.Text = "";
                Label1.CssClass = "";

                con.Open();
                string searchquery = "select * from Books where Name Like '%'+@name+'%'";
                //string searchquery = "select * from Books where Name = @name ";
                SqlCommand cmd = new SqlCommand(searchquery, con);
                cmd.Parameters.AddWithValue("@name", "%" + textboxsearch.Text.Trim() + "%");
                SqlDataReader reader = cmd.ExecuteReader();
                if(!reader.HasRows)
                {
                    Label1.Text = "No Books Found of that particular catagory. We are trying to stock up soon";
                    Label1.CssClass = "alert-danger py-3 text-center ";
                }
                GridView1.DataSource = reader;
                GridView1.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}