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
        public DataSet showDessertSort(ThreeLayer.Model.DessertSort dessertSort)
        {
            string strsql="select * from DessertSort where SortId="+dessertSort.SortName
        }
    }
}
