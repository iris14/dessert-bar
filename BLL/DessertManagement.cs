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
            ThreeLayer.DAL.DessertService dessertService = new ThreeLayer.DAL.DessertService();
            DataSet dataSet = dessertService.selectUserPassCourse(dessert);
            return dataSet;
        }
    }
}
