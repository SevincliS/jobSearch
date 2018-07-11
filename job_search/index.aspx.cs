using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_search
{
    public partial class signInPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            lblhata.Visible = false;     
        }

        protected void btnKaydolYonlendir_Click(object sender, EventArgs e)
        { 
            Response.Redirect("signUpPage.aspx");
           
        }

        protected void btngiris_Click(object sender, EventArgs e)
        {
           
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            conn.Open();
            SqlCommand cmd = new SqlCommand("select COUNT(1) from Kullanicilar k where k.[E-Posta]=@eposta and k.sifre=@sifre;", conn);
            cmd.Parameters.AddWithValue("@eposta",txtemail.Text);
            cmd.Parameters.AddWithValue("@sifre", txtsifre.Text);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count==1)
            {
                Session["Kullanici"] = txtemail.Text;
                Response.Redirect("mainPage.aspx");

            }
            else
            {
                lblhata.Visible = true;
            }
        }
    }
}