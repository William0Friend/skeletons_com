using Owin;
using System;
using System.Web;
using System.Linq;
using System.Web.UI;
using Skeletons_com.Models;
using System.Configuration;
using System.Data.SqlClient;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;

namespace Skeletons_com.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);

         
            if (result.Succeeded)
            {
                InsertUserEmail(user.Id);
                Session["AspUserEmail"] = user.Email;
                Session["AspUserId"] = user.Id;
                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
        private void InsertUserEmail(string aspNetUserId)
        {
            using (SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            using (SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection2"].ConnectionString))
            {
                // Get the email from AspNetUsers
                string query1 = "SELECT [Email] FROM [AspNetUsers] WHERE [Id] = @AspNetUserId";
                SqlCommand cmd1 = new SqlCommand(query1, conn1);
                cmd1.Parameters.AddWithValue("@AspNetUserId", aspNetUserId);
                conn1.Open();
                string aspNetUserEmail = (string)cmd1.ExecuteScalar();
                conn1.Close();

                // Insert the email in the User table
                string query2 = "INSERT INTO [User] ([User_Email_Address], [AspNetUserId]) VALUES (@UserEmail, @UserID)";
                SqlCommand cmd2 = new SqlCommand(query2, conn2);
                cmd2.Parameters.AddWithValue("@UserEmail", aspNetUserEmail);
                cmd2.Parameters.AddWithValue("@UserId", aspNetUserId);
                conn2.Open();
                cmd2.ExecuteNonQuery();
                conn2.Close();
            }
        }


        private void UpdateUserEmail(string userEmail)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                // Create the user in the Users table when a new user has been registered
                string query = "INSERT INTO [User] (User_Email_Address) VALUES (@Email)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", userEmail);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }
   

    }
}



/*    private void UpdateUserEmail(string aspNetUserId, string userEmail)
       {
           using (SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
           using (SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection2"].ConnectionString))
           {
               // Get the email from AspNetUsers
               string query1 = "SELECT [Email] FROM [AspNetUsers] WHERE [Id] = @AspNetUserId";
               SqlCommand cmd1 = new SqlCommand(query1, conn1);
               cmd1.Parameters.AddWithValue("@AspNetUserId", aspNetUserId);
               conn1.Open();
               string aspNetUserEmail = (string)cmd1.ExecuteScalar();
               conn1.Close();

               // Update the email in the User table
               string query2 = "UPDATE [User] SET [User_Email_Address] = @UserEmail WHERE [User_Email_Address] = @AspNetUserEmail";
               SqlCommand cmd2 = new SqlCommand(query2, conn2);
               cmd2.Parameters.AddWithValue("@UserEmail", userEmail);
               cmd2.Parameters.AddWithValue("@AspNetUserEmail", aspNetUserEmail);
               conn2.Open();
               cmd2.ExecuteNonQuery();
               conn2.Close();
           }
       }
*/



//mine
//Sync both user tables
//private void UpdateUserEmail(string aspNetUserId, string userEmail)
//{
//    using (SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
//    using (SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection2"].ConnectionString))
//    {
//        // Create the user in the Users table when a new user has been registered
//        // insert the newly made email from AspNetUsers Email on registration 
//        //string query0 = "INSERT VALUES [AspNetUsers].[Email] INTO [Users].[User_Email_Address]";
//        string queryA = "SELECT [Email] FROM [AspNetUsers] WHERE MAX([Id]) = @AspNetUserNewEmail";
//        string queryB = "INSERT VALUES @AspNetUserNewEmail INTO [User].[UserEmailAddress]";
//        SqlCommand cmdA = new SqlCommand(queryA, conn1);
//        SqlCommand cmdB = new SqlCommand(queryB, conn2);
//        conn1.Open();
//        cmdA.ExecuteNonQuery();
//        conn1.Close();
//        conn2.Open();
//        cmdB.ExecuteNonQuery();
//        conn2.Close();
//        //since both id's auto increment they should now have the same value in [User].[User_ID] and [AspNetUsers].[Id]
//        // with synced Id's tis should now work right
//        // Get the User_ID from the User table
//       //Maybe we could print them out?
//    }
//}
////mine