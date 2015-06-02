using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DelonixWebSystem.Classes;

namespace DelonixWebSystem
{
    public partial class CreateBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            string bkgNo = tbxBkgNo.Text;
            string CIDate = tbxCIDate.Text;
            string CODate = tbxCODate.Text;
            string roomType = tbxRoomType.Text;
            string quantity = tbxQty.Text;
            string firstName = tbxFirstName.Text;
            string lastName = tbxLastName.Text;
            string email = tbxEmail.Text;
            string contactNo = tbxContactNo.Text;

            string querystring = "bkgNo=" + bkgNo;
            querystring += "&" + "CIDate=" + CIDate;
            querystring += "&" + "CODate=" + CODate;
            querystring += "&" + "roomType=" + roomType;
            querystring += "&" + "quantity=" + quantity;
            querystring += "&" + "firstName=" + firstName;
            querystring += "&" + "lastName=" + lastName;
            querystring += "&" + "email=" + email;
            querystring += "&" + "contactNo=" + contactNo;

            Booking b = new Booking();
            b.bkgNo = tbxBkgNo.Text;
            b.CIDate = tbxCIDate.Text;
            b.CODate = tbxCODate.Text;
            b.roomType = tbxRoomType.Text;
            b.quantity = tbxQty.Text;
            b.firstName = tbxFirstName.Text;
            b.lastName = tbxLastName.Text;
            b.email = tbxEmail.Text;
            b.contactNo = tbxContactNo.Text;

            if(BookingDBManager.InsertBooking(b) == 1)
            {
                Server.Transfer("BookingDetails.aspx?" + querystring);
            }
            else
            {
                lblStatus.Text = "Booking Unsuccessful";
            }
        }
    }
}