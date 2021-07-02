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
    public partial class WebForm7 : System.Web.UI.Page
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
            var adapter = new SqlDataAdapter("select P_id,P_name,email,contact_number from users where User_type='Patient';", cnn);
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


            Label P_id = GridView2.Rows[e.RowIndex].FindControl("Label7") as Label;
            TextBox P_name = GridView2.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox email = GridView2.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox contact_number = GridView2.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            SqlCommand cmd = new SqlCommand(@"Update users set P_name='" + P_name.Text + "', email='" + email.Text + "', contact_number='" + contact_number.Text + "' where P_id='" + P_id.Text + "' ", cnn);
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

            Label P_id = GridView2.Rows[e.RowIndex].FindControl("Label3") as Label;
            //int DataID = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Values["DataID"].ToString());
            String Delete = "delete from users where P_id=" + P_id.Text;
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