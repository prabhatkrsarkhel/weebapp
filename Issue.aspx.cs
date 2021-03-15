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
    public partial class Issue : System.Web.UI.Page
    {
        int temp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(IsPostBack)
            //{
            //    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BookData"].ConnectionString))
            //    {

            //        con.Open();
            //        string searchquery = "select * from Books where Id = @id";
            //        //string searchquery = "select * from Books where Name = @name ";
            //        SqlCommand cmd = new SqlCommand(searchquery, con);
            //        cmd.Parameters.AddWithValue("@id", textboxsearch.Text.Trim());
            //        SqlDataReader reader = cmd.ExecuteReader();
            //        if (reader.Read())
            //            temp = 1;
            //        GridView1.DataSource = reader;
            //        GridView1.DataBind();

            //    }
            //}
            //using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BookData"].ConnectionString))
            //{

            //    con.Open();
            //    string searchquery = "select * from Books where Id = @id";
            //    //string searchquery = "select * from Books where Name = @name ";
            //    SqlCommand cmd = new SqlCommand(searchquery, con);
            //    cmd.Parameters.AddWithValue("@id", textboxsearch.Text.Trim());
            //    SqlDataReader reader = cmd.ExecuteReader();
            //    if (reader.Read())
            //        temp = 1;
            //    //GridView1.DataSource = reader;
            //    //GridView1.DataBind();

            //}
            
        }

        protected void button_Click(object sender, EventArgs e)
        {
            //if(temp == 1)
            //{

            //}
            //else
            //{
            //    Response.Write("No books available");
            //}
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BookData"].ConnectionString))
            {

                con.Open();
                string searchquery = "update [Books] SET [Quantity] = [Quantity]-1 where id=@id";
                ////string searchquery = "select * from Books where Name = @name ";
                SqlCommand cmd = new SqlCommand(searchquery, con);
                cmd.Parameters.AddWithValue("@id", textboxsearch.Text.Trim());
                int count =cmd.ExecuteNonQuery();
                if(count>0)
                {
                    Label1.Text = "You have successfully issued this book. Enjoy Reading!!!!!";
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
