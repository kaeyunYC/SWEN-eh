using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DelonixWebSystem.Classes;

namespace DelonixWebSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string i_bkgNo = tbxUsername.Text;
            string i_contactNo = tbxPassword.Text;

            if (BookingDBManager.Login(i_bkgNo, i_contactNo) == true)
            {
                Session["username"] = i_bkgNo;
                Response.Redirect("ListBooking.aspx");
            }
            else
            {
                lblStatus.Text = "Login unsuccessful";
            }
        }
    }
}