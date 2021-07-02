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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string users;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionstring;
            SqlConnection cnn;
            connectionstring = "Data Source=SALMAN;Initial Catalog=prediction_system;Integrated Security=True";
            cnn = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Users]([P_name],[email],[password_],[User_type],[contact number]) VALUES('" + TextBox1.Text + "','" + TextBox8.Text + "','" + TextBox2.Text + "', '" + users + "', '" + TextBox5.Text + "')", cnn);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            Response.Write("<script>alert('user is registered successfully')</script>");
        
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            users = "Admin";
        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {
            users = "Patient";
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
           
        }
    }
}