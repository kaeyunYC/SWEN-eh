using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using DelonixWebSystem.Classes;

namespace DelonixWebSystem
{
    public partial class ListBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //retrieve all booking from the database
                ArrayList bookinglist = BookingDBManager.GetAllBookings();
                ddlBookingNo.DataSource = bookinglist;
                ddlBookingNo.DataBind();

                lblSelectedBkgNo.Text = ddlBookingNo.SelectedItem.Text;

                //retrieve music that belongs to john from database
                //Booking userlist = BookingDBManager.GetBookingByBkgNo(ddlBookingNo.SelectedItem.Text);
                ArrayList userlist = BookingDBManager.GetAllBookings();

                DataList1.DataSource = userlist;
                DataList1.DataBind();
            }
            //display username from querystring to label
            lblUsername.Text = (string)Session["username"];
        }

        protected void ddlBookingNo_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblSelectedBkgNo.Text = ddlBookingNo.SelectedItem.Text;

            ArrayList userlist = BookingDBManager.GetAllBookings();
            //ArrayList userlist = BookingDBManager.GetBookingByBkgNo(ddlBookingNo.SelectedItem.Text);//, (string)Session["username"]);


            DataList1.DataSource = userlist;
            DataList1.DataBind();
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateBooking.aspx");
        }
    }
}