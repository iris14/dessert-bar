using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace ThreeLayer.BLL
{
    public class DessertManagement
    {
        public DataSet showUserCourse(ThreeLayer.Model.DessertCourse dessert)
        {
            //返回用户的所有教程
            ThreeLayer.DAL.DessertService dessertService = new ThreeLayer.DAL.DessertService();
            DataSet dataSet = dessertService.selectUserPassCourse(dessert);
            return dataSet;
        }

        public DataSet ShowUserAllCourse(ThreeLayer.Model.DessertCourse dessert)
        {
            //后台返回用户的所有教程
            ThreeLayer.DAL.DessertService dessertService = new ThreeLayer.DAL.DessertService();
            DataSet dataSet = dessertService.selectUserAllCourse(dessert);
            return dataSet;
        }
        public DataSet showUserOneData(ThreeLayer.Model.DessertCourse dessert)
        {
            //返回用户指定文章，根据courseid
            ThreeLayer.DAL.DessertService dessertService = new ThreeLayer.DAL.DessertService();
            DataSet dataSet = dessertService.selectUserOneData(dessert);
            return dataSet;
        }
        }
    }


