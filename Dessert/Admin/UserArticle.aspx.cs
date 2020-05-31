using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Dessert.Admin
{
    public partial class UserArticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["UserId"] != null)
            {
                ThreeLayer.BLL.DessertManagement dessert = new ThreeLayer.BLL.DessertManagement();
                ThreeLayer.Model.DessertCourse dessertCourse = new ThreeLayer.Model.DessertCourse();
                dessertCourse.UserId = Convert.ToInt32(Request["UserId"]);
                DataSet ds = dessert.ShowUserAllCourse(dessertCourse);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                }
                else
                {

                }
            }
            else
            {
                Response.Redirect("UserManage.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserManage.aspx");
        }
    }
}