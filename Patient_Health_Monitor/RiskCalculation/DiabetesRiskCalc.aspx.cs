using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLayer;
using System.Data;

namespace PHM
{
    public partial class DiabetesRiskCalc : System.Web.UI.Page
    {
        RiskCalcBL rc = new RiskCalcBL();
        DataSet ds;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginId"] == null)
            {
                Response.Redirect("~/Login/LoginPage.aspx");
            }
            rc.loginid = Convert.ToInt16(Session["LoginId"]);
            Button4.Visible = false;
            if (!IsPostBack)
            {
                string bpop = rc.prepop();
                TextBox1.Text = bpop;
            }

            ds = rc.disDb();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

       

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button4.Visible = true;
            rc.today = DateTime.Now;
            rc.Bmi = Convert.ToDouble(TextBox1.Text);
            rc.Sysbp = Convert.ToDouble(TextBox2.Text);
            rc.DisBp = Convert.ToDouble(TextBox3.Text);
            rc.Gluc = Convert.ToDouble(TextBox4.Text);
            rc.Hdl = Convert.ToDouble(TextBox5.Text);
            rc.Serum = Convert.ToDouble(TextBox6.Text);
            rc.riskper = Convert.ToInt16(Label1.Text);
            int i = rc.insert();
            if (i == 1)
                Label2.Text = "Saved to the DB successfully. Showing History!";
            else
                Label2.Text = "Error in saving.  Please try again, later.";
            ds = rc.disDb();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

     

        protected void Button5_Click(object sender, EventArgs e)
        {
            rc.Bmi = Convert.ToDouble(TextBox1.Text);
            rc.Sysbp = Convert.ToDouble(TextBox2.Text);
            rc.DisBp = Convert.ToDouble(TextBox3.Text);
            rc.Gluc = Convert.ToDouble(TextBox4.Text);
            rc.Hdl = Convert.ToDouble(TextBox5.Text);
            rc.Serum = Convert.ToDouble(TextBox6.Text);
            Label2.Text = "Your risk percent has been calculated";
            int res = rc.printRiskPer();
            Button4.Visible = true;
            Label1.Text = res.ToString();
            Label3.Text = "% risk of having diabetes";
        }
    }
}