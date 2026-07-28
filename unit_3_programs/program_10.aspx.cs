using System;

namespace unit_3_ASP
{
    public partial class program_10 : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["UserTheme"] != null)
            {
                Page.Theme = Session["UserTheme"].ToString();
            }
            else
            {
                Page.Theme = "BlueTheme";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserTheme"] != null)
                {
                    ddlThemes.SelectedValue = Session["UserTheme"].ToString();
                }
            }
        }

        protected void ddlThemes_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["UserTheme"] = ddlThemes.SelectedValue;
            Response.Redirect(Request.RawUrl);
        }
    }
}
