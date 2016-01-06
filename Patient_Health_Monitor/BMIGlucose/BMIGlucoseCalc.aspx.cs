using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLayer;
using System.Data;
using System.Text.RegularExpressions;

namespace Patient_Health_Monitor
{
    public partial class BMIGlucoseCalc : System.Web.UI.Page
    {
        int loginid;
        BMICalc calc;
        GlucSave save;
        DataSet ds;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginId"] == null)
            {
                Response.Redirect("~/Login/LoginPage.aspx");
            }

            loginid =Convert.ToInt16(Session["LoginId"]);
            Panel1.Visible = false;
            Panel2.Visible = false;
            calc = new BMICalc();
            save = new GlucSave();
            calc.loginid = this.loginid;
            save.loginid = this.loginid;
            p1.InnerText = "";
            p2.InnerText = "";
            //if (!IsPostBack)
            //{
            //    ds = calc.select();
            //    GridView1.DataSource = ds;
            //    GridView1.DataBind();
            //}
            //ds = calc.select();
            //GridView1.DataSource = ds;
            //GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            

            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;



            LinkButton1.Visible = false;
            LinkButton2.Visible = true;
            Panel1.Visible = true;
            Panel2.Visible = false;
            //calc.loginid = this.loginid;
            ds = calc.select();
            GridView1.DataSource = ds;
            GridView1.DataBind();          
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {


            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;

            LinkButton1.Visible = true;
            LinkButton2.Visible = false;
            Panel1.Visible = false;
            Panel2.Visible = true;            
            dt = save.glureading_select();
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
                LinkButton1.Visible = true;
                LinkButton2.Visible = false;
                Panel1.Visible = false;
                Panel2.Visible = true;

                save.loginid = this.loginid;
                save.timeofday = Convert.ToInt16(DropDownList1.SelectedValue);
                save.glucosereading = Convert.ToDouble(TextBox4.Text);
                save.notes = TextBox5.Text;

                int result = save.glureading_insert();
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                DropDownList1.SelectedValue = "1";

                if (result == 1)
                {
                    p2.InnerText = "Your readings have been saved to the DB successfully.";
                }

                else
                {
                    p2.InnerText = "Error in saving readings. Please try again, later.";
                }

                dt = save.glureading_select();
                GridView2.DataSource = dt;
                GridView2.DataBind();
                
            
            Panel2.Visible = true;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                    LinkButton1.Visible = false;
                    LinkButton2.Visible = true;
                    Panel1.Visible = true;
                    Panel2.Visible = false;

                    calc.loginid = this.loginid;
                    calc.height = Convert.ToDouble(TextBox2.Text);
                    calc.weight = Convert.ToDouble(TextBox1.Text);

                    int result = calc.calcBMI();
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;

                    if (result == 1)
                    {
                        p1.InnerText = "Your BMI has been calculated and saved to the DB successfully";
                    }
                    else
                    {
                        p1.InnerText = "Error in calculating BMI. Please try again, later ";
                    }
                    ds = calc.select();
                    GridView1.DataSource = ds;
                    GridView1.DataBind();

            Panel1.Visible = true;
        }


    }
}