using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DelonixWebSystem.Classes;

namespace DelonixWebSystem
{
    public partial class EditBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {                
            string bkgNo = (string)Session["username"];
            if (!Page.IsPostBack)
            {
                Booking b = BookingDBManager.GetBookingByBkgNo(bkgNo);
                lblBookingNo.Text = bkgNo;
                tbxCIDate.Text = b.CIDate;
                tbxCODate.Text = b.CODate;
                tbxRoomType.Text = b.roomType;
                tbxQty.Text = b.quantity;
                tbxFirstName.Text = b.firstName;
                tbxLastName.Text = b.lastName;
                tbxEmail.Text = b.email;
                tbxContactNo.Text = b.contactNo;

            }
            HyperLink1.NavigateUrl = "BookingDetails.aspx?bkg_no=" + bkgNo;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Booking editbooking = new Booking();
            editbooking.bkgNo = lblBookingNo.Text;
            editbooking.CIDate = tbxCIDate.Text;
            editbooking.CODate = tbxCODate.Text;
            editbooking.roomType = tbxRoomType.Text;
            editbooking.quantity = tbxQty.Text;
            editbooking.firstName = tbxFirstName.Text;
            editbooking.lastName = tbxLastName.Text;
            editbooking.email = tbxEmail.Text;
            editbooking.contactNo = tbxContactNo.Text;

            if (BookingDBManager.UpdateBooking(editbooking) == 1)
            {
                lblStatus.Text = "Booking Updated!";
            }
            else
            {
                lblStatus.Text = "Error! Booking not updated.";
            }
        }
    }
}