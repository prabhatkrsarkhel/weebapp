using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webapp
{
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!=null)
            {
                Label1_welcome.Text += Session["username"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");

            }
        }

        protected void Logout_Button_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}