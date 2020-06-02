using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dessert.Front
{
    public partial class dessertCourseTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label label = new Label();
            //label.ID=""
            //label.Text=""
            //imga
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("dessertCourse.aspx?CourseId=2");
        }
    }
}