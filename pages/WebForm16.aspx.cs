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
    public partial class WebForm16 : System.Web.UI.Page
    {
        string a;
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string connectionstring;
            SqlConnection cnn;
            connectionstring = "Data Source=SALMAN;Initial Catalog=prediction_system;Integrated Security=True";
            cnn = new SqlConnection(connectionstring);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("select P_name from Users where email='"+ TextBox3 .Text + "'", cnn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Session["users"] = dt.Rows[0][0].ToString();
                Response.Redirect("WebForm17.aspx");
                

            }
            else
            {
                Response.Redirect("WebForm16.aspx");
                Response.Write(" < script>alert('Please Fill a valid Email ID')</script>");


            }
            cnn.Close();
            
        }
    }
}