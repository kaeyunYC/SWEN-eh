using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DelonixWebSystem.Classes
{
    public class BookingUser
    {
        public int staffId { get; set; }
        public string name { get; set; }
        public DateTime dob { get; set; }
        public string dept { get; set; }
        public int contactNo { get; set; }
        public string icNo { get; set; }
    }
}