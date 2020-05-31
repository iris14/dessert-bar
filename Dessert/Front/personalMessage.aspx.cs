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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //测试
            Session["userid"] = 1;
            //传入userid并获取对应用户甜品教程数据
            int userId = Convert.ToInt32(Session["userid"]);
            ThreeLayer.BLL.UserManagement myUserManage = new ThreeLayer.BLL.UserManagement();
            ThreeLayer.Model.Users myUser = new ThreeLayer.Model.Users();
            myUser.UserId = userId;
            DataSet userData = myUserManage.showUserData(myUser);
            if (userData.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = userData;
                DataList1.DataBind();
            }
            else
            {
                Label1.Text = "暂无资料！";
            }
        }
    }
}