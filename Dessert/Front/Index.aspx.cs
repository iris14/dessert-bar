using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Dessert.Front
{
    public partial class Index : System.Web.UI.Page
    {
        //创建一个分页数据源对象
        static PagedDataSource pds = new PagedDataSource();
        static PagedDataSource pds2 = new PagedDataSource();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDataList(0);
            }
        }

        private void BindDataList(int currentpage)
        {
            pds.AllowPaging = true;
            pds2.AllowPaging = true;
            pds.PageSize = 8;
            pds2.PageSize = 12;
            pds.CurrentPageIndex = currentpage;
            string strSql = "select * from Dessert";
            SqlConnection conn = new SqlConnection();
            //conn.ConnectionString = SqlDataSource1.ConnectionString;
            //更活用的连接方式
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter(strSql, conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            pds.DataSource = ds.Tables[0].DefaultView;
            pds2.DataSource = ds.Tables[0].DefaultView;
            DataList1.DataSource = pds;
            DataList2.DataSource = pds2;
            DataList1.DataBind();
            DataList2.DataBind();
            conn.Close();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            pds.CurrentPageIndex = pds.CurrentPageIndex - 1;
            BindDataList(pds.CurrentPageIndex);
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            pds.CurrentPageIndex = pds.CurrentPageIndex + 1;
            BindDataList(pds.CurrentPageIndex);
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}