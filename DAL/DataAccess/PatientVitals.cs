using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DataAccess
{
    public class PatientVitals
    {
        PHM_Data p;
        public PatientVitals()
        {
            p = new PHM_Data();
            p.connect();
        }

        public int bmi_insert(string ins)
        {
            int res = 0;
            try
            {
                p.con.Open();
                p.cmd = new SqlCommand(ins, p.con);
                //p.cmd = new SqlCommand("insert into tblPatientVitals (LoginId, Height, Weight, BMI, CreatedDate) values (@loginid, @height, @weight, @BMI, @createddate)", p.con);
                //p.cmd.Parameters.AddWithValue("@loginid",123);
                //p.cmd.Parameters.AddWithValue("@height",);
                //p.cmd.Parameters.AddWithValue("",);
                //p.cmd.Parameters.AddWithValue("",);
                //p.cmd.Parameters.AddWithValue("",);
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

        public DataSet bmi_sel(string sel)
        {
            DataSet ds = new DataSet();
            try
            {
                p.con.Open();
                p.cmd = new SqlCommand(sel, p.con);
                p.dad = new SqlDataAdapter();
                p.dad.SelectCommand = p.cmd;
                p.dad.Fill(ds, "tblPatientVitals");
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

        public int glucose_insert(string ins)
        {
            int res = 0;
            try
            {
                p.con.Open();
                p.cmd = new SqlCommand(ins, p.con);
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

        public DataTable glucose_select(string sel)
        {
            DataTable dt = new DataTable();
            try
            {
                p.con.Open();
                p.dad = new SqlDataAdapter();
                p.cmd = new SqlCommand(sel, p.con);
                p.dad.SelectCommand = p.cmd;
                p.dad.Fill(dt);
            }
            catch (Exception e)
            {
                
                throw e;
            }
            finally
            {
                p.con.Close();
            }
            return dt;
        }
    }
}
