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
    public partial class UncheckedEdit : System.Web.UI.Page
    {
        ThreeLayer.Model.DessertCourse dessertCourse = new ThreeLayer.Model.DessertCourse();
        ThreeLayer.BLL.CheckManagement checkManagement = new ThreeLayer.BLL.CheckManagement();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request["CourseId"] != null)
            {
                
                dessertCourse.CourseId = Convert.ToInt32(Request["CourseId"]);
                
                DataSet ds = new DataSet();
                ds = checkManagement.showUncheckedCourseDetail(dessertCourse);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    FormView1.DataSource = ds.Tables[0];
                    FormView1.DataBind();
                    dessertCourse.UserId = Convert.ToInt32(ds.Tables[0].Rows[0]["UserId"]);
                }
                else
                {
                    Response.Redirect("CourseCheck.aspx");
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int Sortid = Convert.ToInt32((FormView1.FindControl("DropDownList2") as DropDownList).SelectedValue);
            string Checked = (FormView1.FindControl("RadioButtonList1") as RadioButtonList).SelectedValue;
            string CourseQuality;
            CourseQuality = (FormView1.FindControl("RadioButtonList2") as RadioButtonList).SelectedValue;
            dessertCourse.SortId = Sortid;
            dessertCourse.CourseCheck = Checked;
            dessertCourse.CourseQuality = Convert.ToInt32(CourseQuality);
            TextBox textBox = FormView1.FindControl("TextBox1") as TextBox;
            string Calorie = textBox.Text;
            Response.Write(Calorie+"1111");
            /*if((FormView1.FindControl("TextBox2") as TextBox).Text == "")
            {
                Response.Write("<script>alert('请填写热量')</script>");
                return;
            }
            ThreeLayer.Model.Users users =new ThreeLayer.Model.Users();
            ThreeLayer.Model.DessertFood food = new ThreeLayer.Model.DessertFood();
            food.Calorie= Convert.ToInt32((FormView1.FindControl("TextBox2") as TextBox).Text);
            int status= checkManagement.checkUpdateUnchacked(dessertCourse, food, users);
            Response.Write(status);*/

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseCheck.aspx");
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            
        }
    }
}