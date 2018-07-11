using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace job_search
{
    public partial class jobPage : System.Web.UI.Page
    {

        public static int kid;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmesaj.Visible = false;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Select * from Ilanlar where ID=@ilanid";
            cmd.Parameters.AddWithValue("@ilanid",mainPage.ilanid);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                lblIs.Text = dr[1].ToString();
                lblIsVeren.Text = dr[2].ToString();
                lblKonum.Text = dr[3].ToString();
                txtTanim.Text = dr[4].ToString();
                txtGereklilikler.Text = dr[5].ToString();
                lblTarih.Text = DateTime.Today.ToShortDateString();
            }
            dr.Close();
            conn.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn1 = new SqlConnection();
            conn1.ConnectionString= conn1.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            SqlCommand cmd1 = new SqlCommand();
            SqlCommand cmd3 = new SqlCommand();
            conn1.Open();
            cmd1.Connection = conn1;
            cmd3.Connection = conn1;
            cmd3.CommandText = "select ID from Kullanicilar where [E-Posta]='" + Session["Kullanici"] + "'";
            cmd1.CommandText = "select COUNT(b.ilanID) from Basvurulan b where b.kullaniciID=@kullaniciID and b.ilanID=@ilanID";
            DataSet ds1 = new DataSet();
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd3;
            da1.Fill(ds1);
            string kullaniciID1 = ds1.Tables[0].Rows[0]["ID"].ToString();
            cmd1.Parameters.AddWithValue("@kullaniciID",kullaniciID1);
            cmd1.Parameters.AddWithValue("@ilanID",mainPage.ilanid);
            int count = Convert.ToInt32(cmd1.ExecuteScalar());
            if (count != 1)
            {
                try
                {
                    SqlConnection conn = new SqlConnection();
                    conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                    SqlCommand cmd = new SqlCommand();
                    SqlCommand cmd2 = new SqlCommand();
                    conn.Open();
                    cmd2.Connection = conn;
                    cmd.Connection = conn;
                    cmd2.CommandText = "select ID from Kullanicilar where [E-Posta]='" + Session["Kullanici"] + "'";
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd2;
                    da.Fill(ds);
                    string kullaniciID = ds.Tables[0].Rows[0]["ID"].ToString();
                    cmd.CommandText = "insert into Basvurulan(ilanID,kullaniciID) values (@ilanID,@kullaniciID)";
                    cmd.Parameters.AddWithValue("@ilanID", mainPage.ilanid);
                    cmd.Parameters.AddWithValue("@kullaniciID", kullaniciID);
                    cmd.ExecuteNonQuery();
                    da.Dispose();
                    conn.Close();
                    lblmesaj.Visible = true;
                    kid = Convert.ToInt32(kullaniciID);
                }
                catch (Exception ex)
                {
                    lblmesaj.ForeColor = Color.Red;
                    lblmesaj.Text = "Başvuru işlemi başarısız.";
                    lblmesaj.Visible = true;
                }
            }

            else
            {
                lblmesaj.ForeColor = Color.Red;
                lblmesaj.Text = "Bu ilana daha önce başvurdunuz.";
                lblmesaj.Visible = true;
            }
           
         


        }
    }
}