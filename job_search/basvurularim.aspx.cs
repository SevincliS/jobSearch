using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_search
{
    public partial class basvurularim : System.Web.UI.Page
    {
        public static int ilanidb;
        public static int kid;
        public int PageNumber
        {
            get
            {
                if (ViewState["PageNumber"] != null)
                {
                    return Convert.ToInt32(ViewState["PageNumber"]);
                }
                else
                {
                    return 0;
                }
            }
            set { ViewState["PageNumber"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Kullanici"] != null)
            {
                BindRepeater();
            }
            else
            {
                Response.Redirect("/index.aspx");
            }
        }

        protected void btnilanagit_Click(object sender, EventArgs e)
        {

        }
        private void BindRepeater()
        {
            //Do your database connection stuff and get your data
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = conn;
            conn.Open();
            cmd.CommandText = "select * from Ilanlar i inner join Basvurulan b on b.ilanID=i.ID where kullaniciID=@KullaniciID";
            cmd.Connection = conn;
            cmd2.CommandText = "select ID from Kullanicilar where [E-Posta]='" + Session["Kullanici"] + "'";
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd2;
            da.Fill(ds);
            string kullaniciID = ds.Tables[0].Rows[0]["ID"].ToString();
            kid = Convert.ToInt32(kullaniciID);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@KullaniciID", kullaniciID);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            

            //Create the PagedDataSource that will be used in paging
            PagedDataSource pgitems = new PagedDataSource();
            pgitems.DataSource = dt.DefaultView;
            pgitems.AllowPaging = true;

            //Control page size from here 
            pgitems.PageSize = 9;
            pgitems.CurrentPageIndex = PageNumber;
            if (pgitems.PageCount > 1)
            {
                rptPaging2.Visible = true;
                ArrayList pages = new ArrayList();
                for (int i = 0; i <= pgitems.PageCount - 1; i++)
                {
                    pages.Add((i + 1).ToString());
                }
                rptPaging2.DataSource = pages;
                rptPaging2.DataBind();
            }
            else
            {
                rptPaging2.Visible = false;
            }

            //Finally, set the datasource of the repeater
            rpbasvuru.DataSource = pgitems;
            rpbasvuru.DataBind();
        }


        protected void rpbasvuru_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            DataRowView dataRow = (DataRowView)e.Item.DataItem;
            Label lbl = (Label)e.Item.FindControl("lblilanid");
            ilanidb = Convert.ToInt32(lbl.Text);
            Response.Redirect("Job_page2.aspx");
        }

        protected void rptPaging2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            BindRepeater();
        }

        protected void btncikar_Click(object sender, EventArgs e)
        {
            Button b = sender as Button;
            Label lbl = (Label)b.Parent.FindControl("lblilanid");
            ilanidb = Convert.ToInt32(lbl.Text);
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            conn.Open();
            cmd.Connection = conn;
            cmd.CommandText = "delete from Basvurulan where ilanID = @ilanid and kullaniciID=@kullaniciID";
            cmd.Parameters.AddWithValue("@ilanid",ilanidb);
            cmd.Parameters.AddWithValue("@kullaniciID",kid);
            
            cmd.ExecuteNonQuery();
            conn.Close();
            BindRepeater();

                
        }
    }
}