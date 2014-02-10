<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1._2Kassakvitto.Default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
            <link href="~/Css/basic.css" rel="stylesheet" type="text/css" />
        <title>Kassakvitto</title>
    </head>
    <body>
        <h1>Kassakvitto</h1>
        <form id="form1" runat="server">
            <div>
                <p>Total köpsumma:</p>
                <asp:TextBox ID="AmountBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AmountRequired" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="AmountBox" Display="Dynamic" Text="Ange en totalsumma." CssClass="error"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="AmountNotNegative" runat="server" ErrorMessage="CompareValidator" ControlToValidate="AmountBox" Display="Dynamic" Text="Ange en totalsumma större än 0 kr." Operator="GreaterThan" Type="Double" ValueToCompare="0" CssClass="error"></asp:CompareValidator><br />
                <asp:Button ID="CalculateButton" runat="server" Text="Beräkna rabatt" OnClick="CalculateButton_Click" CssClass="button" />
            </div>
            <asp:Panel ID="receiptArea" runat="server" Visible="False" CssClass="receiptArea">
                <asp:Label ID="CompanyName" runat="server" Text="Möbelvaruhuset" Visible="False"></asp:Label>
                <asp:Label ID="PhoneNo" runat="server" Text="0123- 45 67 89" Visible="False"></asp:Label>
            </asp:Panel>
        </form>
    </body>
</html>
