using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Reflection;
using Dessert.DynamicData.FieldTemplates;

namespace Dessert.Front
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        int Count
        {
            //记录步骤数
            get
            {
                if (ViewState["ControlCount"] == null)
                    ViewState["ControlCount"] = 1;
                return (int)ViewState["ControlCount"];
            }
            set
            {
                ViewState["ControlCount"] = value;
            }
        }
        //实例化step里的步骤输入textbox控件
        protected step courseStep;

        void LoadStep(int index)
        {
            Control ctl = this.LoadControl("step.ascx");
            ctl.ID = string.Format("setpControl_{0}", index);
            this.PlaceHolder1.Controls.Add(ctl);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i <= Count; i++)
            {
                LoadStep(i);
            }
            //为增加步骤button添加click事件
            //Button1.Click += new EventHandler(Button1_Click);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Count++;
            LoadStep(Count);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //测试
            Session["userid"] = 1;
            int insertState = 0;
            int labelInsert = 0;
            ThreeLayer.BLL.DessertManagement myDessertManage = new ThreeLayer.BLL.DessertManagement();
            //甜品教程实体类
            ThreeLayer.Model.DessertCourse myUserCourse = new ThreeLayer.Model.DessertCourse();
            //甜品食材实体类
            ThreeLayer.Model.DessertFood myDessertFood = new ThreeLayer.Model.DessertFood();
            myUserCourse.UserId = Convert.ToInt32(Session["userid"]); //用户id
            myUserCourse.CourseTitle = TextBox1.Text;  //教程标题
            myUserCourse.CourseTime = DateTime.Now;  //发布时间
            myDessertFood.FoodName = TextBox2.Text;     //教程食材
            int userCourse = myDessertManage.InsertBLLUserCourse(myUserCourse,myDessertFood);
            if(userCourse == 0 || userCourse == -1)
            {
                //插入失败
                Response.Write("<script>alert('发布失败！请重试')");
            }
            else
            {
                //插入成功
                //甜品教程步骤类
                ThreeLayer.Model.DessertImage myCourseImage = new ThreeLayer.Model.DessertImage();
                int i = 1;
                foreach (var control in PlaceHolder1.Controls)
                {
                    myCourseImage.CourseId = userCourse;  //教程id
                    myCourseImage.CourseDetail = courseStep.GetTextBoxValue;  //调用step.ascx的属性
                    myCourseImage.ImageFile = courseStep.GetImageFile; //获取step.ascx的image路径
                    myCourseImage.DessertStep = i++;
                    insertState = myDessertManage.InsertBLLImage(myCourseImage);
                }
                if (insertState == 0)
                {
                    ThreeLayer.Model.CourseLable myCourseLable = new ThreeLayer.Model.CourseLable();
                    int[] lable = { 1 };
                    lable[0] = Convert.ToInt32(RadioButtonList1.SelectedValue);
                    lable[1] = Convert.ToInt32(RadioButtonList2.SelectedValue);
                    lable[2] = Convert.ToInt32(RadioButtonList3.SelectedValue);
                    for(int x = 0; x < 3; x++)
                    {
                        myCourseLable.CourseId = userCourse;
                        myCourseLable.LableId = lable[x];
                        labelInsert = myDessertManage.InsertBLLCourseLabel(myCourseLable);
                    }
                    if(labelInsert == 0)
                    {
                        Response.Redirect("publishCenter.aspx");
                    }
                    else
                    {
                        Response.Write("发布失败！请重试！");
                    }
                }
                else
                {
                    Response.Write("发布失败！请重试！");
                }

            }
        }
    }
}