using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dessert.Front
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            string strUserphone = TextBox1.Text.Trim();
            string strPassword = TextBox2.Text.Trim();
            //判断用户是否存在
            ThreeLayer.BLL.UserManagement myUserManage = new ThreeLayer.BLL.UserManagement();
            ThreeLayer.Model.Users myUser = new ThreeLayer.Model.Users();
            myUser.UserTel = strUserphone;
            myUser.UserPwd = strPassword;
            if(myUserManage.CheckUser(myUser) == 0)
            {
                Response.Write("<script>alert('手机号码或密码错误！')</script>");
            }
            else
            {
                Response.Redirect("Index.aspx?userid=" + myUser.UserId);
            }
        }
    }
}