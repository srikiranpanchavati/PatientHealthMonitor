using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using System.Data;

namespace BussinessLayer
{
    public class RiskCalcBL
    {
        Diabetes da = new Diabetes();
        public int loginid;
        public int riskper;
        public DateTime today;

        private double bmi;
        public double Bmi
        {
            get { return this.bmi; }
            set { this.bmi = value; }
        }

        private double sysbp;
        public double Sysbp
        {
            get { return this.sysbp; }
            set { this.sysbp = value; }
        }

        private double disBp;
        public double DisBp
        {
            get { return this.disBp; }
            set { this.disBp = value; }
        }

        private double gluc;
        public double Gluc
        {
            get { return this.gluc; }
            set { this.gluc = value; }
        }

        private double hdl;
        public double Hdl
        {
            get { return this.hdl; }
            set { this.hdl = value; }
        }

        private double serum;
        public double Serum
        {
            get { return this.serum; }
            set { this.serum = value; }
        }

        public int CalculateRisk()
        {
            int gres = CalcGluc();
            if (gres == 999)
            {
                return 36;
            }
            else
            {
                int bmires = CalcBmi();
                int bpres = CalcBp();
                int hdlres = CalcHdl();
                int serumres = CalcSerum();
                int risk = bmires + bpres + gres + hdlres + serumres;
                int rp = riskPer(risk);
                return rp;
            }
        }

        public int CalcBmi()
        {
            int bmires = 0;
            if (Bmi < 25)
                bmires = 0;
            else if ((Bmi >= 25) && (Bmi <= 29.9))
                bmires = 2;
            else if (bmi >= 30)
                bmires = 5;
            return bmires;
        }

        public int CalcBp()
        {
            int bpres = 0;
            if ((sysbp >= 130) || (DisBp >= 85))
                bpres = 2;
            else
                bpres = 0;
            return bpres;
        }

        public int CalcGluc()
        {
            int gres = 0;
            if (Gluc > 126)
                gres = 999;
            else if (Gluc < 100)
                gres = 0;
            else if ((Gluc >= 100) && (Gluc <= 126))
                gres = 10;
            return gres;
        }

        public int CalcHdl()
        {
            int hdlres = 0;
            if (Hdl < 40)
                hdlres = 5;
            else if (Hdl >= 40)
                hdlres = 0;
            return hdlres;
        }

        public int CalcSerum()
        {
            int serumres = 0;
            if (Serum < 150)
                serumres = 0;
            else if (Serum >= 150)
                serumres = 3;
            return serumres;
        }

        public int riskPer(int risk)
        {
            int rp = 0;
            switch (risk)
            {
                case 11:
                case 12: rp = 4;
                    break;

                case 13: rp = 5;
                    break;

                case 14: rp = 6;
                    break;

                case 15: rp = 7;
                    break;

                case 16: rp = 9;
                    break;

                case 17: rp = 11;
                    break;

                case 18: rp = 13;
                    break;

                case 19: rp = 15;
                    break;

                case 20:
                case 21:
                case 22: rp = 25;
                    break;

                case 23:
                case 24:
                case 25: rp = 35;
                    break;

                default:
                    break;
            }
            return rp;
        }

        public int printRiskPer()
        {
            int msg;
            int res = CalculateRisk();
            if (res == 36)
                msg = 100;
            else if (res == 35)
                msg = 35;
            else
                msg = res;
            return msg;
        }
        public string prepop()
        {

            string p = "select top(1) BMI from tblPatientVitals where LoginId = "+loginid+" order by CreatedDate desc";
            string bpop = da.bpop(p);
            return bpop;
        }

        public int insert()
        {
            string q = "insert into tblDiabetes (LoginId,BMI,SystolicBP,DiastolicBP,GlucoseReading,HDLColesterolReading,SeriumTrygltReading,Risk,CreatedDate)values("+loginid+"," + Bmi + "," + Sysbp + "," + DisBp + "," + Gluc + "," + Hdl + "," + Serum + "," + riskper + ",'" + today.ToString("yyyy-MM-dd HH:mm:ss") + "')";
            int i = da.insertDb(q);
            return i;
        }

        public DataSet disDb()
        {
            DataSet ds;
            string s = "select * from tbldiabetes where LoginId = "+loginid+"";
            ds = da.displayDb(s);
            return ds;
        }
    }
}
