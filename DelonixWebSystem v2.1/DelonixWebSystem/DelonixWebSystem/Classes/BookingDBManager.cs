using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;

namespace DelonixWebSystem.Classes
{
    public class BookingDBManager
    {
        public static ArrayList GetAllBookings()
        {
            ArrayList result = new ArrayList();
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DelonixDBConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT * from booking2";
                SqlDataReader dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    Booking b = new Booking();
                    b.bkgNo = (string)dr["bkg_no"];
                    b.CIDate = (string)dr["CI_date"];
                    b.CODate = (string)dr["CO_date"];
                    b.roomType = (string)dr["room_type"];
                    b.quantity = (string)dr["quantity"];
                    // = Convert.ToDouble((decimal)dr["Price"]);
                    b.firstName = (string)dr["first_name"];
                    b.lastName = (string)dr["last_name"];
                    b.email = (string)dr["email"];
                    b.contactNo = (string)dr["contact_no"];
                    result.Add(b);
                }
                dr.Close();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return result;
        }

        public static Booking GetBookingByBkgNo(string bkgNo)
        {
            Booking b = null;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DelonixDBConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT * FROM booking2 WHERE bkg_no=@bkg_no";
                comm.Parameters.AddWithValue("@bkg_no", bkgNo);
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read())
                {
                    b = new Booking();
                    //b.bkgNo = Convert.ToInt32((int)dr["bkg_no"]);
                    b.CIDate = (string)dr["CI_date"];
                    b.CODate = (string)dr["CO_date"];
                    b.roomType = (string)dr["room_type"];
                    b.quantity = (string)dr["quantity"];
                    // = Convert.ToDouble((decimal)dr["Price"]);
                    b.firstName = (string)dr["first_name"];
                    b.lastName = (string)dr["last_name"];
                    b.email = (string)dr["email"];
                    b.contactNo = (string)dr["contact_no"];
                }
                dr.Close();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }

            return b;

        }

        public static ArrayList GetBookingByDate(string CIDate)
        {
            ArrayList result = new ArrayList();
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DelonixDBConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT * FROM booking2 WHERE CIDate=@CI_date";
                comm.Parameters.AddWithValue("@CI_date", CIDate);
                //comm.Parameters.AddWithValue("@username", username);
                SqlDataReader dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    Booking b = new Booking();
                    b.bkgNo = (string)dr["bkg_no"];
                    b.CIDate = (string)dr["CI_date"];
                    b.CODate = (string)dr["CO_date"];
                    b.roomType = (string)dr["room_type"];
                    b.quantity = (string)dr["quantity"];
                    // = Convert.ToDouble((decimal)dr["Price"]);
                    b.firstName = (string)dr["first_name"];
                    b.lastName = (string)dr["last_name"];
                    b.email = (string)dr["email"];
                    b.contactNo = (string)dr["contact_no"];
                    result.Add(b);
                }

                dr.Close();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }

            return result;
        }

        public static int InsertBooking(Booking b)
        {
            int rowsinserted = 0;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DelonixDBConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "INSERT INTO booking2(bkg_no,CI_date,CO_date,room_type,quantity,first_name,last_name,email,contact_no)" +
                    " VALUES (@bkg_no,@CI_date,@CO_date,@room_type,@quantity,@first_name,@last_name,@email,@contact_no)";
                comm.Parameters.AddWithValue("@bkg_no", b.bkgNo);
                comm.Parameters.AddWithValue("@CI_date", b.CIDate);
                comm.Parameters.AddWithValue("@CO_date", b.CODate);
                comm.Parameters.AddWithValue("@room_type", b.roomType);
                comm.Parameters.AddWithValue("@quantity", b.quantity);
                comm.Parameters.AddWithValue("@first_name", b.firstName);
                comm.Parameters.AddWithValue("@last_name", b.lastName);
                comm.Parameters.AddWithValue("@email", b.email);
                comm.Parameters.AddWithValue("@contact_no", b.contactNo);

                rowsinserted = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsinserted;
        }

        public static int UpdateBooking(Booking b)
        {
            int rowsupdated = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DelonixDBConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "UPDATE booking2 SET CI_date=@CI_date,CO_date=@CO_date,room_type=@room_type,quantity=@quantity,first_name=@first_name,last_name=@last_name,email=@email,contact_no=@contact_no WHERE bkg_no=@bkg_no";
                comm.Parameters.AddWithValue("@bkg_no", b.bkgNo);
                comm.Parameters.AddWithValue("@CI_date", b.CIDate);
                comm.Parameters.AddWithValue("@CO_date", b.CODate);
                comm.Parameters.AddWithValue("@room_type", b.roomType);
                comm.Parameters.AddWithValue("@quantity", b.quantity);
                comm.Parameters.AddWithValue("@first_name", b.firstName);
                comm.Parameters.AddWithValue("@last_name", b.lastName);
                comm.Parameters.AddWithValue("@email", b.email);
                comm.Parameters.AddWithValue("@contact_no", b.contactNo);
                rowsupdated = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsupdated;
        }

        public static int DeleteBooking(string bkgNo)
        {
            int rowsdeleted = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DelonixDBConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "DELETE FROM booking2 WHERE bkg_no=@bkg_no";
                comm.Parameters.AddWithValue("@bkg_no", bkgNo);
                rowsdeleted = comm.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsdeleted;
        }

        public static bool Login(string bkgNo, string contactNo)
        {
            bool successful = false;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.
                    ConnectionStrings["DelonixDBConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT * FROM booking2 WHERE bkg_no=@bkg_no and contact_no=@contact_no";
                comm.Parameters.AddWithValue("@bkg_no", bkgNo);
                comm.Parameters.AddWithValue("@contact_no", contactNo);
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read()) //dr.Read() will return true if there is at least one row
                {
                    successful = true;
                }
            }
            catch (SqlException e)
            {
                throw e;
            }

            return successful;
        }
    }
}