using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace ThreeLayer.BLL
{
    public class CheckManagement
    {
        public DataSet showUncheckedCourse()
        {
            DAL.CheckService checkService = new DAL.CheckService();
            DataSet ds = checkService.selectUncheckedCourse();
            return ds;
        }
        public int checkUpdateUnchacked(Model.DessertCourse dessertCourse, Model.DessertFood dessertFood, Model.Users users)
        {
            DAL.CheckService checkService = new DAL.CheckService();
            int status = checkService.UpdateUncheckedCourse(dessertCourse, dessertFood, users);
            return status;
        }
    }
}
