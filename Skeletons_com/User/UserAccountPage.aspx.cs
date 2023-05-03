using System;
using System.Web;
using System.Linq;
using System.Data;
using System.Web.UI;
using Skeletons_com;
using System.Configuration;
using Skeletons_com.Models;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Collections.Generic;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Skeletons_com.User
{
    public partial class UserAccountPage : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection2"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            //con.Open();
            string userEmail = (string)Session["AspUserEmail"];
            string userId = (string)Session["AspUserId"];
        }

        protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
        {
        }
        //review
        protected void Button4_Click(object sender, EventArgs e)
        {
            /*if (User.Identity.IsAuthenticated)
            {
                var manager = new UserManager<IdentityUser>(new UserStore<IdentityUser>(new IdentityDbContext()));
                var currentUser = manager.FindById(User.Identity.GetUserId());

                if (currentUser != null)
                {
                    LoadUserInfoFromDatabase(currentUser.Email, currentUser.Id);
                }
            }*/
            Label labelMessage = (Label)LoginView1.FindControl("Label18");

            if (User.Identity.IsAuthenticated)
            {
                // Retrieve the email and ID from the session
                //string userEmail = (string)Session["AspUserEmail"];
                //string userId = (string)Session["AspUserId"];

                // Load user info from database using the email and ID
                //LoadUserInfoFromDatabase(userEmail, userId);
                LoadUserInfoFromDatabase();

                //Label 18 = Message success
                //labelMessage.Text = "Successfully called and completed LoadUserInfoFromDatabase()";

            }

        }
        //edit the email in both tables call
        protected void Button1_Click(object sender, EventArgs e)
        {
            InsertUserEmail();
        }
        //edit the email in both tables code
        private void InsertUserEmail()
        {
            string aspNetUserId = (string)Session["AspU/serId"];
            TextBox emailTextBox = (TextBox)LoginView1.FindControl("Email");
            Label labelMessage = (Label)LoginView1.FindControl("Label18");
            string email = emailTextBox.Text;
            Session["UserEmail"] = email;

            using (SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            using (SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection2"].ConnectionString))
            {
                // Insert the email in the AspNetUsers table
                string query1 = "UPDATE [AspNetUsers] SET [Email] = @Email WHERE [Id] = @AspNetUserId";
                SqlCommand cmd1 = new SqlCommand(query1, conn1);
                cmd1.Parameters.AddWithValue("@Email", email);
                cmd1.Parameters.AddWithValue("@AspNetUserId", aspNetUserId);
                conn1.Open();
                cmd1.ExecuteNonQuery();
                conn1.Close();

                // Insert the email in the User table
                string query2 = "INSERT INTO [User] ([User_Email_Address], [AspNetUserId]) VALUES (@UserEmail, @UserID)";
                SqlCommand cmd2 = new SqlCommand(query2, conn2);
                cmd2.Parameters.AddWithValue("@UserEmail", email);
                cmd2.Parameters.AddWithValue("@UserId", aspNetUserId);
                conn2.Open();
                cmd2.ExecuteNonQuery();
                conn2.Close();

                //Label 18 = Message success
                labelMessage.Text = "Successfully called and completed InsertUserEmail()";
            }
        }
        //update user info in users table
        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            /* if (User.Identity.IsAuthenticated)
             {
                 string[] textBoxValues = new string[8];
                 for (int i = 1; i <= 8; i++)
                 {
                     TextBox textBox = (TextBox)LoginView1.FindControl($"TextBox{i}");
                     if (textBox != null)
                     {
                         textBoxValues[i - 1] = textBox.Text;
                     }
                 }
                 UpdateUserTable(textBoxValues);
             }*/
            Label labelMessage = (Label)LoginView1.FindControl("Label18");

            if (User.Identity.IsAuthenticated)
            {
                // Retrieve the email and ID from the session
                string userEmail = (string)Session["AspUserEmail"];
                //string userId = (string)Session["UserId"];

                // Retrieve the values from the text boxes
                string[] textBoxValues = new string[8];
                for (int i = 1; i <= 8; i++)
                {
                    TextBox textBox = (TextBox)LoginView1.FindControl($"TextBox{i}");
                    if (textBox != null)
                    {
                        textBoxValues[i - 1] = textBox.Text;
                    }
                }

                // Update the user table using the email and ID
                UpdateUserTable(textBoxValues, userEmail);
                //Label 18 = Message success
                //labelMessage.Text = "Successfully called and completed ButtonUpdate_Click() and UpdateUserTable()";

            }
           // labelMessage.Text = "Failed in calling and completing ButtonUpdate_Click() and UpdateUserTable()";

        }

        //update the users table
        private void UpdateUserTable(string[] textBoxValues, string userEmail)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection2"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = @"UPDATE [dbo].[User]
                         SET [User_First_Name] = @UserFirstName,
                             [User_Last_Name] = @UserLastName,
                             [User_Full_Name] = @UserFullName,
                             [User_Address] = @UserAddress,
                             [User_Phone_Number] = @UserPhoneNumber,
                             [User_Email_Address] = @UserEmailAddress,
                             [User_User_Name] = @UserUserName
                         WHERE [User_Email_Address] = @UserEmail";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserFirstName", textBoxValues[0]);
                    command.Parameters.AddWithValue("@UserLastName", textBoxValues[1]);
                    command.Parameters.AddWithValue("@UserFullName", textBoxValues[2]);
                    command.Parameters.AddWithValue("@UserAddress", textBoxValues[3]);
                    command.Parameters.AddWithValue("@UserPhoneNumber", textBoxValues[4]);
                    command.Parameters.AddWithValue("@UserEmailAddress", textBoxValues[5]);
                    command.Parameters.AddWithValue("@UserUserName", textBoxValues[6]);
                    command.Parameters.AddWithValue("@UserEmail", userEmail);
                    

                    command.ExecuteNonQuery();
                }
                TextBox textBox1 = (TextBox)LoginView1.FindControl("TextBox1");
                TextBox textBox2 = (TextBox)LoginView1.FindControl("TextBox2");
                TextBox textBox3 = (TextBox)LoginView1.FindControl("TextBox3");
                TextBox textBox4 = (TextBox)LoginView1.FindControl("TextBox4");
                TextBox textBox5 = (TextBox)LoginView1.FindControl("TextBox5");
                TextBox textBox6 = (TextBox)LoginView1.FindControl("TextBox6");
                TextBox textBox7 = (TextBox)LoginView1.FindControl("TextBox7");
                TextBox textBox8 = (TextBox)LoginView1.FindControl("TextBox8");
                textBox1.Text = "";
                textBox2.Text = "";
                textBox3.Text = "";
                textBox4.Text = "";
                textBox5.Text = "";
                textBox6.Text = "";
                textBox7.Text = "";
                textBox8.Text = "";

            }
        }

        private void LoadUserInfoFromDatabase()
        {
            string email = (string)Session["AspUserEmail"];
            string userId = (string)Session["AspUserId"];

            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection2"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = @"SELECT  [User_First_Name], [User_Last_Name], [User_Full_Name], [User_Address], [User_Phone_Number], [User_Email_Address], [User_User_Name], [User_ID]
                         FROM [dbo].[User]
                         WHERE [User_Email_Address] = @UserEmailAddress";// AND [User_ID] = @UserID";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserEmailAddress", email);
                    //command.Parameters.AddWithValue("@UserID", userId);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            Label label;
                            for (int i = 10; i <= 17; i++)
                            {
                                label = (Label)LoginView1.FindControl($"Label{i}");
                                if (label != null)
                                {
                                    label.Text = reader.GetValue(i - 10).ToString();
                                }
                            }
                        }
                    }
                }
            }
        }

        private void LoadUserInfoFromDatabase(string email, string userId)
        {
            string connectionString = "DefaultConnection2";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = @"SELECT  [User_First_Name], [User_Last_Name], [User_Full_Name], [User_Address], [User_Phone_Number], [User_Email_Address], [User_User_Name], [User_ID]
                         FROM [dbo].[Users]
                         WHERE [User_Email_Address] = @UserEmailAddress AND [User_ID] = @UserID";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserEmailAddress", email);
                    command.Parameters.AddWithValue("@UserID", userId);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            Label label;
                            for (int i = 10; i <= 17; i++)
                            {
                                label = (Label)LoginView1.FindControl($"Label{i}");
                                if (label != null)
                                {
                                    label.Text = reader.GetValue(i - 10).ToString();
                                }
                            }
                        }
                    }
                }
            }
        }

        protected void LoginView1_ViewChanged(object sender, EventArgs e)
        {

        }
        //End Session Button
        protected void Button3_Click(object sender, EventArgs e)
        {
            // Abandon the session
            Session.Abandon();

            // Redirect the user to the login page or any other page
            Response.Redirect("LoginPage.aspx");
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

