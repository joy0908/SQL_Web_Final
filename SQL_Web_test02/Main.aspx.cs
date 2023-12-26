using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQL_Web_test02
{
    public partial class Main : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
                Response.Redirect("WebForm8.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Id"] = null;
            Response.Redirect("WebForm8.aspx");
        }
    }
}