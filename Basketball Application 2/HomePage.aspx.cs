using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Basketball_Application_2
{
    public partial class HomePage : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if((string)Session["checksignin"] == "True")
            {
                btnsignin.Visible = false;
                btnsignout.Visible = true;
                lblwelcome.Visible = true;
                lblwelcome.Text = "Welcome " + (string)Session["getusername"]; 
            }
        }

        protected void btnsignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LogInPage.aspx");
        }

        protected void btnsignout_Click(object sender, EventArgs e)
        {
            Session["checksignin"] = "false";
            Response.Redirect("~/LogInPage.aspx");
        }
    }
}