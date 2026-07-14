using System;

namespace CalculatorDemo
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                double a = Convert.ToDouble(txtNum1.Text);
                double b = Convert.ToDouble(txtNum2.Text);

                lblResult.Text = (a + b).ToString();
            }
        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                double a = Convert.ToDouble(txtNum1.Text);
                double b = Convert.ToDouble(txtNum2.Text);

                lblResult.Text = (a - b).ToString();
            }
        }

        protected void btnMul_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                double a = Convert.ToDouble(txtNum1.Text);
                double b = Convert.ToDouble(txtNum2.Text);

                lblResult.Text = (a * b).ToString();
            }
        }

        protected void btnDiv_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                double a = Convert.ToDouble(txtNum1.Text);
                double b = Convert.ToDouble(txtNum2.Text);

                if (b == 0)
                {
                    lblResult.Text = "Cannot divide by zero.";
                }
                else
                {
                    lblResult.Text = (a / b).ToString();
                }
            }
        }
    }
}