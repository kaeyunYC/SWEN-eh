using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DelonixWebSystem.Classes;

namespace DelonixWebSystem
{
    public partial class BookingDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string bkgNo = (string)Session["username"];
                //string bkgNo = Request.QueryString["bkgNo"];
                Booking b = BookingDBManager.GetBookingByBkgNo(bkgNo);
                lblBookingNo.Text = bkgNo;
                lblCIDate.Text = b.CIDate;
                lblCODate.Text = b.CODate;
                lblRoomType.Text = b.roomType;
                lblQty.Text = b.quantity;
                lblFirstName.Text = b.firstName;
                lblLastName.Text = b.lastName;
                lblEmail.Text = b.email;
                lblContactNo.Text = b.contactNo;

            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string bkgNo = (string)Session["username"];
            Response.Redirect("EditBooking.aspx?bkg_no=" + bkgNo);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string bkgNo = (string)Session["username"];
            Response.Redirect("ConfirmDelete.aspx?bkg_no=" + bkgNo);
        }
    }
}