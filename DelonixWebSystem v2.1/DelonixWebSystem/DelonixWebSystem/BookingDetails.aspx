<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingDetails.aspx.cs" Inherits="DelonixWebSystem.BookingDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/2001/XMLSchema-instance">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 61%;
        }
        .style2
        {
            width: 191px;
            text-align: right;
        }
        .style3
        {
            width: 334px;
        }
        .auto-style2 {
            width: 299px;
        }
        .auto-style3 {
            width: 179px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Booking Details</h1>
        <table class="style1">
            <tr>
                <td class="auto-style3">
                    Booking No.:</td>
                <td class="auto-style2">
                    <asp:Label ID="lblBookingNo" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Check-In Date:</td>
                <td class="auto-style2">
                    <asp:Label ID="lblCIDate" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Check-Out Date:</td>
                <td class="auto-style2">
                    <asp:Label ID="lblCODate" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Room Type:</td>
                <td class="auto-style2">
                    <asp:Label ID="lblRoomType" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Qty. of Booking(s):</td>
                <td class="auto-style2">
                    <asp:Label ID="lblQty" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    First Name:</td>
                <td class="auto-style2">
                    <asp:Label ID="lblFirstName" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Last Name:</td>
                <td class="auto-style2">
                    <asp:Label ID="lblLastName" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    E-Mail:</td>
                <td class="auto-style2">
                    <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Contact No.:</td>
                <td class="auto-style2">
                    <asp:Label ID="lblContactNo" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <%--<tr>
                <td class="auto-style3">
                    Image Location
                    <br />
                    and Filename:</td>
                <td class="auto-style2">
                    <asp:Label ID="lblImage" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Image ID="imgMusic" runat="server" Width="167px" />
                </td>
            </tr>--%>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnEdit" runat="server" style="text-align: center" 
                        Text="Edit Booking" onclick="btnEdit_Click" />
                </td>
                <td class="auto-style2" style="text-align: right">
                    &nbsp;<asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Booking" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>