using System;

namespace unit_3_ASP
{
    public partial class program_8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtStudentName.Text == "")
                {
                    throw new Exception("Student name required.");
                }

                int webScore = Convert.ToInt32(txtWebMarks.Text);
                int dbScore = Convert.ToInt32(txtDbMarks.Text);

                if (webScore < 0 || webScore > 100 || dbScore < 0 || dbScore > 100)
                {
                    throw new Exception("Marks must be between 0 and 100.");
                }

                int grandTotal = webScore + dbScore;

                lblSummary.ForeColor = System.Drawing.Color.Black;
                lblSummary.Text = "Student Report for " + txtStudentName.Text + "<br/>" +
                                  "Total Calculated Score Marks: " + grandTotal.ToString() + " / 200";
            }
            catch (FormatException)
            {
                lblSummary.ForeColor = System.Drawing.Color.Red;
                lblSummary.Text = "Processing Failure: Please enter valid numbers for the score fields.";
            }
            catch (Exception ex)
            {
                lblSummary.ForeColor = System.Drawing.Color.Red;
                lblSummary.Text = "Processing Failure: " + ex.Message;
            }
        }
    }
}
