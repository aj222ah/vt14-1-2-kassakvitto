using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1._2Kassakvitto.Functionality
{
    public class Receipt
    {
        private double _subtotal;

        // Auto-implementerade egenskaper
        public double DiscountRate { get; private set; }
        public double MoneyOff { get; private set; }
        public double Total { get; private set; }

        public double Subtotal { 
            get { return _subtotal; } 
            private set 
            {
                // Kontrollera att det inskickade värdet är över 0
                if (value <= 0)
                {
                    throw new ArgumentOutOfRangeException("value", "Värdet måste vara större än 0.");
                }
                else
                {
                    _subtotal = value;
                }
            } 
        }

        public void Calculate(double subtotal)
        {
            // Ange köpsumma
            Subtotal = subtotal;

            // Sätt rabattsats
            if (Subtotal >= 5000)
            {
                DiscountRate = 0.15;
            }
            else if (Subtotal >= 1000)
            {
                DiscountRate = 0.10;
            }
            else if (Subtotal >= 500)
            {
                DiscountRate = 0.5;
            }
            else
            {
                DiscountRate = 0;
            }

            // Beräkna rabattbelopp
            MoneyOff = Subtotal * (DiscountRate);

            // Beräkna slutsumma
            Total = Subtotal - MoneyOff;
        }

        // Tom konstruktor
        public Receipt(double subtotal)
        {

        }
    }
}