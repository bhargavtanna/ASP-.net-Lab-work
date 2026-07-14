using System;

namespace StudentDemo
{
    public partial class Marksheet : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int m1 = Convert.ToInt32(txtM1.Text);
            int m2 = Convert.ToInt32(txtM2.Text);
            int m3 = Convert.ToInt32(txtM3.Text);
            int m4 = Convert.ToInt32(txtM4.Text);
            int m5 = Convert.ToInt32(txtM5.Text);

            int total = m1 + m2 + m3 + m4 + m5;
            double per = total / 5.0;

            string grade;
            string result;

            if (m1 < 35 || m2 < 35 || m3 < 35 || m4 < 35 || m5 < 35)
            {
                result = "Fail";
                grade = "-";
            }
            else
            {
                result = "Pass";

                if (per >= 75)
                    grade = "A";
                else if (per >= 60)
                    grade = "B";
                else if (per >= 50)
                    grade = "C";
                else
                    grade = "D";
            }

            Session["Roll"] = txtRoll.Text;
            Session["Name"] = txtName.Text;
            Session["Per"] = per.ToString("0.00");
            Session["Grade"] = grade;
            Session["Result"] = result;

            Response.Redirect("Result.aspx");
        }
    }
}