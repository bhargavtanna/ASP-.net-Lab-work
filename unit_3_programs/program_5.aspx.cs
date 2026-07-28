using System;

namespace unit_3_ASP
{
    public partial class program_5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["username"] != null)
                {
                    lblQueryReceived.Text = "Data read from URL QueryString: " + Request.QueryString["username"];
                }
            }
        }

        protected void btnSetView_Click(object sender, EventArgs e)
        {
            ViewState["Counter"] = txtCount.Text;
            lblViewResult.Text = "Stored value: " + ViewState["Counter"].ToString();
        }
        protected void btnIncrement_Click(object sender, EventArgs e)
        {
            try
            {
                if (ViewState["Counter"] != null)
                {
                    int currentNumber = Convert.ToInt32(ViewState["Counter"]);
                    currentNumber = currentNumber + 1;

                    ViewState["Counter"] = currentNumber.ToString();
                    lblViewResult.ForeColor = System.Drawing.Color.Black;
                    lblViewResult.Text = "Incremented ViewState Counter: " + ViewState["Counter"].ToString();
                }
                else
                {
                    lblViewResult.ForeColor = System.Drawing.Color.Red;
                    lblViewResult.Text = "Please enter and store a base counter number first.";
                }
            }
            catch (FormatException)
            {
                lblViewResult.ForeColor = System.Drawing.Color.Red;
                lblViewResult.Text = "Error: Stored text is not a valid number. Type a fresh number above and save it.";
            }
        }

        protected void btnQuerySend_Click(object sender, EventArgs e)
        {
            Response.Redirect("program_5.aspx?username=" + txtName.Text);
        }
    }
}
