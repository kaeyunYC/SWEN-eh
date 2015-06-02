<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DelonixWebSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 150px;
        }
        .auto-style3 {
            width: 8px;
        }
    </style>
</head>
<body style="height: 177px; width: 473px">
    <form id="form1" runat="server">
    <div style="font-size: xx-large; font-family: 'Arial Narrow'; font-weight: bold;">
    
        User Login</div>
    <br />
        <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
    <table style="width:100%;">
        <tr>
            <td class="auto-style3">Username:</td>
            <td class="auto-style2">
                <asp:TextBox ID="tbxUsername" runat="server" Width="118px"></asp:TextBox></td>
               <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbxUsername" Display="Dynamic" ErrorMessage="Please enter a username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td class="auto-style3">Password:</td>
            <td class="auto-style2">  
                <asp:TextBox ID="tbxPassword" runat="server" TextMode="Password" Height="16px" Width="119px"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbxPassword" Display="Dynamic" ErrorMessage="Please enter a password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnLogin" runat="server" style="margin-bottom: 0px" Text="Login" OnClick="btnLogin_Click" />
            </td>

        </tr>
    </table>
    </form>
</body>
</html>
