/*using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Web;
using System.Linq;
using System.Collections.Generic;

ns.Generic;
using System.Linq;
using System.Web;
*/
/*namespace Skeletons_com.Account
{
    public class ApplicationUser : IdentityUser
    {
        public int User_ID { get; set; }
        public string User_First_Name { get; set; }
        public string User_Last_Name { get; set; }
        public string User_Full_Name { get; set; }
        public string User_Address { get; set; }
    }

}*/
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Security.Claims;
using System.Threading.Tasks;

namespace Skeletons_com.Models
{
    public class ApplicationUser : IdentityUser
    {
        public int User_ID { get; set; }
        public string User_First_Name { get; set; }
        public string User_Last_Name { get; set; }
        public string User_Full_Name { get; set; }
        public string User_Address { get; set; }

        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser> manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Add custom user claims here
            return userIdentity;
        }
    }
}
