using System;

namespace LoginDemo
{
    // Changed class name from "Login" to "Program6"
    public partial class Program6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Static User ID and Password
            string userId = "admin";
            string password = "12345";

            if (txtUserID.Text == userId && txtPassword.Text == password)
            {
                lblMessage.Text = "Login Successful!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Text = "Invalid User ID or Password!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}