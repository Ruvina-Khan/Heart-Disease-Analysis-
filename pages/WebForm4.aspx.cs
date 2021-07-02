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
using System.Net;
using System.Net.Mail;

namespace prediction__system
{

    public partial class WebForm4 : System.Web.UI.Page
    {

        string users;
        int check;
        string add;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme()", true); 


        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
        protected void Button7_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Write("<script>alert('UPDATED SUCCESSFULLY LOGIN NOW') </script>"); 
         try
            {
                string connectionstring;
                SqlConnection cnn;
                connectionstring = "Data Source=.\SQLEXPRESS;Initial Catalog=finaltest;Integrated Security=True";
                cnn = new SqlConnection(connectionstring);
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Users]([P_name],[email],[password_],[User_type],[contact_number]) VALUES('" + TextBox1.Text + "','" + TextBox8.Text + "','" + TextBox2.Text + "', '" + users + "', '" + TextBox5.Text + "')", cnn);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
                //ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme()", true);
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Test Message');", true);
                Response.Redirect("WebForm4.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            users = "Patient";
            check = 1;
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            users = "Admin";
            check = 0;


        }

        protected void Button3_Click(object sender, EventArgs e)
        {


            string connectionstring;
            SqlConnection cnn;
            connectionstring = "Data Source=.\SQLEXPRESS;Initial Catalog=finaltest;Integrated Security=True";
            cnn = new SqlConnection(connectionstring);
            SqlDataAdapter da = new SqlDataAdapter(@"select COUNT(*) from dbo.Users where P_name= '" + TextBox3.Text.Trim() + "' and password_= '" + TextBox4.Text.Trim() + "' ", cnn);
            String selectSQL = "SELECT User_type FROM Users WHERE P_name = '" + TextBox3.Text.Trim() + "' AND password_ = '" + TextBox4.Text.Trim() + "'";
            SqlDataAdapter da1 = new SqlDataAdapter(selectSQL,cnn);
            DataTable dt = new DataTable();
            da1.Fill(dt);
            cnn.Open();
            DataTable ds = new DataTable();
            da.Fill(ds);
            if (ds.Rows.Count == 1 )
            {
                /* if (add=="Admin") {
                     Session["user"] = TextBox3.Text;
                     Response.Redirect("WebForm5.aspx");
                 }
                 else 
                 {
                     Session["user"] = TextBox3.Text;
                     Response.Redirect("WebForm11.aspx");

                 }
                */
                Console.WriteLine(selectSQL);
                if (dt.Rows[0][0].ToString()== "Patient")
                {
                    Session["user"] = TextBox3.Text;
                    Response.Redirect("WebForm11.aspx");

                }
                else
                {
                    Session["user"] = TextBox3.Text;
                    Response.Redirect("WebForm5.aspx");
                }
            }
            else
            {
                Response.Write(" < script>alert('Invalid Credentials.Enter correct Details ')</script>");
            }

            cnn.Close();

        }
        
    }
}