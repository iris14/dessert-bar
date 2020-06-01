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
        /*public DataSet showDessertSort(ThreeLayer.Model.DessertSort dessertSort)
        {
            string strsql="select * from DessertSort where SortId="+dessertSort.SortName
        }*/
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
            //后台返回用户发布的教程，以倒序来显示
            string strsql = "select DessertCourse.CourseId, DessertCourse.CourseTitle,  DessertCourse.CourseTag,DessertCourse.CourseComment, DessertCourse.CourseCover, DessertCourse.CourseBrowse,DessertCourse.CourseCheck, DessertLable.LableTitle,DessertCourse.CourseTime from DessertCourse inner join DessertLable on DessertCourse.LableId = DessertLable.LableId  where DessertCourse.UserId='" + dessertCourse.UserId + "'";
            //string strsql = "select DessertCourse.CourseId, DessertCourse.CourseTitle, DessertCourse.CourseTime, DessertCourse.CourseTag,DessertCourse.CourseComment, DessertCourse.CourseCover, DessertCourse.CourseBrowse,DessertCourse.CourseCheck, DessertCourse.SortId, DessertCourse.LableId from DessertCourse where DessertCourse.UserId='" + dessertCourse.UserId + "'";
            sqlHelper sqlHelper = new sqlHelper();
            DataSet ds = new DataSet();
            ds = sqlHelper.ReadRecordDS(strsql);
            return ds;
        }
    }
}
