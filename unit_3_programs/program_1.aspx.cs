using System;

namespace YourProjectNamespace
{
    public partial class CssDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnToggleTheme_Click(object sender, EventArgs e)
        {
            if (btnToggleTheme.Style["background-color"] == "darkred")
            {
                btnToggleTheme.Style["background-color"] = "#28a745";
                btnToggleTheme.Text = "Theme: Green";
            }
            else
            {
                btnToggleTheme.Style["background-color"] = "darkred";
                btnToggleTheme.Text = "Theme: Red";
            }
        }
    }
}