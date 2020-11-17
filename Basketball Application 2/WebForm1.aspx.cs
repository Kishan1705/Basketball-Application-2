using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;
using System.Text.RegularExpressions;

namespace Basketball_Application_2
{

    class RegexUtilities
    {
        public static bool IsValidEmail(string email)
        {
            if (string.IsNullOrWhiteSpace(email))
                return false;

            try
            {
                // Normalize the domain
                email = Regex.Replace(email, @"(@)(.+)$", DomainMapper,
                                      RegexOptions.None, TimeSpan.FromMilliseconds(200));

                // Examines the domain part of the email and normalizes it.
                string DomainMapper(Match match)
                {
                    // Use IdnMapping class to convert Unicode domain names.
                    var idn = new IdnMapping();

                    // Pull out and process domain name (throws ArgumentException on invalid)
                    string domainName = idn.GetAscii(match.Groups[2].Value);

                    return match.Groups[1].Value + domainName;
                }
            }
            catch (RegexMatchTimeoutException e)
            {
                return false;
            }
            catch (ArgumentException e)
            {
                return false;
            }

            try
            {
                return Regex.IsMatch(email,
                    @"^[^@\s]+@[^@\s]+\.[^@\s]+$",
                    RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250));
            }
            catch (RegexMatchTimeoutException)
            {
                return false;
            }
        }
    }
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["checksignin"] == "True")
            {

                btnsignin.Visible = false;
                btnsignout.Visible = true;
                lblwelcome.Visible = true;
                lblwelcome.Text = "Welcome " + (string)Session["getusername"];
                Edit1.Visible = true;
                Training5.Visible = true;

            
            }
        }
        string connectionString = @"Data Source = tpisql01.avcol.school.nz; Initial Catalog = breakersdatabasekp; Integrated Security = True;";
        
        protected void Button1_Click(object sender, EventArgs e) //sign up
        {
   
            if (txtName.Text == "" || txtPassword.Text == "")
            {
                lblmsg.Text = "Please fill in all fields";

            }

            else if (txtPassword.Text != txtConfirmpassword.Text)
            {
                lblmsg.Text = "Passwords do not match";
            }

            else if(txtPassword.Text.Length<6)
                {

                lblmsg.Text = "Password must be greater than 6 characters";
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

    
    



       