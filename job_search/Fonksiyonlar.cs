using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace job_search
{
    public class Fonksiyonlar
    {
        public string AdSoyad;
        public string E_Posta;
        public string sifre;
        public int basvurulanID;
        public string IlanAdi;
        public string SirketAdi;
        public string IlanKonumu;
        public string Istanimi;
        public string ArananOzellikler;
        public int ilanid;


        public static SqlParameter ParametreEkle(string parametreadi,object value, SqlDbType dbType,int size)
        {
            SqlParameter param = new SqlParameter();
            param.ParameterName = parametreadi;
            param.Value = value.ToString();
            param.SqlDbType = dbType;
            param.Size = size;
            param.Direction = ParameterDirection.Input;
            return param;



        }

        public static DataTable ExecuteProcedure(string procedurename,SqlParameter[] Params)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = procedurename;
            cmd.Parameters.AddRange(Params);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            try
            {
                da.Fill(dt);
            }
            catch (Exception ex)
            {

            }
            finally
            {
                da.Dispose();
                cmd.Parameters.Clear();
                cmd.Dispose();
                conn.Dispose();

            }

            return dt;


        }


       public void KullaniciEkle()
        {

            SqlParameter[] parameters = new SqlParameter[4];
            parameters[0] = ParametreEkle("@AdSoyad", AdSoyad, System.Data.SqlDbType.VarChar, 150);
            parameters[1] = ParametreEkle("@Eposta", E_Posta, System.Data.SqlDbType.VarChar, 150);
            parameters[2] = ParametreEkle("@sifre", sifre, System.Data.SqlDbType.VarChar, 50);
            parameters[3] = ParametreEkle("@BasvurulanilanID", basvurulanID, System.Data.SqlDbType.Int, 100);


            DataTable dt = ExecuteProcedure("dbo.KullaniciEkle",parameters);

        }

        public void IlanEkle()
        {
            SqlParameter[] parameters = new SqlParameter[5];
            parameters[0] = ParametreEkle("@IlanAdi", IlanAdi, System.Data.SqlDbType.VarChar, 150);
            parameters[1] = ParametreEkle("@SirketAdi", SirketAdi, System.Data.SqlDbType.VarChar, 150);
            parameters[2] = ParametreEkle("@IlanKonumu", IlanKonumu, System.Data.SqlDbType.VarChar, 50);
            parameters[3] = ParametreEkle("@IsTanimi", Istanimi, System.Data.SqlDbType.VarChar, 8000);
            parameters[4] = ParametreEkle("@ArananOzellikler",ArananOzellikler,System.Data.SqlDbType.VarChar,8000);

            DataTable dt = ExecuteProcedure("dbo.IlanEkle",parameters);
        }

    }
}