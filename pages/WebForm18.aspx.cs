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
    public partial class WebForm18 : System.Web.UI.Page
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
            var adapter = new SqlDataAdapter("Select Name,Feedback from UserFeedback", cnn);
            var ds = new DataSet();
            adapter.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
            

        }

        
    }
}