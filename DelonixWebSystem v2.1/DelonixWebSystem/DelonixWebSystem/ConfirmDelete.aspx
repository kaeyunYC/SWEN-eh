<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmDelete.aspx.cs" Inherits="DelonixWebSystem.ConfirmDelete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/2001/XMLSchema-instance">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
    
        Confirm Deletion of Booking</h1>
        Are you sure you want to delete
        <asp:Label ID="lblBookingNo" runat="server"></asp:Label>
        ,
        <asp:Label ID="lblFirstName" runat="server"></asp:Label>
        ?<br />
        <br />
        <asp:Button ID="btnYes" runat="server" onclick="btnYes_Click" Text="Yes" />
&nbsp;<asp:Button ID="btnNo" runat="server" onclick="btnNo_Click" Text="No" />
    
    </div>
    </form>
</body>
</html>
