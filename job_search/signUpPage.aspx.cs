using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_search
{
    public partial class signUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmesaj.Visible = false;
        }

        protected void btnKaydol_Click(object sender, EventArgs e)
        {
            Fonksiyonlar fonk = new Fonksiyonlar();
            fonk.AdSoyad = txtisim.Text;
            fonk.E_Posta = txtemail.Text;
            fonk.sifre = txtsifre.Text;
            fonk.basvurulanID = 80000;
            fonk.KullaniciEkle();
            lblmesaj.Visible = true;
        }
    }
}