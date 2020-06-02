using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dessert.Front
{
    public partial class dessertCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["CourseId"] = 1;
            int courseId = Convert.ToInt32(Session["CourseId"]);
            ThreeLayer.BLL.DessertManagement myDesserManage = new ThreeLayer.BLL.DessertManagement();
            ThreeLayer.Model.DessertCourse myTitle = new ThreeLayer.Model.DessertCourse();
            ThreeLayer.Model.DessertCourse myFood = new ThreeLayer.Model.DessertCourse();
            ThreeLayer.Model.DessertCourse myCourse = new ThreeLayer.Model.DessertCourse();
            myTitle.CourseId = courseId;
            myFood.CourseId = courseId;
            myCourse.CourseId = courseId;
            DataSet courseTitle = myDesserManage.showUserOneData(myTitle);
            DataSet courseFood = myDesserManage.showUserOneData(myFood);
            DataSet courseCourse = myDesserManage.showUserOneData(myCourse);
            if (courseTitle.Tables[0].Rows.Count > 0)
            {
                FormView1.DataSource = courseTitle;
                FormView1.DataBind();
            }
            else
            {
                
            }
            if (courseFood.Tables[0].Rows.Count > 0)
            {
                FormView2.DataSource = courseFood;
                FormView2.DataBind();
            }
            else
            {

            }
            if (courseCourse.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = courseCourse;
                DataList1.DataBind();
            }
            else
            {

            }
        }
    }
}