using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace ThreeLayer.DAL
{
    public class UsersService
    {
        public bool IsUser(ThreeLayer.Model.Users myUser)
        {
            //判断是否为用户
            string strSql = "select * from [Users] where UserTel='" + myUser.UserTel + "' and UserPwd='" + myUser.UserPwd + "'";
            sqlHelper sqlHelper = new sqlHelper();
            DataSet dataSet = sqlHelper.ReadRecordDS(strSql);
            if (dataSet.Tables[0].Rows.Count > 0) return true;
            else return false;
        }

        public bool InserUser(ThreeLayer.Model.Users myUser)
        {
            //插入用户信息
            string strSql = "insert into [Users](UserName,UserTel,UserPwd,UserGender,UserCard,UserTime) values('" + myUser.UserName + "','" + myUser.UserTel + "','" + myUser.UserPwd + "','女','" + myUser.UserCard + "','" + myUser.UserTime + "')";
            
            sqlHelper sqlHelper = new sqlHelper();
            int status = sqlHelper.ModifyRecord(strSql);
            if (status != 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        public int CheckCard(ThreeLayer.Model.Users myUser)
        {
            //忘记密码,检验身份证
            string strsql = "select UserTel from [Users] where UserCard='" + myUser.UserCard + "'";
            sqlHelper sqlHelper = new sqlHelper();
            DataSet dataSet = sqlHelper.ReadRecordDS(strsql);
            if (dataSet.Tables[0].Rows.Count > 0)
            {
                
            }
            
        }

        public bool UpdatePwd(ThreeLayer.Model.Users myUser)
        {
            string strsql="update [Users] set "
        }
    }
}
