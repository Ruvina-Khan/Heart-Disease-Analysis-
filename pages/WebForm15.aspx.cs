using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace prediction__system
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection("Data Source = SALMAN; Initial Catalog = prediction_system; Integrated Security = True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[UserFeedback]([Name],[email],[Feedback]) VALUES('" + (string)Session["user"] + "','" + TextBox1.Text + "','" + TextBox8.Text + "')", cnn);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            Server.TransferRequest(Request.Url.AbsolutePath, false);
        }
    }
}