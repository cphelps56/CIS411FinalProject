<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="CIS411FinalProject.WebForms.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="CheckoutStyle.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 311px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body style="width: 745px; height: 324px">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <asp:ListBox ID="cartListBox" runat="server" Height="210px" Width="743px" AutoPostBack="True" OnSelectedIndexChanged="cartListBox_SelectedIndexChanged"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Change Quantity:&nbsp;&nbsp;
                    <asp:TextBox ID="quantityTxtBox" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:Button ID="AcceptChangeBtn" runat="server" Text="Accept Change" OnClick="AcceptChangeBtn_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="messageLbl" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="PayBtn" runat="server" Text="Pay" Width="100px" OnClick="PayBtn_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="ExitBtn" runat="server" Text="Exit" Width="84px" OnClick="ExitBtn_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Total:&nbsp;
                    <asp:Label ID="TotalLbl" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
