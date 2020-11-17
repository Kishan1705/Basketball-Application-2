﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Basketball_Application_2
{
    public partial class BeginnerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["checksignin"] == "True")
            {
               
                btnsignout.Visible = true;
                lblwelcome.Visible = true;
                lblwelcome.Text = "Welcome " + (string)Session["getusername"];
                Edit2.Visible = true;
                Training1.Visible = true;
                Rego.Visible = false;
            }
            if ((string)Session["Admin"] == "Whatever")
            {
                Admin1.Visible = true;
            }

            if ((string)Session["videos"] == "watched")
            {
                
            }
        }

        protected void btnsignout_Click(object sender, EventArgs e)
        {
            Session["checksignin"] = "false";
            Response.Redirect("~/LogInPage.aspx");
        }

        protected void Video1_click(object sender, EventArgs e)
        {
            Session["videos"] = "watched";

            //ProgressBar.Width = 1690;
        }
    }
}