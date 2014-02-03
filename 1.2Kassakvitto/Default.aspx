<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1._2Kassakvitto.Default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
            <link href="~/CSS/basic.css" rel="stylesheet" type="text/css" />
        <title>Kassakvitto</title>
    </head>
    <body>
        <h1>Kassakvitto</h1>
        <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Totalbelopp"></asp:Label>
            <asp:TextBox ID="AmountBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
            <asp:Button ID="CalculateButton" runat="server" Text="Beräkna rabatt" OnClick="CalculateButton_Click" />
        </div>
        </form>
    </body>
</html>
