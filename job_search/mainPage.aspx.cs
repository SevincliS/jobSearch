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
using Pagination;
using job_search;

namespace job_search
{
    public partial class mainPage : System.Web.UI.Page
    {

        public static int ilanid;
        

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


            if (Session["Kullanici"]!=null)
            {
                BindRepeater();
            }
            else
            {
                Response.Redirect("/index.aspx");
            }
            
            
        }

        protected void rpilan_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            DataRowView dataRow = (DataRowView)e.Item.DataItem;
            Label lbl = (Label)e.Item.FindControl("lblilanid");
            ilanid = Convert.ToInt32(lbl.Text);
            Response.Redirect("jobPage.aspx");
        }

        private void BindRepeater()
        {
            //Do your database connection stuff and get your data
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            cmd.CommandText = "Select * from Ilanlar";

            //save the result in data table
            DataTable dt = new DataTable();
            ad.SelectCommand = cmd;
            ad.Fill(dt);

            //Create the PagedDataSource that will be used in paging
            PagedDataSource pgitems = new PagedDataSource();
            pgitems.DataSource = dt.DefaultView;
            pgitems.AllowPaging = true;

            //Control page size from here 
            pgitems.PageSize = 12;
            pgitems.CurrentPageIndex = PageNumber;
            if (pgitems.PageCount > 1)
            {
                rptPaging.Visible = true;
                ArrayList pages = new ArrayList();
                for (int i = 0; i <= pgitems.PageCount - 1; i++)
                {
                    pages.Add((i + 1).ToString());
                }
                rptPaging.DataSource = pages;
                rptPaging.DataBind();
            }
            else
            {
                rptPaging.Visible = false;
            }

            //Finally, set the datasource of the repeater
            rpilan.DataSource = pgitems;
            rpilan.DataBind();
        }

        //This method will fire when clicking on the page no link from the pager repeater
        protected void rptPaging_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {
            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            BindRepeater();
        }

        protected void rpilan_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
        }

    }
}