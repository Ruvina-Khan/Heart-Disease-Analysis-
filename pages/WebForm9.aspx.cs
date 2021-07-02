using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace prediction__system
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        string Gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "Female";
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "Male";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionstring;
            SqlConnection cnn;
            connectionstring = "Data Source=SALMAN;Initial Catalog=prediction_system;Integrated Security=True";
            cnn = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Doctor]([D_name],[Address],[Ph_Number],[Gender],[Specialist],[email]) VALUES('" + TextBox1.Text + "','" + TextBox8.Text + "','" + TextBox2.Text + "', '" + Gender + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "')", cnn);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            Response.Write("<script>alert('user is registered successfully')</script>");
            Server.TransferRequest(Request.Url.AbsolutePath, false);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.TransferRequest(Request.Url.AbsolutePath, false);
        }
    }
}