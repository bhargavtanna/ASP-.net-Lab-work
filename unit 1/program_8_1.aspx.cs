using System;

namespace StudentDemo
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 1. Check if the critical Session key is null
            if (Session["Roll"] != null)
            {
                lblRoll.Text = Session["Roll"].ToString();

                // Safely convert others only if they exist
                lblName.Text = Session["Name"] != null ? Session["Name"].ToString() : "";
                lblPer.Text = Session["Per"] != null ? Session["Per"].ToString() + " %" : "0 %";
                lblGrade.Text = Session["Grade"] != null ? Session["Grade"].ToString() : "";
                lblResult.Text = Session["Result"] != null ? Session["Result"].ToString() : "";
            }
            else
            {
                // 2. Handle what happens when there is no session data 
                // You can redirect them back to the input form:
                Response.Redirect("program_8.aspx");

                // Or display a fallback message:
                // lblRoll.Text = "No Session Data Found";
            }
        }
    }
}