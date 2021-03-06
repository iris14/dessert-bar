﻿using System;
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
        public int LoginUser(ThreeLayer.Model.Users myUser)
        {
            //判断是否为用户
            string strSql = "select UserId from [Users] where UserTel='" + myUser.UserTel + "' and UserPwd='" + myUser.UserPwd + "'";
            sqlHelper sqlHelper = new sqlHelper();
            DataSet dataSet = sqlHelper.ReadRecordDS(strSql);
            if (dataSet.Tables[0].Rows.Count > 0)
            {
                //返回userid
                int Userid = Convert.ToInt32(dataSet.Tables[0].Rows[0].ItemArray[0]);
                return Userid;

            }
            else
            {
                return 0;
            }
        }

        public bool InserUser(ThreeLayer.Model.Users myUser)
        {
            //插入用户信息
            string strSql = "insert into [Users](UserName,UserTel,UserPwd,UserGender,UserCard,UserTime,UserIntegration) values('" + myUser.UserName + "','" + myUser.UserTel + "','" + myUser.UserPwd + "',N'女','" + myUser.UserCard + "','" + myUser.UserTime + "','0')";
            
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
        /*public int CheckCard(ThreeLayer.Model.Users myUser)
        {
            //忘记密码,检验身份证
            string strsql = "select UserTel from [Users] where UserCard='" + myUser.UserCard + "'";
            sqlHelper sqlHelper = new sqlHelper();
            DataSet dataSet = sqlHelper.ReadRecordDS(strsql);
            if (dataSet.Tables[0].Rows.Count > 0)
            {
                
            }

        }*/

        public int UpdateUserDetail(ThreeLayer.Model.Users myUser) 
        {
            string strsql = "update [Users] set UserName=N'" + myUser.UserName + "',UserTel='" + myUser.UserTel + "',UserGender=N'" + myUser.UserGender + "',UserEmail='" + myUser.UserEmail + "' where UserId='" + myUser.UserId + "'";
            sqlHelper sqlHelper = new sqlHelper();
            int status=sqlHelper.ModifyRecord(strsql);
            return status;
        }
        public DataSet SelectPersonData(ThreeLayer.Model.Users users)
        {
            //调取用户信息
            string strsql = "select * from [Users] where UserId='" + users.UserId + "'";
            sqlHelper sqlHelper = new sqlHelper();
            DataSet ds = sqlHelper.ReadRecordDS(strsql);
            return ds;
        }

        public DataSet SelectAllData()
        {
            //调取用户信息
            string strsql = "select * from [Users]";
            sqlHelper sqlHelper = new sqlHelper();
            DataSet ds = sqlHelper.ReadRecordDS(strsql);
            return ds;
        }
    }
}
