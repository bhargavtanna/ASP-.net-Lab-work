using System;

namespace AdmissionDemo
{
    public partial class StudentAdmission : System.Web.UI.Page
    {
        protected void cvAgree_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            // The page is only valid if the checkbox is checked
            args.IsValid = chkAgree.Checked;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblMessage.Text = "Registration Successful!";
            }
        }
    }
}