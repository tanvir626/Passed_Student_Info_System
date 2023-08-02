using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace convocation
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string physicalImagePath;
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=test;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnregis.Visible = true;
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
                    btnregis.Visible = false;
                    btnprint.Visible = true;

                }
            }
            else
            {
                lblname.Text = "No data found";
                lblname.Visible = true;
                btnregis.Visible = true;
                btnprint.Visible = false;
            }

            dr.Close();
            con.Close();
        }

        void cls()
        {
            
            lblname.Visible = false;
            lblid.Visible = false;

            lblida.Visible = false;
            lbltxt.Visible = false;

            //btnregis.Visible = false;
            btnupdate.Visible = false;
        }

        protected void txtid_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx?id=" + TextBox1.Text);
        }

        protected void btnregis_Click(object sender, EventArgs e)
        {

            Response.Redirect("WebForm1.aspx?status="+ lblname.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            printTicket(TextBox1.Text);
        }

        private void printTicket(string id)
        {
            member.Visible = true;

            con.Open();
            SqlCommand com = new SqlCommand("SELECT * FROM convocationform WHERE Member_No='" + id + "'", con);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                lblidforpdf.Text= dr.GetValue(0).ToString();
                lblmembername.Text= dr.GetValue(2).ToString();
                lblbirthday.Text= dr.GetValue(4).ToString();
                lblgender.Text= dr.GetValue(3).ToString();
                lblblood.Text= dr.GetValue(5).ToString();
                lblcontact.Text= dr.GetValue(6).ToString();
                lblemail.Text= dr.GetValue(7).ToString();
                lblschool.Text= dr.GetValue(8).ToString();
                lblpresentp.Text= dr.GetValue(9).ToString();
                lblpreviousp.Text= dr.GetValue(10).ToString();
               // lblregis.Text=dr.GetValue(11).ToString();
               // lblregis.Text= dr.GetValue(12).ToString();
                lbldepositreferno.Text= dr.GetValue(14).ToString();
                lbladdress.Text= dr.GetValue(15).ToString();
                lblpass.Text= dr.GetValue(16).ToString();
               /// string depimagepath = dr.GetValue(12).ToString();
                string memimagepath = dr.GetValue(13).ToString();

                physicalImagePath = Server.MapPath(memimagepath);


            }
            con.Close();

            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    StringBuilder sb = new StringBuilder();
                    member.RenderControl(hw);
                    Image1.RenderControl(hw);
                    StringReader sr = new StringReader(sw.ToString());
                    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0);
                    PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    iTextSharp.text.Image memberImage = iTextSharp.text.Image.GetInstance(physicalImagePath);

                    pdfDoc.Add(memberImage);

                    //pdfDoc.NewPage();

                    XMLWorkerHelper.GetInstance().ParseXHtml(writer, pdfDoc, sr);
                    pdfDoc.Close();
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachement;filename=Member" + ".pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Write(pdfDoc);
                    Response.End();
                }
            }

        }
    }
}