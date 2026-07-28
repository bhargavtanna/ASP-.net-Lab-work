using System;
using System.Configuration;

namespace unit_3_ASP
{
    public partial class program_6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnReadConfig_Click(object sender, EventArgs e)
        {
            lblAppName.Text = "Application Title Tag: " + ConfigurationManager.AppSettings["ApplicationTitle"];
            lblAppVersion.Text = "App Version Code Value: " + ConfigurationManager.AppSettings["BuildVersionCode"];
        }
    }
}
