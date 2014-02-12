<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1._2Kassakvitto.Default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
            <link href="~/Css/basic.css" rel="stylesheet" type="text/css" />
        <title>Kassakvitto</title>
    </head>
    <body>
        <h1>Kassakvitto</h1>
        <%-- Formulär med default button --%>
        <form id="CalculateDiscountForm" runat="server" defaultbutton="CalculateButton">
            <div>
                <p>Total köpsumma:</p>
                <%-- Input-box för summa med validering --%>
                <asp:TextBox ID="AmountBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AmountRequired" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="AmountBox" Display="Dynamic" Text="Ange en totalsumma." CssClass="error"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="AmountNotNegative" runat="server" ErrorMessage="CompareValidator" ControlToValidate="AmountBox" Display="Dynamic" Text="Ange en totalsumma större än 0 kr." Operator="GreaterThan" Type="Double" ValueToCompare="0" CssClass="error"></asp:CompareValidator><br />
                <%-- Submit-knapp --%>
                <asp:Button ID="CalculateButton" runat="server" Text="Beräkna rabatt" OnClick="CalculateButton_Click" CssClass="button" />
            </div>
            <%-- Div som döljer/visar kvittot --%>
            <div id="receiptArea" runat="server" class="hidden">
                <asp:Label ID="CompanyName" runat="server" Text="Möbelvaruhuset" CssClass="receiptHeader"></asp:Label><br />
                <asp:Label ID="PhoneNo" runat="server" Text="0123- 45 67 89" CssClass="infoText"></asp:Label><br />
                <asp:Label ID="OpeningHours" runat="server" Text="Öppettider 10:00 - 20:00" CssClass="infoText"></asp:Label><br />
                <div class="presentation" runat="server">
                    <asp:Label ID="TotalSum" runat="server" Text="Totalt:" CssClass="labelDisplay"></asp:Label>
                    <asp:Label ID="TotalSumAmount" runat="server" Text="-" CssClass="amountDisplay"></asp:Label><br />
                    <asp:Label ID="DiscountRate" runat="server" Text="Rabattsats:" CssClass="labelDisplay"></asp:Label>
                    <asp:Label ID="DiscountRateNo" runat="server" Text="-" CssClass="amountDisplay"></asp:Label><br />
                    <asp:Label ID="Discount" runat="server" Text="Rabatt:" CssClass="labelDisplay"></asp:Label>
                    <asp:Label ID="DiscountAmount" runat="server" Text="-" CssClass="amountDisplay"></asp:Label><br />
                    <asp:Label ID="FinalSum" runat="server" Text="Att betala:" CssClass="labelDisplay"></asp:Label>
                    <asp:Label ID="FinalSumAmount" runat="server" Text="-" CssClass="amountDisplay"></asp:Label><br />
                </div>
                <asp:Label ID="OrgNo" runat="server" Text="Org.Nr: 123456-7890" CssClass="infoText"></asp:Label><br />
                <asp:Label ID="GoodDay" runat="server" Text="Ha en bra dag!" CssClass="infoText"></asp:Label><br />
                <asp:Label ID="WelcomeBack" runat="server" Text="Välkommen åter!" CssClass="welcome"></asp:Label><br />
            </div>
        </form>
        <script src="Functionality/script.js"></script>
    </body>
</html>
