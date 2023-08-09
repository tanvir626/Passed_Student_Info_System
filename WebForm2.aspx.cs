using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace convocation
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtsearch_TextChanged(object sender, EventArgs e)
        {
            gd1.DataSourceID = "filter";
            gd1.DataBind();
            txtsearch.Text = string.Empty;
        }
    }
}