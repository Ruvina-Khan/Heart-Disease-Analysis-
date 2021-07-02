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
    public partial class WebForm12 : System.Web.UI.Page
    {

        String Gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "Male";
        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "Female";
        }

        
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["user"] = TextBox10.Text;
            Response.Redirect("WebForm13.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.TransferRequest(Request.Url.AbsolutePath, false);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection("Data Source = SALMAN; Initial Catalog = prediction_system; Integrated Security = True");
            SqlCommand cmd = new SqlCommand("select Disease from TrainingData where Gender = '" + Gender + "' and ChestPain = '" + TextBox1.Text.Trim() + "' and HeartBeat between '" + TextBox6.Text.Trim() + "' and '" + TextBox6.Text.Trim() + "' + 10 and Age between '" + TextBox5.Text.Trim() + "' and '" + TextBox5.Text.Trim() + "' + 10 and ShortenBreath='" + DropDownList1.SelectedValue + "' (select * from TrainingData where FastingSugarLevel BETWEEN '" + TextBox8.Text.Trim() + "' and '" + TextBox8.Text.Trim() + "' + 10 and BP BETWEEN '" + TextBox2.Text.Trim() + "' and '" + TextBox2.Text.Trim() + "'+10 AND Cholestrol BETWEEN '" + TextBox4.Text.Trim() + "' and '" + TextBox4.Text.Trim() + "'+10)",cnn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox10.Text = dr.GetValue(1).ToString();
            }

            
            

            

            try
            {
                cnn.Open();
                Response.Write("<script>alert('hiiiii');</script>");
               
                cmd = new SqlCommand(Sqlselectquery, cnn);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox10.Text = dr["Disease"].ToString();
                    //TextBox10.Text = dr.GetValue(0).ToString();
                    

                }
                cmd.Dispose();
                cnn.Close();
                cnn.Open();
                SqlCommand cmd1 = new SqlCommand(@"INSERT INTO [dbo].[DiseaseAnalysed]([Name],[DiseaseDiagnosed]) VALUES('" + (string)Session["user"] + "','" + TextBox10.Text + "')", cnn);
                cmd1.ExecuteNonQuery();
                cnn.Close();
                //Server.TransferRequest(Request.Url.AbsolutePath, false);

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }


        }
    }
}