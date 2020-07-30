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
    public partial class Modify : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source = tpisql01.avcol.school.nz; Initial Catalog = breakersdatabasekp; Integrated Security = True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btndelete.Enabled = false;
            }
        }

        protected void btnclear_Click1(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            hfUserID.Value = "";
            txtusername.Text = txtemail.Text = txtpassword.Text = "";
            lblsuccessmessage.Text = lblerrormessage.Text = "";
            btnsave.Text = "Save";
            btndelete.Enabled = false;


        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            if (sqlcon.State == ConnectionState.Closed)
                sqlcon.Open();
            SqlCommand sqlCmd = new SqlCommand("UserCreateOrUpdate",sqlcon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@UserID",(hfUserID.Value==""?0:Convert.ToInt32(hfUserID.Value)));
            sqlCmd.Parameters.AddWithValue("@Username", txtusername.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Password", txtpassword.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlcon.Close();
            Clear();
            if (hfUserID.Value == "")
                lblsuccessmessage.Text = "Saved Successfully";
            else
                lblerrormessage.Text = "Updated Successfully";


        }

        

    }
}