using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


using BussinessLayer;

namespace Patient_profile
{
  
    public partial class WebForm1 : System.Web.UI.Page
    {
        int age;
        int check;
        DataSet ds;
        DataSet ds_pat ;
        DataSet ds_user;
        UserProfile usp = new UserProfile();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Label8.Text = " * means it is mandatory field";
             ds= new DataSet();
            ds_pat = new DataSet();
            ds_user = new DataSet();

            if (Session["LoginId"] == null)
            {
                Response.Redirect("~/Login/LoginPage.aspx");
            }
            usp.lgnid = Convert.ToInt16(Session["LoginId"]);

            ds = usp.getimage();
            if (ds.Tables[0].Rows.Count == 0)
            {
                Image2.ImageUrl = "~/Images/Default.png";
            }
            else 
            {
                if (ds.Tables[0].Rows[0].ItemArray[0].ToString() == string.Empty)
                    Image2.ImageUrl = "~/Images/Default.png";
                else
                    Image2.ImageUrl = "~/PatientProfile/getImage.ashx?id=" + usp.lgnid;
                
            }
                     
            for (int year = 1901; year <= DateTime.Now.Year; year++)
                DropDownList5.Items.Add(new ListItem(year.ToString(), year.ToString()));
            //Calendar1.Visible = false;

            Label1.Text = string.Empty;
         
            ds_pat = usp.getDetails();
            check = ds_pat.Tables["tblPatientDetails"].Rows.Count;

            //ds = usp.getDetails();

            if (!IsPostBack)
            {
                if (check != 0)
                {
                    var details = ds_pat.Tables["tblPatientDetails"].Rows[0].ItemArray;
                    TextBox2.Text = details[0].ToString();
                    TextBox3.Text = details[1].ToString();

                    DateTime dt = Convert.ToDateTime(ds_pat.Tables["tblPatientDetails"].Rows[0]["DOB"]);
                    DropDownList5.SelectedValue = "" + dt.Year;
                    DropDownList6.SelectedValue = "" + dt.Month;
                    Calendar1.SelectedDate = dt;
                    TextBox14.Text = dt.ToShortDateString();

                    string gender = details[3].ToString();
                    if (gender == "M")
                        RadioButton1.Checked = true;
                    else
                        RadioButton2.Checked = true;

                    TextBox4.Text = details[4].ToString();
                    TextBox5.Text = details[5].ToString();
                    DropDownList4.SelectedValue = details[6].ToString();
                    TextBox6.Text = details[7].ToString();
                    TextBox7.Text = details[8].ToString();
                    TextBox9.Text = details[9].ToString();
                    TextBox10.Text = details[10].ToString();
                    TextBox11.Text = details[11].ToString();
                    TextBox12.Text = details[12].ToString();
                    TextBox13.Text = details[13].ToString();
                }
            }
                ds_user = usp.seluserdetails();
               
                var details_user = ds_user.Tables["tblUserDetails"].Rows[0].ItemArray;
                Label4.Text = details_user[0].ToString();
                TextBox8.Text = details_user[1].ToString();
               
            
    
