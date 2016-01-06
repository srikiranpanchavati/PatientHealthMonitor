using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Patient_profile
{
    /// <summary>
    /// Summary description for getImage
    /// </summary>
    public class getImage : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");
            SqlConnection myConnection = new SqlConnection(@"Data Source=PANCHAVATI\SQLEXPRESS;Initial Catalog=PHM;Integrated Security=True");
            myConnection.Open();
            string sql = "Select ImageUrl from tblPatientDetails where LoginId=@lgnid";
            SqlCommand cmd = new SqlCommand(sql, myConnection);
            cmd.Parameters.Add("@lgnid", SqlDbType.Int).Value = context.Request.QueryString["id"];
            // cmd.Prepare(); 
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //context.Response.ContentType = dr["Image_Type"].ToString(); 
                context.Response.BinaryWrite((byte[])dr["ImageUrl"]);
            }
            else
            {
                
            }
            dr.Close();
            myConnection.Close(); 

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}