using System;
using System.Linq;
using System.Web.Security;
using Skeletons_com.Models;
using System.Configuration;
using Skeletons_com.Models;
using System.Data.SqlClient;

namespace Skeletons_com
{
    public partial class MyAccount : System.Web.UI.Page
    {
        public partial class myAccount : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                //    if (User.Identity.IsAuthenticated)
                //    {
                //        // Get the user's profile information from the User table
                //        string userName = User.Identity.Name;
                //        var context = new ApplicationDbContext();
                //        User user = context.Users.SingleOrDefault(u => u.User_User_Name == userName);

                //        // Display the user's profile information in the appropriate TextBox controls
                //        UserIdTextBox.Text = user.User_ID.ToString();
                //        FirstNameTextBox.Text = user.User_First_Name;
                //        LastNameTextBox.Text = user.User_Last_Name;
                //        AddressTextBox.Text = user.User_Address;
                //        EmailTextBox.Text = user.User_Email_Address;
                //    }
                //    else
                //    {
                //        // User is not logged in, redirect to login page
                //        Response.Redirect("~/Account/Login.aspx");
                //    }
                //}
            }
        }
    }
}