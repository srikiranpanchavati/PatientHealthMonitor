using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DataAccess
{
        
    public class PHM_Data
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataAdapter dad;
        public SqlDataReader dr;
        public void connect()
        {
            try
            {
                con = new SqlConnection("Data Source=PANCHAVATI\\SQLEXPRESS;Initial Catalog=PHM;Integrated Security=True");
            }
            catch (Exception e)
            {
            }
        }
        
    }
}

