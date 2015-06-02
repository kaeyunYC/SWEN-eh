<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBooking.aspx.cs" Inherits="DelonixWebSystem.EditBooking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/2001/XMLSchema-instance">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 73%;
        }
        .style2
        {
            text-align: right;
        }
        .style3
        {
            width: 334px;
        }
        .style4
        {
            width: 191px;
            text-align: right;
            height: 20px;
        }
        .style5
        {
            width: 334px;
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Edit Booking</h1>
        <table class="style1">
            <tr>
                <td class="style5">
                    <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="style5">
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Booking No.:</td>
                <td class="style5">
                    <asp:Label ID="lblBookingNo" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Check-In Date:</td>
                <td class="style3">
                    <asp:TextBox ID="tbxCIDate" runat="server" Width="166px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Check-Out Date:</td>
                <td class="style3">
                    <asp:TextBox ID="tbxCODate" runat="server" Width="165px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Room Type:</td>
                <td class="style3">
                    <asp:TextBox ID="tbxRoomType" runat="server" Width="169px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Qty. of Booking(s):</td>
                <td class="style3">
                    <asp:TextBox ID="tbxQty" runat="server" Width="169px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    First Name:</td>
                <td class="style3">
                    <asp:TextBox ID="tbxFirstName" runat="server" Width="169px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Last Name:</td>
                <td class="style3">
                    <asp:TextBox ID="tbxLastName" runat="server" Width="169px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    E-Mail:</td>
                <td class="style3">
                    <asp:TextBox ID="tbxEmail" runat="server" Width="169px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Contact No.:</td>
                <td class="style3">
                    <asp:TextBox ID="tbxContactNo" runat="server" Width="169px"></asp:TextBox>
                </td>
            </tr>
            <%--<tr>
                <td class="style2">
                    Image Location
                    <br />
                    and Filename:</td>
                <td class="style3">
                    <asp:TextBox ID="tbxImagefile" runat="server" Width="167px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Image ID="imgMusic" runat="server" Width="167px" />
                </td>
            </tr>--%>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3" style="text-align: right">
                    <asp:Button ID="btnUpdate" runat="server" style="text-align: center" 
                        Text="Update" onclick="btnUpdate_Click" />
                </td>
            </tr>
            <tr>
                <td class="style6" colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server">Booking Details</asp:HyperLink>
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
