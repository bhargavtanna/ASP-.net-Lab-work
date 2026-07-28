using System;

namespace YourProjectNamespace
{
    public partial class ThemeDemo : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["SelectedTheme"] != null)
            {
                Page.Theme = Session["SelectedTheme"].ToString();
            }
            else
            {
                Page.Theme = "BlueTheme";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBlue_Click(object sender, EventArgs e)
        {
            Session["SelectedTheme"] = "BlueTheme";
            Response.Redirect(Request.RawUrl);
        }

        protected void btnGreen_Click(object sender, EventArgs e)
        {
            Session["SelectedTheme"] = "GreenTheme";
            Response.Redirect(Request.RawUrl);
        }
    }
}