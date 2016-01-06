using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLayer;
using System.Text.RegularExpressions;

namespace Patient_Health_Monitor
{
    public partial class LoginPage : System.Web.UI.Page
    {
        UserReg ur = new UserReg();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session.Abandon();
            //Response.Buffer = true;
            //Response.ExpiresAbsolute = DateTime.Now.AddDays(-10);
            //Response.Expires = -100;
            //Response.CacheControl = "no-cache";
            //HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Session["LoginId"] = null;
            

            Label1.Text = string.Empty;
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            Regex regex = new Regex(@"^[0-9]+$");
  
            if ((regex.IsMatch(lognid.Text))&&(lognid.Text != string.Empty))
            {
                if (password.Text != string.Empty)
                {
                    ur.Logid = lognid.Text;
                    ur.Pass = password.Text;
                    int res = ur.ulogin();
                    if (res == 1)
                    {
                        Session["LoginId"] = lognid.Text;
                        Response.Redirect("~/PatientProfile/User Profile.aspx");
                    }
                    else
                        Label1.Text = "Error in authorizing you. Please try again later";

                    lognid.Text = string.Empty;
                    password.Text = string.Empty;

                }
                else
                {
                    Label1.Text = "Enter Password";
                }
            }
            else {
                Label1.Text = "Invalid LoginId";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registeration.aspx");
        }
        
    }
}