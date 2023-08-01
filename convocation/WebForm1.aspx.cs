using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
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
            if (!IsPostBack)
            {
                getid();
                Preloder();//Thid Function load related value of an registared id in the form
                string id = Convert.ToString(Request.QueryString["id"]);
                string check = Convert.ToString(Request.QueryString["status"]);
                if ((id == null) || (id!= null && check == "No data found"))
                {
                    btnregistration.Visible = true;
                    btnupdate.Visible = false;
                }
                else
                {
                    btnregistration.Visible = false;
                    btnupdate.Visible = true;
                }
               
            }
            
            

        }

        void cls()
        {
            txtmembername.Text=string.Empty;
            ddlgender.SelectedValue = "null";
            ddlgender.SelectedValue = "null";
            txtdateofbirth.Text=string.Empty;
            ddlbloodgroup.SelectedValue = "null";
            txtmobile.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtcontactaddress.Text = string.Empty;
            txtpresentprofession.Text = string.Empty;
            txtpreviousprofession.Text = string.Empty;
            txtregistrationfee.Text = string.Empty;
            txtdepositreference.Text = String.Empty;
           

        }

        protected void btnsave_OnClick(object sender, EventArgs e)
        {
            string a = "null";
            string slippath;
            string mampath;
            if (fpslip.HasFile)
            {
               // fpslip.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image/" + fpslip.FileName);
                fpslip.SaveAs(Server.MapPath("~/image/") + Path.GetFileName(fpmemberimage.FileName));


            }
            
            if (fpmemberimage.HasFile)
            {
                //fpmemberimage.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image/" + fpmemberimage.FileName);
                fpmemberimage.SaveAs(Server.MapPath("~/image/") + Path.GetFileName(fpmemberimage.FileName));
              
            }
            slippath = fpslip.FileName;
            mampath = "image/" + Path.GetFileName(fpmemberimage.FileName);
            con.Open();
            SqlCommand com = new SqlCommand("INSERT INTO convocationform (Registration_Date, Member_Name, Gender, Birthday, Blood_Group, Contact_Number, Email, Education_Type, Present_Profession, Previour_Profession, Rergistration_Fee, Deposit_Slip, member_img,Deposit_ref_no) VALUES ('" + DateTime.Today.ToString("yyyy-MM-dd") + "', '"+ txtmembername.Text + "', '"+ ddlgender.SelectedValue + "', '"+ txtdateofbirth.Text + "', '"+ ddlbloodgroup.SelectedValue + "', '"+ txtmobile.Text + "', '"+ txtemail.Text + "','"+a+"' ,'"+ ddlfrom.Text + "', '"+ txtpresentprofession.Text + "', '"+ txtpreviousprofession.Text + "', '" + txtregistrationfee.Text + "', '"+ slippath.ToString() + "', '"+ mampath.ToString() + "','"+txtdepositreference.Text+"')", con);
            com.ExecuteNonQuery();
            con.Close();
            cls();
            Response.Redirect("WebForm3.aspx");
        }

        void getid()
        {
           if(Convert.ToString(Request.QueryString["id"])==null)
            {
                int id = 0;
                con.Open();
                SqlCommand com = new SqlCommand("Select count(Member_No) from Convocationform", con);
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    id = int.Parse(dr.GetValue(0).ToString());
                    id++;
                }

                con.Close();
                lblid.Text = id.ToString();
            }
            else
            {
                lblid.Text = Convert.ToString(Request.QueryString["id"]);
            }
            

        }
       
        void Preloder()
        {
            string slipimg, memberimg;
            string id = Convert.ToString(Request.QueryString["id"]);
            con.Open();
            SqlCommand com = new SqlCommand("Select Member_Name, Gender, Birthday, Blood_Group , Contact_Number, Email, Address  , Education_Type, Present_Profession, Previour_Profession, Rergistration_Fee, Deposit_Slip, member_img,Deposit_ref_no,passing_year from convocationform where Member_No='" + id+"'", con);
            SqlDataReader dr = com.ExecuteReader();
            while(dr.Read())
            {
                txtmembername.Text = dr.GetValue(0).ToString();
                ddlgender.SelectedValue = dr.GetValue(1).ToString();

                DateTime dateValue = dr.GetDateTime(dr.GetOrdinal("Birthday"));
                txtdateofbirth.Text = dateValue.ToString("yyyy-MM-dd");

                ddlbloodgroup.SelectedValue = dr.GetValue(3).ToString();
                txtmobile.Text = dr.GetValue(4).ToString();
                txtemail.Text = dr.GetValue(5).ToString();
                txtcontactaddress.Text = dr.GetValue(6).ToString();
                ddlfrom.SelectedValue = dr.GetValue(7).ToString();
                txtpresentprofession.Text = dr.GetValue(8).ToString();
                txtpreviousprofession.Text = dr.GetValue(9).ToString();
                txtregistrationfee.Text = dr.GetValue(10).ToString();
                txtdepositreference.Text = dr.GetValue(13).ToString();
                txtlpass.Text = dr.GetValue(14).ToString();
                //slipimg= dr.GetValue(11).ToString();
                //memberimg= dr.GetValue(12).ToString();

            }
            dr.Close();
            con.Close();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("UPDATE convocationform set Member_Name='" + txtmembername.Text + "',Gender='" + ddlgender.SelectedValue + "', Birthday='" + txtdateofbirth.Text + "',Blood_Group='" + ddlbloodgroup.SelectedValue + "',Contact_Number='" + txtmobile.Text + "', Email='" + txtemail.Text + "', Address='" + txtcontactaddress.Text + "',Education_Type='" + ddlfrom.SelectedValue + "', Present_Profession='" + txtpresentprofession.Text + "', Previour_Profession='" + txtpreviousprofession.Text + "', Rergistration_Fee='" + txtregistrationfee.Text + "', Deposit_ref_no='" + txtdepositreference.Text + "', passing_year='"+txtlpass.Text+"'where Member_No='" + Convert.ToString(Request.QueryString["id"]) + "'", con);
                com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("WebForm3.aspx");

        }
        
    }
}