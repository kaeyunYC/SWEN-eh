<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateBooking.aspx.cs" Inherits="DelonixWebSystem.CreateBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 121px;
        }
        .auto-style2 {
            width: 121px;
            right: auto;
            left: inherit;
            height: 24px;
        }
        .auto-style3 {
            height: 24px;
        }
        .auto-style4 {
            width: 121px;
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: 'Arial Narrow'; font-size: xx-large; font-weight: bold">
    
        Create Booking</div>
    <table style="width:100%;">
        <tr>
            <td class="auto-style4" style="font-family: 'Arial Narrow';">
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-family: 'Arial Narrow';">Booking No.:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbxBkgNo" runat="server"></asp:TextBox>
                *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbxBkgNo" ErrorMessage="Please enter a booking no." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-family: 'Arial Narrow';">Check-In Date:</td>
            <td>
                <asp:TextBox ID="tbxCIDate" runat="server"></asp:TextBox>
                *<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbxCIDate" ErrorMessage="Please enter a check-in date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-family: 'Arial Narrow';">Check-Out Date:</td>
            <td>
                <asp:TextBox ID="tbxCODate" runat="server"></asp:TextBox>
                *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbxCODate" Display="Dynamic" ErrorMessage="Please enter a check-out date" ForeColor="Red"></asp:RequiredFieldValidator>
                <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbxPassword" ControlToValidate="tbxRePassword" Display="Dynamic" ErrorMessage="Passwords do not match!" ForeColor="Red"></asp:CompareValidator>--%>
            </td>
        </tr>
         <tr>
            <td class="auto-style1" style="font-family: 'Arial Narrow';">Room Type:</td>
            <td>
                <asp:TextBox ID="tbxRoomType" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style1" style="font-family: 'Arial Narrow';">Qty. of Booking(s):</td>
            <td>
                <asp:TextBox ID="tbxQty" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-family: 'Arial Narrow';">First Name:</td>
            <td>
                <asp:TextBox ID="tbxFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-family: 'Arial Narrow';">Last Name:</td>
            <td>
                <asp:TextBox ID="tbxLastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-family: 'Arial Narrow';">Email:</td>
            <td>
                <asp:TextBox ID="tbxEmail" runat="server"></asp:TextBox>
                *<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbxEmail" Display="Dynamic" ErrorMessage="Please enter a email address" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxEmail" Display="Dynamic" ErrorMessage="Email format is wrong" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style1" style="font-family: 'Arial Narrow';">Contact No.:</td>
            <td>
                <asp:TextBox ID="tbxContactNo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <%--<tr>
            <td class="auto-style1" style="font-family: 'Arial Narrow';">Gender:</td>
            <td>
                <asp:RadioButtonList ID="rblGender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: 'Arial Narrow';">Date of Birth:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddlDOBDay" runat="server">
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
&nbsp;/
                <asp:DropDownList ID="ddlDOBMonth" runat="server">
                    <asp:ListItem>Jan</asp:ListItem>
                    <asp:ListItem>Feb</asp:ListItem>
                    <asp:ListItem>Mar</asp:ListItem>
                    <asp:ListItem>Apr</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>Jun</asp:ListItem>
                    <asp:ListItem>Jul</asp:ListItem>
                    <asp:ListItem>Aug</asp:ListItem>
                    <asp:ListItem>Sep</asp:ListItem>
                    <asp:ListItem>Oct</asp:ListItem>
                    <asp:ListItem>Nov</asp:ListItem>
                    <asp:ListItem>Dec</asp:ListItem>
                </asp:DropDownList>
&nbsp;/
                <asp:TextBox ID="tbxDOBYear" runat="server" Width="52px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbxDOBYear" ErrorMessage="Please enter a year between 1900 to 2011" ForeColor="Red" MaximumValue="2011" MinimumValue="1900" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-family: 'Arial Narrow';">Favourite Genre:</td>
            <td>
                <asp:CheckBoxList ID="cblGenreFav" runat="server">
                    <asp:ListItem>Pop</asp:ListItem>
                    <asp:ListItem>Musical</asp:ListItem>
                    <asp:ListItem>Classical</asp:ListItem>
                    <asp:ListItem>Blues</asp:ListItem>
                    <asp:ListItem>New Age</asp:ListItem>
                </asp:CheckBoxList>
                Others (separate with commas):<br />
                <asp:TextBox ID="tbxGenreOthers" runat="server"></asp:TextBox>
            </td>
        </tr>--%>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create" />
    </form>
    </body>
</html>