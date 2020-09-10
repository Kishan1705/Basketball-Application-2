using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Basketball_Application_2
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = tpisql01.avcol.school.nz; Initial Catalog = breakersdatabasekp; Integrated Security = True;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed9_Click(object sender, EventArgs e)
        {

        }
    }
}