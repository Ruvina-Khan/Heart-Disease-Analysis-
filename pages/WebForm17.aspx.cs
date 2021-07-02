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
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadData();
            }
        }
        private void LoadData()
        {
            Label1.Text = (string)Session["user"];
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string connectionstring;
            SqlConnection cnn;
            connectionstring = "Data Source=SALMAN;Initial Catalog=prediction_system;Integrated Security=True";
            cnn = new SqlConnection(connectionstring);
            if(TextBox3.Text == TextBox1.Text)
            {
                SqlCommand cmd = new SqlCommand(@"Update Users set  password_='" + TextBox3.Text + "' where P_name='" + Label1.Text + "' ", cnn);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
                Response.Redirect("WebForm4.aspx");
            }
            else
            {
                Response.Redirect("WebForm17.aspx");
            }

        }
    }
}