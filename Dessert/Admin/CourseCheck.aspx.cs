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
    public partial class CourseCheck : System.Web.UI.Page
    {
        public int LabelCount;
        protected void Page_Load(object sender, EventArgs e)
        {
            ThreeLayer.BLL.CheckManagement check = new ThreeLayer.BLL.CheckManagement();
            DataSet ds = check.showUncheckedCourse();
            if (ds.Tables[0].Rows.Count > 0)
            {
                /*for(int i=0;i< ds.Tables[0].Rows.Count; i++)
                {
                    Panel panel = new Panel();

                }*/
                Response.Write("lailalaodi");
                Panel panel = new Panel();
                panel.ID = "laodidi";
                Label label = new Label();
                label.ID = string.Format("Lable_{0}",LabelCount+1);
                label.Text = "标题";
                panel.Controls.Add(label);
                label.ID= string.Format("Lable_{0}", LabelCount + 1);
                label.Text = "食材";
                panel.Controls.Add(label);
            }
            
        }
    }
}