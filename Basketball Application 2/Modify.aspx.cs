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
                FillGridView();
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
            string UserID = hfUserID.Value;
            Clear();
            if (hfUserID.Value == "")
                lblsuccessmessage.Text = "Saved Successfully";
            else
                lblsuccessmessage.Text = "Updated Successfully";
            FillGridView();

        }

      void FillGridView()
        {



            if (sqlcon.State == ConnectionState.Closed)
                sqlcon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("UserViewAll", sqlcon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlcon.Close();
            gvUser.DataSource = dtbl;
            gvUser.DataBind();
        }

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int UserID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (sqlcon.State == ConnectionState.Closed)
                sqlcon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("UserViewByID", sqlcon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@UserID", UserID);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlcon.Close();
            hfUserID.Value = UserID.ToString();
            txtusername.Text = dtbl.Rows[0]["Username"].ToString();
            txtemail.Text = dtbl.Rows[0]["Email"].ToString();
            txtpassword.Text = dtbl.Rows[0]["Password"].ToString();
            btnsave.Text = "Update";
            btndelete.Enabled = true;
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            if (sqlcon.State == ConnectionState.Closed)
                sqlcon.Open();
            SqlCommand sqlCmd = new SqlCommand("UserDeleteByID", sqlcon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value));
            sqlCmd.ExecuteNonQuery();
            sqlcon.Close();
            Clear();
            FillGridView();
            lblsuccessmessage.Text = "Deleted Succesfully";



        }
    }
}