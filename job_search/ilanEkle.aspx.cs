using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_search
{
    public partial class ilanEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("/index.aspx");
            }
            lblmesaj.Visible = false;
            
        }

        protected void btnKaydol_Click(object sender, EventArgs e)
        {
            Fonksiyonlar fonk = new Fonksiyonlar();
            fonk.IlanAdi = txtilanadi.Text;
            fonk.SirketAdi = txtsirketadi.Text;
            fonk.IlanKonumu = txtilankonumu.Text;
            fonk.Istanimi = txtistanimi.Text;
            fonk.ArananOzellikler = txtarananozellikler.Text;
            try
            {
                fonk.IlanEkle();
                lblmesaj.Visible = true;

            }
            catch (Exception ex)
            {
                lblmesaj.Text = "Ekleme işlemi başarısız.";
                lblmesaj.ForeColor = Color.Red;
                
                
            }
           

        }
    }
}