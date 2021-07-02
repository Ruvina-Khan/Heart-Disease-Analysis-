using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prediction__system
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Label2.Text = "WELCOME" + " " + " " + (string)Session["user"];
            }
            else
            {
                Label2.Text = "SESSION IS NOT CREATED YET.....!!";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm12.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm14.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm15.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("WebForm1.aspx");
        }
    }
}