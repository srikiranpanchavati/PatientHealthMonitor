using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using System.Data;

namespace BussinessLayer
{
    
    public class BMICalc
    {
        
        PatientVitals pv;
        public BMICalc()
        {
            pv = new PatientVitals();
        }

        public double loginid
        {
            get;
            set;
        }
        
        public double height
        {
            get;
            set;
        }

        public double weight
        {
            get;
            set;
        }

        public double bmi
        {
            get;
            set;
        }
        public int calcBMI()
        {
            bmi = weight / (height * height);
            string ins = "insert into tblPatientVitals (LoginId, Height, Weight, BMI, CreatedDate) values ("+loginid+"," + height + "," + weight + "," + bmi + ",'" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "')";
            return pv.bmi_insert(ins); 
        }

        public DataSet select()
        {
            string sel = "select CreatedDate, Height, Weight, BMI from tblPatientVitals where LoginId = " + loginid + " order by CreatedDate desc";
            DataSet ds = pv.bmi_sel(sel);
            ds.Tables["tblPatientVitals"].Columns[0].ColumnName = "Date";
            return ds;
        }
    }

     public class GlucSave
    {
          PatientVitals pv;
          public GlucSave()
          {
              pv = new PatientVitals();
          }
         public double loginid
         {
             get;
             set;
         }

         public int timeofday
         {
             get;
             set;
         }

         public double glucosereading
         {
             get;
             set;
         }

         public string notes
         {
             get;
             set;
         }

         public int glureading_insert()
         {
             string ins = "insert into tblGlucose (LoginId, TimeofDay, GlucoseReading, Notes, CreatedDate) values (" + loginid + "," + timeofday + "," + glucosereading + ",'" + notes + "','"+DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") +"')";
             return pv.glucose_insert(ins);
         }

         public DataTable glureading_select()
         {
             DataTable dt = new DataTable();
             string sel = "select CreatedDate, TimeofDay, GlucoseReading, Notes from tblGlucose where LoginId = " + loginid + "order by CreatedDate desc";
             dt= pv.glucose_select(sel);
             dt.Columns.Add("Time", typeof(string));
             
             foreach (DataRow dr in dt.Rows)
             {
                 //need to set value to MyRow column
                 int i = Convert.ToInt16( dr["TimeofDay"]);
                 switch (i)
                 {
                     case 1: dr["Time"] = "Morning";
                         break;
                     case 2: dr["Time"] = "Afternoon";
                         break;
                     case 3: dr["Time"] = "Evening";
                         break;
                  }
                    // or set it to some other value
             }
             dt.Columns[0].ColumnName = "Date";
             dt.Columns.RemoveAt(1);
             dt.Columns[3].SetOrdinal(1);

            return dt;
         }
    }
   
}
