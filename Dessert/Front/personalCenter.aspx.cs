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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //测试
            Session["userid"] = 1;
            //传入userid并获取对应用户甜品教程数据
            int userId = Convert.ToInt32(Session["userid"]);
            ThreeLayer.BLL.DessertManagement myDesserManage = new ThreeLayer.BLL.DessertManagement();
            ThreeLayer.Model.DessertCourse myCourse = new ThreeLayer.Model.DessertCourse();
            myCourse.UserId = userId;
            DataSet courseData = myDesserManage.showUserCourse(myCourse);
            if (courseData.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = courseData;
                DataList1.DataBind();
            }
            else
            {
                Label1.Text = "暂未发表过甜品教程，快去发表吧！";
            }
        }
    }
}