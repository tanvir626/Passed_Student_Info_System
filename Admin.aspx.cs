using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace convocation
{
    public partial class Admin : System.Web.UI.Page
    {
        //sqlconnection con = new SqlConnection("");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

            GridView1.DataSourceID = "SqlDataSource2";
            GridView1.DataBind();

        }

        protected void txtvarchar_TextChanged(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSource3";
            GridView1.DataBind();
        }
    }
}