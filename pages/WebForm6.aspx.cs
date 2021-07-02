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
using System.Drawing;

namespace prediction__system
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("Data Source = SALMAN; Initial Catalog = prediction_system; Integrated Security = True");
               
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                LoadData();
            }

        }
        private void LoadData()
        {
            var adapter = new SqlDataAdapter("Select DataID,Disease,Age,Gender,ChestPain,FastingSugarLevel,BP,Cholestrol from TrainingData", cnn);
            var ds = new DataSet();
            adapter.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            int i = 1;
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (i == 1)
                {
                    e.Row.BackColor = Color.Red;
                    break;
                }
            }


        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            var adapter = new SqlDataAdapter("Select DataID,Disease,Age,Gender,ChestPain,FastingSugarLevel,BP,Cholestrol from TrainingData", cnn);
            var ds = new DataSet();
            adapter.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Aqua;

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            var adapter = new SqlDataAdapter("Select DataID,Disease,Age,Gender,ChestPain,FastingSugarLevel,BP,Cholestrol from TrainingData", cnn);
            var ds = new DataSet();
            adapter.Fill(ds);
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection cnn = new SqlConnection("Data Source = SALMAN; Initial Catalog = prediction_system; Integrated Security = True");


            Label DataID = GridView1.Rows[e.RowIndex].FindControl("Label11") as Label;
            TextBox Disease = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox Age = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox Gender = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox ChestPain = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            TextBox FastingSugarLevel = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
            TextBox BP = GridView1.Rows[e.RowIndex].FindControl("TextBox6") as TextBox;
            TextBox Cholestrol = GridView1.Rows[e.RowIndex].FindControl("TextBox7") as TextBox;
            SqlCommand cmd = new SqlCommand(@"Update TrainingData set  Disease='" + Disease.Text + "', Age='" + Age.Text + "', Gender='" + Gender.Text + "', ChestPain='" + ChestPain.Text + "', FastingSugarLevel='" + FastingSugarLevel.Text + "',    BP='" + BP.Text + "', Cholestrol='" + Cholestrol.Text + "' where DataID='" + DataID.Text + "' ", cnn);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            LoadData();
            GridView1.EditIndex = -1;
            GridView1.DataBind();


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection cnn = new SqlConnection("Data Source = SALMAN; Initial Catalog = prediction_system; Integrated Security = True");

            Label DataID = GridView1.Rows[e.RowIndex].FindControl("Label3") as Label;
            //int DataID = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Values["DataID"].ToString());
            String Delete = "delete from TrainingData where DataID=" + DataID.Text;
            cnn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = Delete;
            cmd.Connection = cnn;
            cmd.ExecuteNonQuery();
            cnn.Close();
            LoadData();
            GridView1.EditIndex = -1;
            GridView1.DataBind();
        }
    }

}
