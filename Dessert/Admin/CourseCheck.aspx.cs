using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Dessert.Admin
{
    public partial class CourseCheck : System.Web.UI.Page
    {
        public int LabelCount;
        protected void Page_Load(object sender, EventArgs e)
        {
            ThreeLayer.BLL.CheckManagement check = new ThreeLayer.BLL.CheckManagement();
            DataSet ds = check.showUncheckedCourse();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
            
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}