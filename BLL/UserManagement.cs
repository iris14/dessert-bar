using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ThreeLayer.BLL
{
    public class UserManagement
    {
        public int CheckUser(ThreeLayer.Model.Users myUser)
        {
            //判断model层的用户电话和密码是否和数据库中的匹配
            ThreeLayer.DAL.UsersService usersService = new ThreeLayer.DAL.UsersService();
            int userid = usersService.LoginUser(myUser);
            if (userid!=0)
            {
                return userid;
            }
            else
            {
                return 0;
            }
        }
        public bool CheckRegister(ThreeLayer.Model.Users myUser)
        {
            //判断注册信息是否导入数据库中，并且导入是否正确
            ThreeLayer.DAL.UsersService UserRegister = new ThreeLayer.DAL.UsersService();
            if (UserRegister.InserUser(myUser) == true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
