using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace convocation
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=test;Integrated Security=True");
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

        protected void txtmainsearch_TextChanged(object sender, EventArgs e)
        {
            int id= Convert.ToInt32(txtmainsearch.Text);
            con.Open();
            SqlCommand com = new SqlCommand("select * from convocationform where Member_No=",con);
            SqlDataAdapter adapter = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Employee");

            grvEmployee.DataSource = ds;
            grvEmployee.DataBind();




            //GridView1.DataBind();

        }
    }
}