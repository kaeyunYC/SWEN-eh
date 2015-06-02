using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DelonixWebSystem.Classes
{
    public class Booking
    {
        public string bkgNo { get; set; }
        public string CIDate { get; set; }
        public string CODate { get; set; }
        public string roomType { get; set; }
        public string quantity { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string email { get; set; }
        public string contactNo { get; set; }
        
        //public Booking(string bNo, string CIDate, string CODate, string room, string qty, string first, string last, string email, string cNo)
        //{
        //    bkgNo = bNo;
        //    this.CIDate = CIDate;
        //    this.CODate = CODate;
        //    roomType = room;
        //    quantity = qty;
        //    firstName = first;
        //    lastName = last;
        //    this.email = email;
        //    contactNo = cNo;
        //}
    }

}