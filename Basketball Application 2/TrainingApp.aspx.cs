using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Basketball_Application_2
{
    public partial class TrainingApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["checksignin"] == "True")
            {
              
                Edit5.Visible = true;
                btnsignout.Visible = true;
                lblwelcome.Visible = true;
                lblwelcome.Text = "Welcome " + (string)Session["getusername"];
                Training3.Visible = true;
                Rego.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BeginnerPage.aspx");
        }
     

        protected void btnsignout_Click(object sender, EventArgs e)
        {
            Session["checksignin"] = "false";
            Response.Redirect("~/LogInPage.aspx");
        }


    }
}