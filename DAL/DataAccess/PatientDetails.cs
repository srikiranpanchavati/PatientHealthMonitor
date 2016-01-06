using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DataAccess
{
    public class PatientDetails
    {
        
        PHM_Data p;
        public PatientDetails()
        {
            p = new PHM_Data();
            p.connect();


        }
        public int insertdb(string q)
        {
            int i = 0;
            try
            {
               
                p.con.Open();
                p.cmd = new SqlCommand(q, p.con);
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


        public DataSet select_Details(string sel)
        {
            DataSet ds = new DataSet();
            try
            {
               
                p.con.Open();
                p.cmd = new SqlCommand(sel, p.con);
                p.dad = new SqlDataAdapter(p.cmd);
                p.dad.Fill(ds, "tblPatientDetails");
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                p.con.Close();
            }
            return ds;

        }

        public int update_patientdetails(string update)
        {
            int res = 0;
            p.con.Open();
            try
            {
                p.cmd = new SqlCommand(update, p.con);
                res = p.cmd.ExecuteNonQuery();
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

        public DataSet select_tblUserDetails(string sel)
        {
            DataSet ds = new DataSet();
            try
            {
                p.con.Open();
                p.cmd = new SqlCommand(sel, p.con);
                p.dad = new SqlDataAdapter(p.cmd);
                p.dad.Fill(ds, "tblUserDetails");
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                p.con.Close();
            }
            return ds;

        }

        public int update_tblUserDetails(string update)
        {
            int res = 0;
            try
            {
                p.con.Open();
                p.cmd = new SqlCommand(update, p.con);
                res = p.cmd.ExecuteNonQuery();
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

        
    }
}
