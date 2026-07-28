using System;

namespace YourProjectNamespace
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAction_Click(object sender, EventArgs e)
        {
            lblStatus.Text = "Action successfully catalogued at " + DateTime.Now.ToLongTimeString();
        }
    }
}