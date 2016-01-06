using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLayer;

namespace Patient_Health_Monitor.Login
{
    public partial class Registeration : System.Web.UI.Page
    {
        UserReg ug = new UserReg();
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            ug.username = TextBox1.Text;
            ug.emailid = TextBox2.Text;
            ug.Pass = TextBox3.Text;
            int res = ug.userreg();
            if (res != 0)
            {
               Response.Redirect("regsuccess.aspx?LoginId="+res);
            }
            else
            {
                Label5.Text = "Error in creating your account. Please try again, later";
            }

        }



    }
}