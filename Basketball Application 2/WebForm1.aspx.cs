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
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["checksignin"] == "True")
            {
              
                Edit1.Visible = true;
                Training5.Visible = true;

            
            }
        }
        string connectionString = @"Data Source = tpisql01.avcol.school.nz; Initial Catalog = breakersdatabasekp; Integrated Security = True;";
        
        protected void Button1_Click(object sender, EventArgs e) //sign up
        {
   
            if (txtName.Text == "" || txtPassword.Text == "")
            {
                lblmsg.Text = "Please enter text";

            }

            else if (txtPassword.Text != txtConfirmpassword.Text)
            {
                lblmsg.Text = "Passwords do not match";
            }

            else
            {


                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserAdd", sqlCon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@Username", txtName.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Email", txtEmailAddress.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    Clear();
                    Response.Redirect("~/LogInPage.aspx");


                }
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
        void Clear()
        {
            txtName.Text = txtEmailAddress.Text = txtPassword.Text = txtConfirmpassword.Text = "";
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

    
    



       