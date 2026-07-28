using System;
using System.Web;

namespace unit_3_ASP
{
    public partial class program_4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            HttpCookie myCookie = new HttpCookie("UserCookie");
            myCookie.Value = txtInput.Text;
            Response.Cookies.Add(myCookie);

            Session["UserSession"] = txtInput.Text;

            Application["UserApplication"] = txtInput.Text;

            txtInput.Text = "";
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["UserCookie"] != null)
            {
                lblCookie.Text = "Cookie Value: " + Request.Cookies["UserCookie"].Value;
            }
            else
            {
                lblCookie.Text = "Cookie Value: Empty";
            }

            if (Session["UserSession"] != null)
            {
                lblSession.Text = "Session Value: " + Session["UserSession"].ToString();
            }
            else
            {
                lblSession.Text = "Session Value: Empty";
            }

            if (Application["UserApplication"] != null)
            {
                lblApplication.Text = "Application Value: " + Application["UserApplication"].ToString();
            }
            else
            {
                lblApplication.Text = "Application Value: Empty";
            }
        }
    }
}
