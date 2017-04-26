<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="CIS411FinalProject.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link rel="stylesheet" type="text/css" href="WebForms/site.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    <h1>Welcome to the Shopping Plaza!!!</h1>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Here you can purchase books and DVDs. Simply follow the instruction provided below.</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Instructions:</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>1. Select the book and enter the quantity. Click Add.</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>2. Select the DVD and enter the quantity. Click Add.</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>3. To check out, click Check-out.</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>4. To close the application, click Exit. You will lose your selections.</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>5. In the check out screen, revise the quantities if you wish to. If you do, click Edit.</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>6. To plase final order, click Pay.</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>7. To close the application, click Exit. You will lose your selections.</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ShoppingPlazaBtn" runat="server" Text="Go to Shopping Plaza" OnClick="ShoppingPlazaBtn_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ExitBtn" runat="server" Text="Exit" OnClick="ExitBtn_Click" Width="86px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
