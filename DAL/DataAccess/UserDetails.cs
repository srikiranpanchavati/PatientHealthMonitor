using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DataAccess
{
   public class UserDetails
    {
       PHM_Data p;
        public UserDetails()
        {
            p = new PHM_Data();
            p.connect();
        }
       public int logindb(string query)
       {
           int res;
           try
           {
               p.con.Open();
               p.cmd = new SqlCommand(query, p.con);
               res = (int)p.cmd.ExecuteScalar();
           }
           catch (Exception e)
           {
               
               throw e;
           }
           finally
           {
               p.con.Close();
           }
           return res;
           
       }

       public int insertreg(string ins)
       {
           int i;
           try
           {
               p.con.Open();
               p.cmd = new SqlCommand(ins, p.con);
               i = p.cmd.ExecuteNonQuery();
           }
           catch (Exception e)
           {
               
               throw e;
           }
           finally
           {
               p.con.Close();
           }
           return i;
       }
       public int dispid(string disp)
       {
           int i =0;
           try
           {
               p.con.Open();
               p.cmd = new SqlCommand(disp, p.con);
               p.dr = p.cmd.ExecuteReader();
               while (p.dr.Read())
               {
                   i = (int)p.dr["LoginId"];
               }
           }
           catch (Exception e)
           {
               
               throw e;
           }
           finally
           {
               p.con.Close();
           }
           return i;
       }
    }
}
