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
    public partial class CourseDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["CourseId"] != null)
            {
                string food = "";
                string title = "";
                //int courseid = Convert.ToInt32(Request["CourseId"]);
                int courseid = 1;
                ThreeLayer.Model.DessertCourse dessertCourse = new ThreeLayer.Model.DessertCourse();
                ThreeLayer.BLL.DessertManagement dessertManagement = new ThreeLayer.BLL.DessertManagement();
                dessertCourse.CourseId = courseid;
                DataSet data = dessertManagement.showUserOneData(dessertCourse);
                if (data.Tables[0].Rows.Count > 0) {
                    title=data.Tables[0].Rows[0]["CourseTitle"].ToString();
                    food = data.Tables[0].Rows[0]["FoodName"].ToString();
                    Label1.Text = title;
                    Label3.Text = food;
                    
                    for (int i = 0; i < data.Tables[0].Rows.Count; i++)
                    {
                        Label label = new Label();
                        label.Text = "<br><br>" + data.Tables[0].Rows[i]["CourseDetail"].ToString()+ "<br><br>";
                        label.ID = "label" + i + 6;
                        label.Visible = true;
                        Panel1.Controls.Add(label);
                        Image image = new Image();
                        image.ImageUrl = "~/images/dessert/1.2.jpeg";
                        image.Width = 110;
                        image.Height = 160;
                        Panel1.Controls.Add(image);
                    }
                }
                else
                {
                    Response.Redirect("UserManage.aspx");
                }
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