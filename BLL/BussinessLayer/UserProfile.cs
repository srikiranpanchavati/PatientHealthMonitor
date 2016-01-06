using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using System.Data;

namespace BussinessLayer
{
    public class UserProfile
    {
        PatientDetails da = new PatientDetails();
        private string fname;

        public string Fname
        {
            get { return fname; }
            set { fname = value; }
        }
       
        private string lname;

        public string Lname
        {
            get { return lname; }
            set { lname = value; }
        }
        private string address;

        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        private string city;

        public string City
        {
            get { return city; }
            set { city = value; }
        }

        private string state;

        public string State
        {
            get { return state; }
            set { state = value; }
        }
        private string zipcode;

        public string Zipcode
        {
            get { return zipcode; }
            set { zipcode = value; }
        }
        private string phn;

        public string Phn
        {
            get { return phn; }
            set { phn = value; }
        }
        private string pfn;

        public string Pfn
        {
            get { return pfn; }
            set { pfn = value; }
        }
        private string pln;

        public string Pln
        {
            get { return pln; }
            set { pln = value; }
        }
        private string pphn;

        public string Pphn
        {
            get { return pphn; }
            set { pphn = value; }
        }
        private string gfn;

        public string Gfn
        {
            get { return gfn; }
            set { gfn = value; }
        }
        private string gln;

        public string Gln
        {
            get { return gln; }
            set { gln = value; }
        }
        private string pp;

        public string Pp
        {
            get { return pp; }
            set { pp = value; }
        }



        private DateTime dob;

        public DateTime Dob
        {
            get { return dob; }
            set { dob = value; }
        }
        private string gender;

        public string Gender
        {
            get { return gender; }
            set { gender = value; }
        }
        public int lgnid
        {
            get;
            set;
        }

        public string emailid
        {
            get;
            set;
        }



        public DataSet getDetails()
        {
            string sel = "select FirstName, LastName, DOB, Gender, Address, City, State, ZipCode, Phone, PCPFirstName, PCPLastName, PCPPhone, GuardianFirstName, GuardianLastName from tblPatientDetails where LoginId = " + lgnid;
            
            return da.select_Details(sel);
        }

        public int insertbl()
        {
            //lgnid = 101;
            string q = "insert into tblPatientDetails values (" + lgnid + ",'" + Fname + "','" + Lname + "','" + Dob.ToString("yyyy-MM-dd") + "','" + Gender + "','" + Address + "','" + City + "','" + State + "', '" + Zipcode + "','" + Phn + "','" + Pfn + "','" + Pln + "','" + Pphn + "','" + Gfn + "','" + Gln + "', (select * FROM OPENROWSET (BULK '" + Pp + "' , SINGLE_BLOB) ThumbnailPhoto))";
            //string q = "insert into tblPatientDetails (FirstName,LastName,Address,City,State,ZipCode,Phone,PCPFirstName,PCPLastName,PCPPhone,GuardianFirstName,GuardianLastName,ImageURL)values('" + Fname + "','" + Lname + "','" + Address + "','" + City + "','" + State + "','" + Zipcode + "','" + Phn + "','" + Pfn + "','" + Pln + "','" + Pphn + "','" + Gfn + "','" + Gln + "','" + Pp + "')";
            int i = da.insertdb(q);
            return i;
        }

        public int insertblwithoutimg()
        {
            //lgnid = 101;
            string q = "insert into tblPatientDetails (LoginId, FirstName, LastName, DOB, Gender, Address, City, State, ZipCode, Phone, PCPFirstName, PCPLastName, PCPPhone, GuardianFirstName, GuardianLastName) values (" + lgnid + ",'" + Fname + "','" + Lname + "','" + Dob + "','" + Gender + "','" + Address + "','" + City + "','" + State + "', '" + Zipcode + "','" + Phn + "','" + Pfn + "','" + Pln + "','" + Pphn + "','" + Gfn + "','" + Gln + "')";
            //string q = "insert into tblPatientDetails (FirstName,LastName,Address,City,State,ZipCode,Phone,PCPFirstName,PCPLastName,PCPPhone,GuardianFirstName,GuardianLastName,ImageURL)values('" + Fname + "','" + Lname + "','" + Address + "','" + City + "','" + State + "','" + Zipcode + "','" + Phn + "','" + Pfn + "','" + Pln + "','" + Pphn + "','" + Gfn + "','" + Gln + "','" + Pp + "')";
            int i = da.insertdb(q);
            return i;
        }


        public int updatetbl()
        {
            //lgnid = 101;
            String sel = "update tblPatientDetails set FirstName='" + Fname + "' , LastName='" + Lname + "' , DOB='" + Dob.ToString("yyyy-MM-dd") + "', Gender='" + Gender + "' , Address='" + Address + "' , City='" + City + "' , State='" + State + "' , ZipCode='" + Zipcode + "' , Phone='" + Phn + "', PCPFirstName='" + Pfn + "' , PCPLastName='" + Pln + "' , PCPPhone='" + Pphn + "' , GuardianFirstName='" + Gfn + "' , GuardianLastName='" + Gln + "' , ImageUrl= (select * FROM OPENROWSET (BULK '" + Pp + "' , SINGLE_BLOB) ThumbnailPhoto) where LoginId = "+lgnid;
            return da.update_patientdetails(sel);
        }

        public int updatetblwithoutimg()
        {
            //lgnid = 101;
            String sel = "update tblPatientDetails set FirstName='" + Fname + "' , LastName='" + Lname + "' , DOB='" + Dob.ToString("yyyy-MM-dd") + "', Gender='" + Gender + "' , Address='" + Address + "' , City='" + City + "' , State='" + State + "' , ZipCode='" + Zipcode + "' , Phone='" + Phn + "', PCPFirstName='" + Pfn + "' , PCPLastName='" + Pln + "' , PCPPhone='" + Pphn + "' , GuardianFirstName='" + Gfn + "' , GuardianLastName='" + Gln + "' where LoginId = "+lgnid;
            return da.update_patientdetails(sel);
        }

        public DataSet seluserdetails()
        {
            string sel = "select UserName ,Emailid from tblUserDetails where LoginId = " + lgnid;
            return da.select_tblUserDetails(sel);
        }

        public int upduserdetails()
        {
            string upd = "update tblUserDetails set  EMailId = '" + emailid + "' where LoginId = " + lgnid;
            return da.update_tblUserDetails(upd);
        }

        public DataSet getimage()
        {
            string sel = "select ImageUrl from tblPatientDetails where LoginId = " + lgnid;
            return da.select_Details(sel);
        }

        public int checkage()
        {
            DateTime t1 = DateTime.Now;
            DateTime t2 = dob;
            TimeSpan t = t1.Subtract(t2);
            double d = t.TotalDays / 365.25;
            return Convert.ToInt32(d);
        }
    }
}
