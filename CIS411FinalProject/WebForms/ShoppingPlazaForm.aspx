<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingPlazaForm.aspx.cs" Inherits="CIS411FinalProject.WebForms.ShoppingPlazaForm" StyleSheetTheme="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="ShoppingPlazaStyle.css" />
    <style type="text/css">
        .auto-style1 {
            width: 674px;
            margin-bottom: 0px;
        }
        .auto-style3 {
            width: 152px;
        }
        .auto-style4 {
            width: 832px;
        }
        .auto-style6 {
            width: 131px;
        }
        .auto-style7 {
            width: 204px;
        }
        .auto-style8 {
            width: 131px;
            height: 33px;
        }
        .auto-style9 {
            width: 152px;
            height: 33px;
        }
        .auto-style11 {
            height: 33px;
        }
        .auto-style12 {
            width: 832px;
            height: 33px;
        }
        .auto-style13 {
            width: 204px;
            height: 33px;
        }
    </style>
</head>
<body style="width: 1387px; height: 256px; margin-right: 114px">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="6">
                    <h1>Here you make your selections. You can select on book title and one DVD title.</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Books</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="bookDropDown" runat="server" AutoPostBack="True" Width="523px" OnSelectedIndexChanged="bookDropDown_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>Quantity:</td>
                <td>
                    <asp:TextBox ID="bookQuantityTxtBox" runat="server" Width="244px"></asp:TextBox>
                </td>
                <td class="auto-style4">Price of Book</td>
                <td class="auto-style7">
                    <asp:Label ID="BookPriceValLbl" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">DVDs</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="dvdDropDown" runat="server" AutoPostBack="True" Height="16px" Width="524px" OnSelectedIndexChanged="dvdDropDown_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>Quantity:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="dvdQuantityTxtBox" runat="server" Width="249px"></asp:TextBox>
                </td>
                <td class="auto-style4">Price of DVD</td>
                <td class="auto-style7">
                    <asp:Label ID="DVDPriceValLbl" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="MessageLbl1" runat="server" CssClass="MessageLabel" ></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">
                    <asp:Label ID="MessageLbl2" runat="server" CssClass="MessageLabel" ></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="addBtn" runat="server" Text="Add" OnClick="addBtn_Click" Width="105px" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="checkoutBtn" runat="server" Text="Checkout" OnClick="checkoutBtn_Click" />
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Button ID="ExitBtn" runat="server" Text="Exit" Width="104px" OnClick="ExitBtn_Click" />
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
