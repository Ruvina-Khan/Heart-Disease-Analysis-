using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Data;

namespace prediction__system
{
    public partial class WebForm14 : System.Web.UI.Page
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
            var adapter = new SqlDataAdapter("select DiseaseDiagnosed,Date from DiseaseAnalysed where Name='" + (string)Session["user"] + "';", cnn);
            var ds = new DataSet();
            adapter.Fill(ds);

            GridView2.DataSource = ds;
            GridView2.DataBind();

        }
    }
}