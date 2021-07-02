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
    public partial class WebForm10 : System.Web.UI.Page
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
            var adapter = new SqlDataAdapter("select D_ID, D_name,Address,Ph_Number,Specialist,email from Doctor;", cnn);
            var ds = new DataSet();
            adapter.Fill(ds);

            GridView2.DataSource = ds;
            GridView2.DataBind();

        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            LoadData();
            GridView2.EditRowStyle.BackColor = System.Drawing.Color.Aqua;

        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            LoadData();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection cnn = new SqlConnection("Data Source = SALMAN; Initial Catalog = prediction_system; Integrated Security = True");


            Label D_ID = GridView2.Rows[e.RowIndex].FindControl("Label9") as Label;
            TextBox D_name = GridView2.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox Address = GridView2.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox contact_number = GridView2.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox Specialist = GridView2.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            TextBox email = GridView2.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
            SqlCommand cmd = new SqlCommand(@"Update Doctor set D_name='" + D_name.Text + "', Address='" + Address.Text + "', Ph_number='" + contact_number.Text + "', Specialist='" + Specialist.Text + "', email='" + email.Text + "' where D_ID='" + D_ID.Text + "' ", cnn);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            LoadData();
            GridView2.EditIndex = -1;
            GridView2.DataBind();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection cnn = new SqlConnection("Data Source = SALMAN; Initial Catalog = prediction_system; Integrated Security = True");

            Label D_ID = GridView2.Rows[e.RowIndex].FindControl("Label3") as Label;
            //int DataID = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Values["DataID"].ToString());
            String Delete = "delete from Doctor where D_ID=" + D_ID.Text;
            cnn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = Delete;
            cmd.Connection = cnn;
            cmd.ExecuteNonQuery();
            cnn.Close();
            LoadData();
            GridView2.EditIndex = -1;
            GridView2.DataBind();
        }
    }
}