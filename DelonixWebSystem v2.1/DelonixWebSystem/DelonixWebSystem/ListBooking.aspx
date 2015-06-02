<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListBooking.aspx.cs" Inherits="DelonixWebSystem.ListBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 24px;
            width: 170px;
        }
        .auto-style2 {
            height: 24px;
            width: 35px;
        }
        .auto-style3 {
            width: 35px;
            height: 23px;
        }
        .auto-style4 {
            width: 170px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: 'Arial Black'; font-size: x-large; color: #666699;">
    
        List Booking</div>
        <br />
        Hi,
        <asp:Label ID="lblUsername" runat="server"></asp:Label>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2" style="font-family: 'Arial Narrow'; color: #666699; font-size: large; font-weight: bold;">Booking No.</td>
                <td class="auto-style1" colspan="1" rowspan="1" style="font-family: 'Arial Narrow'; color: #666699; font-size: large; font-weight: bold;">Booking List</td>
                
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlBookingNo" runat="server" OnSelectedIndexChanged="ddlBookingNo_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>

                <td class="auto-style1">
                    <asp:Label ID="lblSelectedBkgNo" runat="server"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnCreate" runat="server" style="text-align: center" 
                        Text="Create Booking" onclick="btnCreate_Click" />
                </td>
             </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" RepeatColumns="3" RepeatDirection="Horizontal">
                        <AlternatingItemStyle BackColor="#F7F7F7" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("bkgNo") %>'></asp:Label>
                            <br />
<%--                            <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# Eval("Imagefile") %>' />--%>
                            <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "BookingDetails.aspx?bkg_no="+Eval("bkgNo") %>'>Details</asp:HyperLink>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    </asp:DataList>
                </td>

            </tr>
        </table>
    </form>
</body>
</html>