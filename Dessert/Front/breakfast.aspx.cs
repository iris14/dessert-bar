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
    public partial class breakfast : System.Web.UI.Page
    {
        //创建一个分页数据源对象
        static PagedDataSource pds1 = new PagedDataSource();
        static PagedDataSource pds2 = new PagedDataSource();
        static PagedDataSource pds3 = new PagedDataSource();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDataList(0);
            }
        }

        private void BindDataList(int currentpage)
        {
            pds1.AllowPaging = true;
            pds1.PageSize = 8;
            pds1.CurrentPageIndex = currentpage;
            pds2.AllowPaging = true;
            pds2.PageSize = 8;
            pds2.CurrentPageIndex = currentpage;
            pds3.AllowPaging = true;
            pds3.PageSize = 8;
            pds3.CurrentPageIndex = currentpage;
            string strSql1 = "select * from DessertCourse where lableId=1";
            string strSql2 = "select * from DessertCourse where lableId=2";
            string strSql3 = "select * from DessertCourse where lableId=1";
            SqlConnection conn = new SqlConnection();
            //conn.ConnectionString = SqlDataSource1.ConnectionString;
            //更活用的连接方式
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            conn.Open();
            SqlDataAdapter sda1 = new SqlDataAdapter(strSql1, conn);
            SqlDataAdapter sda2 = new SqlDataAdapter(strSql2, conn);
            SqlDataAdapter sda3 = new SqlDataAdapter(strSql3, conn);
            DataSet ds1 = new DataSet();
            DataSet ds2 = new DataSet();
            DataSet ds3 = new DataSet();
            sda1.Fill(ds1);
            sda2.Fill(ds2);
            sda3.Fill(ds3);
            pds1.DataSource = ds1.Tables[0].DefaultView;
            pds2.DataSource = ds2.Tables[0].DefaultView;
            pds3.DataSource = ds3.Tables[0].DefaultView;
            DataList1.DataSource = pds1;
            DataList1.DataBind();
            DataList2.DataSource = pds2;
            DataList2.DataBind();
            DataList3.DataSource = pds3;
            DataList3.DataBind();
            conn.Close();


        }
    }
}