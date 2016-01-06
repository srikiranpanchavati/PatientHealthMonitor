using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;

namespace BussinessLayer
{
    public class UserReg
    {
        UserDetails ud = new UserDetails();
        private int log;

        public int Log
        {
            get { return log; }
            set { log = value; }
        }

        private string logid;

        public string Logid
        {
            get { return logid; }
            set { logid = value; }
        }
        private string pass;

        public string Pass
        {
            get { return pass; }
            set { pass = value; }
        }

        public string username
        {
            get;
            set;
        }

        public string emailid
        {
            get;
            set;
        }

        public int ulogin()
        {
            int check;
            string query = "select count(*) from tblUserDetails where LoginId =" + Logid + " and  pwdcompare('"+Pass+"',Password)=1"; // pwdcompare(@Password,Password)=1
            check = ud.logindb(query);
            return check;
        }

        public int userreg()
        {
            int res = 0 ;
            string ins = "insert into tblUserDetails (UserName, Password, EMailId) values ('" + username + "', pwdencrypt('" + Pass + "'), '" + emailid + "')";
            res = ud.insertreg(ins);
            if (res != 0)
            {
                string disp = "select LoginId from tblUserDetails where UserName ='" + username + "'";
                Log = ud.dispid(disp);
                return Log;
            }
            else
                return 0;
            
        }

    }
}
