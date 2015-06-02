using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DelonixWebSystem.Classes;

namespace DelonixWebSystem
{
    public partial class ConfirmDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lblBookingNo.Text = (string)Session["username"];
                lblFirstName.Text = Request.QueryString["first_name"];
            }
        }

        protected void btnYes_Click(object sender, EventArgs e)
        {
            lblBookingNo.Text = (string)Session["username"];
            BookingDBManager.DeleteBooking(lblBookingNo.Text);          
            Response.Redirect("BookingDeleted.aspx");
        }

        protected void btnNo_Click(object sender, EventArgs e)
        {
            //lblBookingNo.Text = (string)Session["username"];
            Response.Redirect("ListBooking.aspx");
        }
    }
}