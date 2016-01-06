using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;


namespace DataAccess
{
    public class Diabetes
    {
        PHM_Data p;

        public Diabetes()
        {
            p = new PHM_Data();
            p.connect();
        }
        public string bpop(string p1)
        {
            string pop = " ";
            try
            {
                
                p.con.Open();
                p.cmd = new SqlCommand(p1, p.con);
                p.dr = p.cmd.ExecuteReader();
                while (p.dr.Read())
                {

                    pop = p.dr[0].ToString();
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
            
            return pop;
            
        }

        public int insertDb(string q)
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
        public DataSet displayDb(string s)
        {
            DataSet ds = new DataSet();
            try
            {
                p.con.Open();
                p.dad = new SqlDataAdapter();
                p.cmd = new SqlCommand(s, p.con);
                p.dad.SelectCommand = p.cmd;
                p.dad.Fill(ds, "tblDiabetes");
               
                ds.Tables["tblDiabetes"].Columns.RemoveAt(9);
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
    }
}
