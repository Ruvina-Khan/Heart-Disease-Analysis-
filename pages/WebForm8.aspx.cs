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
    public partial class WebForm8 : System.Web.UI.Page
    {
        string Gender;
        string breath;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionstring;
            SqlConnection cnn;
            connectionstring = "Data Source=SALMAN;Initial Catalog=prediction_system;Integrated Security=True";
            cnn = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[TrainingData]([Disease],[Age],[Gender],[ChestPain],[FastingSugarLevel],[BP],[Cholestrol],[HeartBeat],[ShortenBreath]) VALUES('" + TextBox1.Text + "','" + TextBox8.Text + "','" + Gender + "', '" + TextBox2.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + TextBox3.Text + "','" + TextBox6.Text + "', ' "+DropDownList1.SelectedValue +" ')", cnn);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            Response.Write("<script>alert('user is registered successfully')</script>");
            Server.TransferRequest(Request.Url.AbsolutePath, false);
        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "Female";
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "Male";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.TransferRequest(Request.Url.AbsolutePath, false);
        }
    }
}