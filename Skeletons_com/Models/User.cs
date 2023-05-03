using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Skeletons_com.Models
{
    public class User
    {
        [Key]
        public int User_ID { get; set; }
        public string AspNetUserId { get; set; }
        public string User_First_Name { get; set; }
        public string User_Last_Name { get; set; }
        public string User_Full_Name { get; set; }
        public string User_Address { get; set; }
        public string User_Email_Address { get; set; }
        public string User_User_Name { get; set; }

        public virtual ApplicationUser ApplicationUser { get; set; }
    }
}