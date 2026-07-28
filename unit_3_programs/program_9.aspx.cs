using System;

namespace unit_3_ASP
{
    public partial class program_9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                double n1 = Convert.ToDouble(txtNum1.Text);
                double n2 = Convert.ToDouble(txtNum2.Text);
                double res = n1 + n2;
                lblResult.ForeColor = System.Drawing.Color.Black;
                lblResult.Text = "Result: " + res.ToString();
            }
            catch (FormatException)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Error: Please enter numbers only.";
            }
            catch (Exception ex)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Error: " + ex.Message;
            }
        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            try
            {
                double n1 = Convert.ToDouble(txtNum1.Text);
                double n2 = Convert.ToDouble(txtNum2.Text);
                double res = n1 - n2;
                lblResult.ForeColor = System.Drawing.Color.Black;
                lblResult.Text = "Result: " + res.ToString();
            }
            catch (FormatException)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Error: Please enter numbers only.";
            }
            catch (Exception ex)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Error: " + ex.Message;
            }
        }

        protected void btnMul_Click(object sender, EventArgs e)
        {
            try
            {
                double n1 = Convert.ToDouble(txtNum1.Text);
                double n2 = Convert.ToDouble(txtNum2.Text);
                double res = n1 * n2;
                lblResult.ForeColor = System.Drawing.Color.Black;
                lblResult.Text = "Result: " + res.ToString();
            }
            catch (FormatException)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Error: Please enter numbers only.";
            }
            catch (Exception ex)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Error: " + ex.Message;
            }
        }

        protected void btnDiv_Click(object sender, EventArgs e)
        {
            try
            {
                double n1 = Convert.ToDouble(txtNum1.Text);
                double n2 = Convert.ToDouble(txtNum2.Text);

                if (n2 == 0)
                {
                    throw new DivideByZeroException("Cannot divide a number by zero.");
                }

                double res = n1 / n2;
                lblResult.ForeColor = System.Drawing.Color.Black;
                lblResult.Text = "Result: " + res.ToString();
            }
            catch (FormatException)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Error: Please enter numbers only.";
            }
            catch (DivideByZeroException ex)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = ex.Message;
            }
            catch (Exception ex)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Error: " + ex.Message;
            }
        }
    }
}
