﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Basketball_Application_2
{
    public partial class LogInPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = tpisql01.avcol.school.nz; Initial Catalog = breakersdatabasekp; Integrated Security = True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = tpisql01.avcol.school.nz; Initial Catalog = breakersdatabasekp; Integrated Security = True;");

            SqlDataAdapter sqa = new SqlDataAdapter("Select UserID From breakersdatabase where Username = '" + User1.Text + "' and Password = '" + Password1.Text + "'", con);
            System.Data.DataTable dtbl = new System.Data.DataTable();
            sqa.Fill(dtbl);
            if (User1.Text == "Admin" && Password1.Text == "Dfghj22x2")
            {
                Response.Redirect("~/ADMINPAGE");
            }
            else if (dtbl.Rows.Count > 0)
            {
                Response.Redirect("~/HomePage.aspx");
            }
            else
            {
                Response.Redirect("~/LogInPage.aspx");


            }
        }
    }
}