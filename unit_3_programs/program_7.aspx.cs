using System;

namespace unit_3_ASP
{
    public partial class program_7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtUser.Text == "" || txtPass.Text == "")
                {
                    throw new Exception("Input error: Username and password boxes cannot be left empty.");
                }

                if (txtUser.Text == "admin" && txtPass.Text == "12345")
                {
                    lblMsg.ForeColor = System.Drawing.Color.Green;
                    lblMsg.Text = "Login successful! Welcome admin.";
                }
                else
                {
                    throw new Exception("Security alert: The username or password entered is invalid.");
                }
            }
            catch (Exception ex)
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Error captured: " + ex.Message;
            }
        }
    }
}
