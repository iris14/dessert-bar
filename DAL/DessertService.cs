using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace ThreeLayer.DAL
{
    public class DessertService
    {
       
        public DataSet selectUserPassCourse(ThreeLayer.Model.DessertCourse dessertCourse)
        {
            //返回用户发布的教程，以倒序来显示
            string strsql = "select * from DessertCourse where UserId='" + dessertCourse.UserId + "' order by CourseTime desc ";
            sqlHelper sqlHelper = new sqlHelper();
            DataSet ds = new DataSet();
            ds = sqlHelper.ReadRecordDS(strsql);
            return ds;
        }
        public DataSet selectUserAllCourse(ThreeLayer.Model.DessertCourse dessertCourse)
        {
            //后台返回用户发布的教程，以倒序来显示，含标签
            string strsql = "select DessertCourse.CourseId, DessertCourse.CourseTitle,  DessertCourse.CourseTag,DessertCourse.CourseComment, DessertCourse.CourseCover, DessertCourse.CourseBrowse,DessertCourse.CourseCheck, DessertLable.LableTitle,DessertCourse.CourseTime from DessertCourse inner join DessertLable on DessertCourse.LableId = DessertLable.LableId  where DessertCourse.UserId='" + dessertCourse.UserId + "'";
            sqlHelper sqlHelper = new sqlHelper();
            DataSet ds = new DataSet();
            ds = sqlHelper.ReadRecordDS(strsql);
            return ds;
        }

        public DataSet selectUserOneData(ThreeLayer.Model.DessertCourse dessertCourse)
        {
            //提取指定用户的某一条甜品表的信息,根据教程id ,调用视图
            string strsql = "select * from [ArticleCourse] where CourseId='"+dessertCourse.CourseId+"'";
            sqlHelper sqlHelper = new sqlHelper();
            DataSet ds = new DataSet();
            ds= sqlHelper.ReadRecordDS(strsql);
            return ds;
        }
        public int InsertUserCourse(ThreeLayer.Model.DessertCourse dessertCourse,ThreeLayer.Model.DessertFood dessertFood)
        {
            //返回CourseId
            dessertCourse.CourseBrowse = 0;
            dessertCourse.CourseTag = 0;
            dessertCourse.CourseComment = 0;
            dessertCourse.CourseUserAdmin = 0;
            dessertCourse.CourseQuality = 0;
            dessertCourse.CourseCheck = "未审核";
            string strsql= "insert into DeesertCourse (UserId,CourseTitle,CourseTime,CourseTag,CourseComment,CourseCover,CourseBrowse,CourseCheck,CourseUserAdmin,CourseQuality) values ('"+dessertCourse.UserId+"','"+dessertCourse.CourseTitle+"','"+dessertCourse.CourseTime+"','"+dessertCourse.CourseTag+"','"+dessertCourse.CourseTag+"','"+dessertCourse.CourseComment+"','"+dessertCourse.CourseCover+"','"+dessertCourse.CourseBrowse+"','"+dessertCourse.CourseCheck+"','"+dessertCourse.CourseUserAdmin+"','"+dessertCourse.CourseQuality+"')";
            sqlHelper sqlHelper = new sqlHelper();
            if (sqlHelper.ModifyRecord(strsql)==1)
            {
                //教程表传入
                string Coursesql = "select CourseId from DessertCourse where UserId='" + dessertCourse.UserId + "' and CourseTitle='" + dessertCourse.CourseTitle + "' and CourseTime='" + dessertCourse.CourseTime + "'";
                DataSet ds = sqlHelper.ReadRecordDS(Coursesql);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    //提取CourseId
                    int CourseId = Convert.ToInt32(ds.Tables[0].Rows[0]["CourseId"]);
                    string Foodsql = "insert into DessertFood(FoodName) values ('" + dessertFood.FoodName + "')";
                    if (sqlHelper.ModifyRecord(Foodsql) == 1)
                    {
                        //提取CourseId，添加食材表，食材添加成功返回CourseId
                        string Usersql = "select UserIntegration from Users where UserId='" + dessertCourse.UserId + "'";
                        DataSet data= sqlHelper.ReadRecordDS(Usersql);
                        int UserIntegration = Convert.ToInt32(data.Tables[0].Rows[0]["UserIntegration"]);
                        string Updatesql = "update Users set UserIntegration='" + UserIntegration + "' where UserId='" + dessertCourse.UserId + "'";
                        if (sqlHelper.ModifyRecord(Updatesql) == 1)
                        {
                            return CourseId;
                        }
                        else
                        {
                            //用户积分添加有误
                            return -3;
                        }
                        
                    }
                    else
                    {
                        string Deletesql = "delete DessertCourse where CourseId='" + CourseId + "'";
                        if (sqlHelper.ModifyRecord(Deletesql) == 1)
                        {
                            //Food表添加有误
                            return -1;
                        }
                        else
                        {
                            //Course表删除有误
                            return -2;
                        }
                    }
                }
            }
            else
            {
                //Course表添加有误
                return 0;
            }
            return 0;
        }
        public int InsertImage(ThreeLayer.Model.DessertImage dessertImage)
        {
            string strsql = "insert into DessertImage (CourseId,ImageFile,CourseDetail,DessertStep) values ('" + dessertImage.CourseId+"','" + dessertImage.ImageFile + "','" + dessertImage.CourseDetail + "','"+dessertImage.DessertStep+"')";
            sqlHelper sqlHelper = new sqlHelper();
            int status = sqlHelper.ModifyRecord(strsql);
            return status;
        }
        public int InsertCourseLabel(ThreeLayer.Model.CourseLable courseLable)
        {
            string strsql = "insret into CourseLabel(Id,CourseId,LabelId) values ('" + courseLable.Id + "','" + courseLable.CourseId + "','" + courseLable.LableId + "')";
            sqlHelper sqlHelper = new sqlHelper();
            int status = sqlHelper.ModifyRecord(strsql);
            return status;
        }
    }
}
