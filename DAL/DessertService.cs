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
    }
}
