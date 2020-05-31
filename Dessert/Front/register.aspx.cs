using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dessert.Front
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strUserphone = TextBox1.Text.Trim();
            string strUsercard = TextBox2.Text.Trim();
            string strUserpwd = TextBox3.Text.Trim();
            string strUsername = TextBox5.Text.Trim();
            //判断注册是否成功
            ThreeLayer.BLL.UserManagement myUserManage = new ThreeLayer.BLL.UserManagement();
            ThreeLayer.Model.Users myUser = new ThreeLayer.Model.Users();
            myUser.UserTel = strUserphone;
            myUser.UserCard = strUsercard;
            myUser.UserName = strUsername;
            myUser.UserPwd = strUserpwd;
            myUser.UserTime = DateTime.Now;
            if(myUserManage.CheckRegister(myUser) == true)
            {
                Response.Redirect("registerSuc.aspx");
            }
            else
            {
                Response.Write("<script>alert('注册失败！')</script>");
            }
        }
    }
}