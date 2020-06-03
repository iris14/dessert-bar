using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace ThreeLayer.DAL
{
    public class CheckService
    {
        public DataSet selectUncheckedCourse()
        {
            string strsql = "select * from [Checked] where CourseCheck=N'未审核'";
            sqlHelper sqlHelper = new sqlHelper();
            DataSet ds = sqlHelper.ReadRecordDS(strsql);
            return ds;
        }
        public int UpdateUncheckedCourse(Model.DessertCourse dessertCourse,Model.DessertFood dessertFood,Model.Users users)
        {
            string Coursesql = "update DessertCourse set SortId='" + dessertCourse.SortId + "',CourseCheck=N'" + dessertCourse.CourseCheck + "',CourseQuality='" + dessertCourse.CourseQuality + "' where CourseId='" + dessertCourse.CourseId + "'";
            string Foodsql = "update DessertFood set Calorie='" + dessertFood.Calorie + "' where CourseId='" + dessertCourse.CourseId + "'";
            string Usersql = "update Users set UserIntegration='" + (users.UserIntegration + 1) + "' where UserId='" + dessertCourse.UserId + "'";
            sqlHelper sql = new sqlHelper();
            int CourseStatus=sql.ModifyRecord(Coursesql);
            if (CourseStatus == 0)
            {
                int FoodStatus = sql.ModifyRecord(Foodsql);
                if (FoodStatus == 0)
                {
                    int UserStatus = sql.ModifyRecord(Usersql);
                    if (UserStatus == 0)
                    {
                        //成功
                        return 1;
                    }
                    else
                    {
                        //用户积分更新失败
                        return -2;
                    }
                }
                else
                {
                    //热量更新失败
                    return -1;
                }

                
            }
            else
            {   //审核更新出错
                return 0;
            }
        }
    }
}
