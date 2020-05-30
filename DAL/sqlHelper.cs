using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace ThreeLayer.DAL
{
    public class sqlHelper
    {
        string strconn = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        public DataSet ReadRecordDS(string strSQL)
        {
            //非连接环境查看数据库数据，返回dataset对象
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = strconn;
            conn.Open();

            SqlDataAdapter myda = new SqlDataAdapter(strSQL, conn);
            DataSet ds = new DataSet();
            myda.Fill(ds);

            conn.Close();
            return ds;
        }
        public SqlDataReader ReadRecord(string strSQL)
        {
            //已连接环境查看数据库数据，返回datareader对象，可对数据进行访问,要记得对其进行关闭
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = strconn;
            conn.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = strSQL;

            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            return dr;

        }
        public int ModifyRecord(string strSQL)
        {
            //已连接环境修改数据库数据，修改成功返回0，修改失败返回1
            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = strconn;
                conn.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = strSQL;

                cmd.ExecuteNonQuery();
                cmd.Dispose();
                conn.Close();
                return 0;
            }
            catch (Exception ex)
            {
                return 1;
            }
        }
    }
}
