using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dessert.Front
{
    public partial class Front : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["userid"] = 1;
            if (Session["userid"]==null)
            {
                HyperLink1.Visible = true;
                string js = "<script>document.getElementById('user-agent').style.display='none'</script>";
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "hide", js);
            }
            else
            {
                HyperLink1.Visible = false;
                string js = "<script>document.getElementById('user-agent').style.display='inline'</script>";
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "visible", js);

            }
        }

        
    }
}