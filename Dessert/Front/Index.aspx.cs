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