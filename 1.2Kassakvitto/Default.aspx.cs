using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _1._2Kassakvitto.Functionality;

namespace _1._2Kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalculateButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var amount = Double.Parse(AmountBox.Text);
                // Skapa nytt recept-objekt och starta beräkning
                Receipt r = new Receipt(amount);
                r.Calculate(amount);

                receiptArea.Attributes.Remove("class");

                TotalSumAmount.Text = String.Format("{0:c}", r.Subtotal);
                DiscountRateNo.Text = String.Format("{0:p}", r.DiscountRate);
                DiscountAmount.Text = String.Format("{0:c}", r.MoneyOff);
                FinalSumAmount.Text = String.Format("{0:c}", r.Total);
            }
        }
    }
}