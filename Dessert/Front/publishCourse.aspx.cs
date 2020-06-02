using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        void LoadStep(int index)
        {
            Control ctl = this.LoadControl("../DynamicData/FieldTemplates/step.ascx");
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

        }
    }
}