           // usp.Dob = Convert.ToDateTime(TextBox14.Text);


        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           
            //usp.Uname = Convert.ToString(TextBox1);
            usp.Fname = Convert.ToString(TextBox2.Text);
            usp.Lname = Convert.ToString(TextBox3.Text);
            usp.Address = Convert.ToString(TextBox4.Text);
            usp.City = Convert.ToString(TextBox5.Text);
            usp.State = Convert.ToString(DropDownList4.SelectedValue);
            usp.Zipcode = Convert.ToString(TextBox6.Text);
            usp.Phn = Convert.ToString(TextBox7.Text);
            usp.emailid = Convert.ToString(TextBox8.Text);
            usp.Pfn = Convert.ToString(TextBox9.Text);
            usp.Pln = Convert.ToString(TextBox10.Text);
            usp.Pphn = Convert.ToString(TextBox11.Text);
            usp.Gfn = Convert.ToString(TextBox12.Text);
            usp.Gln = Convert.ToString(TextBox13.Text);
            usp.Dob = Convert.ToDateTime(TextBox14.Text);
            if (RadioButton1.Checked)
                usp.Gender = RadioButton1.Text;
            else
                usp.Gender = RadioButton2.Text;
            if (FileUpload1.PostedFile.ContentLength < 512000)
            {
                Label3.Text = "";
                usp.Pp = Convert.ToString(FileUpload1.PostedFile.FileName);

                int patient = 0;
                int user = 0;
                if (usp.Pp != string.Empty)
                {
                    //FileUpload1.SaveAs(Server.MapPath("~/Images/" + usp.Pp));
                    //usp.Pp = "~/Images/" + usp.Pp;
                    if (check == 0)
                    {
                        if (usp.checkage() > 18)
                        {
                            Label6.Text = "";
                            Label7.Text = "";
                            patient = usp.insertbl();
                            user = usp.upduserdetails();
                        }

                        else if (TextBox12.Text == "" || TextBox13.Text == "")
                        {
                            //Label6.Text = "Mandatory";
                            Label7.Text = "Gaurdian First Name and Last Name are Mandatory";
                        }

                        else
                        {
                            patient = usp.insertbl();
                            user = usp.upduserdetails();
                        }
                    }
                    else
                    {
                        if (usp.checkage() > 18)
                        {
                            Label6.Text = "";
                            Label7.Text = "";
                            patient = usp.updatetbl();
                            user = usp.upduserdetails();
                        }
                        else if (TextBox12.Text == "" || TextBox13.Text == "")
                        {
                            //Label6.Text = "Mandatory";
                            Label7.Text = "Gaurdian First Name and Last Name are Mandatory";
                        }

                        else
                        {
                            patient = usp.updatetbl();
                            user = usp.upduserdetails();
                        }

                    }
                }

                else 
                {
                    if (check == 0)
                    {
                        if (usp.checkage() > 18 )
                        {
                            Label6.Text = "";
                            Label7.Text = "";
                            patient = usp.insertblwithoutimg();
                            user = usp.upduserdetails();
                        }
                        else if (TextBox12.Text == "" || TextBox13.Text == "")
                        {
                            //Label6.Text = "Mandatory";
                            Label7.Text = "Gaurdian First Name and Last Name are Mandatory";
                        }

                        else
                        {
                            patient = usp.insertblwithoutimg();
                            user = usp.upduserdetails(); 
                        }


                    }

                    else
                    {
                        if (usp.checkage() > 18 )
                        {
                            Label6.Text = "";
                            Label7.Text = "";
                            patient = usp.updatetblwithoutimg();
                            user = usp.upduserdetails();
                        }
                        else if (TextBox12.Text == "" || TextBox13.Text == "")
                        {
                            //Label6.Text = "Mandatory";
                            Label7.Text = "Gaurdian First Name and Last Name are Mandatory";
                        }

                        else
                        {
                            patient = usp.updatetblwithoutimg();
                            user = usp.upduserdetails();
                        }
                    }
                }

                if (patient == 1 && user == 1)
                {
                    ds = usp.getimage();
                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        Image2.ImageUrl = "~/Images/Default.png";
                    }
                    else
                    {
                        if (ds.Tables[0].Rows[0].ItemArray[0].ToString() == string.Empty)
                            Image2.ImageUrl = "~/Images/Default.png";
                        else
                            Image2.ImageUrl = "~/PatientProfile/getImage.ashx?id=" + usp.lgnid;

                    }
                    Label1.Text = "Details Added Successfully";
                }
                else
                    Label1.Text = "Error In Adding Details";

            }

            else
            {
                Label3.Text = "Image should be less than 512 KB";
                
            }
        
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt16(DropDownList6.SelectedValue) != 0)
            {
                DateTime dt = Convert.ToDateTime(DropDownList6.SelectedValue.ToString() + "-01-" + DropDownList5.SelectedValue.ToString());
                dt = Convert.ToDateTime(dt.ToString("MM-dd-yyyy HH:mm:ss"));
                Label2.Text = "";
                Calendar1.VisibleDate = dt;
                Calendar1.Visible = true;
            }
            else
            {
                Label2.Text = "Please select Month.";
            }

            
           
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

            TextBox14.Text = Calendar1.SelectedDate.ToShortDateString();

        }

        protected void TextBox14_TextChanged(object sender, EventArgs e)
        {
            

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
         
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Redirect(Page.Request.Url.ToString(), true);
        }

  

       
    }
}