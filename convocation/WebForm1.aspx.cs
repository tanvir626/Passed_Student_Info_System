using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace convocation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=test;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave(object sender, EventArgs e)
        {
            string a = "null";
            string slippath;
            string mampath;
            if (fpslip.HasFile)
            {
                fpslip.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image/" + fpslip.FileName);
                
            }
            if (fpmemberimage.HasFile)
            {
                fpmemberimage.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image/" + fpmemberimage.FileName);

            }
            slippath = fpslip.FileName;
            mampath = fpmemberimage.FileName;
            con.Open();
            SqlCommand com = new SqlCommand("INSERT INTO convocationform (Registration_Date, Member_Name, Gender, Birthday, Blood_Group, Contact_Number, Email, Education_Institute_Name , Education_Type, Present_Profession, Previour_Profession, Rergistration_Fee, Deposit_Slip, member_img,Deposit_ref_no) VALUES ('" + DateTime.Today.ToString("yyyy-MM-dd") + "', '"+ txtmembername.Text + "', '"+ ddlgender.SelectedValue + "', '"+ txtdateofbirth.Text + "', '"+ ddlbloodgroup.SelectedValue + "', '"+ txtmobile.Text + "', '"+ txtemail.Text + "','"+a+"' ,'"+ ddlfrom.Text + "', '"+ txtpresentprofession.Text + "', '"+ txtpreviousprofession.Text + "', '" + txtregistrationfee.Text + "', '"+ slippath.ToString() + "', '"+ mampath.ToString() + "','"+txtdepositreference.Text+"')", con);
            com.ExecuteNonQuery();
            con.Close();
            

        }
    }
}