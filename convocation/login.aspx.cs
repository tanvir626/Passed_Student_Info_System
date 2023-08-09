using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace convocation
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnlogin(object sender, EventArgs e)
        {
            if(txtuser.Text=="admin" && txtpass.Text=="admin")
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Provide Currect cradintial')", true);
            }
           
        }
    }
}