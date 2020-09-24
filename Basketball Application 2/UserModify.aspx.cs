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
    public partial class UserModify : System.Web.UI.Page
    {
        string connectionstring = @"Data Source = tpisql01.avcol.school.nz; Initial Catalog = breakersdatabasekp; Integrated Security = True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            Emaillbl.Text = (string)Session["GetEmail"];
            Passlbl.Text = (string)Session["GetPassword"];
            if (!IsPostBack)
            {
                using (SqlConnection sqlcon = new SqlConnection(connectionstring))
                {


                    sqlcon.Open();
                    SqlDataAdapter sqlDa = new SqlDataAdapter("GetUserID", sqlcon);
                    sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                    sqlDa.SelectCommand.Parameters.AddWithValue("@Email", Emaillbl.Text);
                    sqlDa.SelectCommand.Parameters.AddWithValue("@Password", Passlbl.Text);
                    DataTable dtbl = new DataTable();
                    sqlDa.Fill(dtbl);
                    UserIDnumber.Text = dtbl.Rows[0][0].ToString();
                    txtusername.Text = dtbl.Rows[0][1].ToString();
                    txtemail.Text = dtbl.Rows[0][2].ToString();
                    txtpassword.Text = dtbl.Rows[0][3].ToString();



                }
            }
            
            lbluserbox.Text = txtusername.Text;
            lblpassbox.Text = txtpassword.Text;
            lblemailbox.Text = txtemail.Text;
        }
        protected void txtusername_TextChanged(object sender, EventArgs e)
        {
            lbluserbox.Text = txtusername.Text;
        }
        protected void txtpassword_TextChanged(object sender, EventArgs e)
        {
            lblpassbox.Text = txtpassword.Text;
        }
        protected void txtemail_TextChanged(object sender, EventArgs e)
        {
            lblemailbox.Text = txtemail.Text;
        }
        protected void Save_Click(object sender, EventArgs e)
        {
            if (txtusername.Text == "" || txtemail.Text == "" || txtpassword.Text == "" || txtpasswordconfirm.Text == "" || txtpassword.Text != txtpasswordconfirm.Text)
            {
                lblerrormessage.Visible = true;
                lblerrormessage.Text = "Please enter text in all fields";
            }
            else
            {
                using (SqlConnection sqlcon = new SqlConnection(connectionstring))
                {
                    sqlcon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserCreateOrUpdate", sqlcon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@UserID", UserIDnumber.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Username", lbluserbox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Email", lblemailbox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", lblpassbox.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    Session["GetEmail"] = txtemail.Text;
                    Session["GetPassword"] = txtpassword.Text;
                    Session["getusername"] = txtusername.Text;
                    Response.Redirect("~/Homepage.aspx");
                }
            }
        }
    }
}