using System;

namespace BillingDemo
{
    public partial class Billing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void lstItems_SelectedIndexChanged(object sender, EventArgs e)
        {
            string item = lstItems.SelectedItem.Text;
            string price = lstItems.SelectedValue;

            lblPrice.Text = "₹ " + price;


            switch (item)
            {
                case "Hammer":
                    imgItem.ImageUrl = "~/Images/hammer.jpg";
                    break;

                case "Screw Driver":
                    imgItem.ImageUrl = "~/Images/screwdriver.jpg";
                    break;

                case "Electric Drill":
                    imgItem.ImageUrl = "~/Images/drill.jpg";
                    break;

                case "Pliers":
                    imgItem.ImageUrl = "~/Images/pliers.jpg";
                    break;

                case "Wrench":
                    imgItem.ImageUrl = "~/Images/wrench.jpg";
                    break;
            }
        }


        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            int quantity = Convert.ToInt32(txtQuantity.Text);

            int price = Convert.ToInt32(lstItems.SelectedValue);

            int total = quantity * price;

            lblTotal.Text = "Total Cost = ₹ " + total.ToString();
        }
    }
}