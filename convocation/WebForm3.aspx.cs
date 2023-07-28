using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace convocation
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=test;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
            cls();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("SELECT Member_No, Member_Name FROM convocationform WHERE Member_No='" + TextBox1.Text + "'", con);
            SqlDataReader dr = com.ExecuteReader();

            if (dr.HasRows) 
            {
                lblid.Visible = true;
                lblname.Visible = true;
                lblida.Visible = true;
                lbltxt.Visible = true;

                while (dr.Read())
                {
                    lblid.Text = dr.GetValue(0).ToString();
                    lblname.Text = dr.GetValue(1).ToString();
                    btnupdate.Visible = true;
                }
            }
            else
            {
                lblname.Text = "No data found";
                lblname.Visible = true;
                btnregis.Visible = true;
            }

            dr.Close(); 
            con.Close();
        }

        void cls()
        {
            lblname.Text = string.Empty;
            lblid.Text = string.Empty;
            lblname.Visible = false;
            lblid.Visible = false;

            lblida.Visible = false;
            lbltxt.Visible = false;

            btnregis.Visible = false;
            btnupdate.Visible = false;
        }

        protected void txtid_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx?id=" + TextBox1.Text );
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("WebForm1.aspx?id="+TextBox1.Text);
        }
    }
}