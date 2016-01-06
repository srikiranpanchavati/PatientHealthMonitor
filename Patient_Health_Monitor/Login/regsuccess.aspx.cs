using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLayer;

namespace Patient_Health_Monitor.Login
{
    public partial class regsuccess : System.Web.UI.Page
    {
        UserReg userreg = new UserReg();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString[0];
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}