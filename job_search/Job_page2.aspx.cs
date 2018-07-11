using System;
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
    public partial class Job_page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lblmesaj.Visible = false;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Select * from Ilanlar where ID=@ilanid";
            cmd.Parameters.AddWithValue("@ilanid", basvurularim.ilanidb);
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
            }
            catch (Exception ex)
            {
                lblmesaj.ForeColor = Color.Red;
                lblmesaj.Text = "Başvuru işlemi başarısız.";
                lblmesaj.Visible = true;
            }


        }
    }
}