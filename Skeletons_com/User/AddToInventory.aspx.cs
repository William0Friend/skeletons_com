using System;
using System.Web;
using System.Linq;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Collections.Generic;

namespace Skeletons_com.User
{
    public partial class AddToInventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void ButtonAddInventory_Click(object sender, EventArgs e)
        {
            // Get values from the form
            TextBox TextBoxSkeletonsOwner = (TextBox)LoginView1.FindControl("TextBoxSkeletonsOwner");
            TextBox TextBoxSkeletonsType = (TextBox)LoginView1.FindControl("TextBoxSkeletonsType");
            TextBox TextBoxSkeletonDescription = (TextBox)LoginView1.FindControl("TextBoxSkeletonDescription");
            TextBox TextBoxSkeletonConditionRating = (TextBox)LoginView1.FindControl("TextBoxSkeletonConditionRating");
            TextBox TextBoxSkeletonImagePath = (TextBox)LoginView1.FindControl("TextBoxSkeletonImagePath");
            TextBox TextBoxSkeletonPrice = (TextBox)LoginView1.FindControl("TextBoxSkeletonPrice");
            TextBox TextBoxSkeletonImageFileName = (TextBox)LoginView1.FindControl("TextBoxSkeletonImageFileName");
            TextBox TextBoxSkeletonAvalible = (TextBox)LoginView1.FindControl("TextBoxSkeletonAvalible");
            TextBox TextBoxSkeletonQuantity = (TextBox)LoginView1.FindControl("TextBoxSkeletonQuantity");
            //RadioButtonList RadioButtonListSkeletonForSell = (RadioButtonList)LoginView1.FindControl("RadioButtonListSkeletonForSell");
            //RadioButtonList RadioButtonListSkeletonForBuy = (RadioButtonList)LoginView1.FindControl("RadioButtonListSkeletonForBuy");
            //RadioButtonList RadioButtonListSkeletonForLease = (RadioButtonList)LoginView1.FindControl("RadioButtonListSkeletonForLease");

            // connection to skelenventory
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringSkelenventory"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                //string query = "INSERT INTO Inventory (SkeletonsOwner, SkeletonsType, SkeletonDescription, SkeletonConditionRating, SkeletonImagePath, SkeletonPrice, SkeletonImageFileName, SkeletonAvalible, SkeletonQuantity, SkeletonForSell, SkeletonForBuy, SkeletonForLease) VALUES (@SkeletonsOwner, @SkeletonsType, @SkeletonDescription, @SkeletonConditionRating, @SkeletonImagePath, @SkeletonPrice, @SkeletonImageFileName, @SkeletonAvalible, @SkeletonQuantity, @SkeletonForSell, @SkeletonForBuy, @SkeletonForLease)";
                //string query = "INSERT INTO Inventory (SkeletonsOwner, SkeletonsType, SkeletonDescription, SkeletonConditionRating, SkeletonImagePath, SkeletonPrice, SkeletonImageFileName, SkeletonQuantity, SkeletonForSell, SkeletonForBuy, SkeletonForLease) VALUES (@SkeletonsOwner, @SkeletonsType, @SkeletonDescription, @SkeletonConditionRating, @SkeletonImagePath, @SkeletonPrice, @SkeletonImageFileName, @SkeletonQuantity, @SkeletonForSell, @SkeletonForBuy, @SkeletonForLease)";
                string query = "INSERT INTO Inventory (SkeletonsOwner, SkeletonsType, SkeletonDescription, SkeletonConditionRating, SkeletonImagePath, SkeletonPrice, SkeletonImageFileName, SkeletonQuantity) VALUES (@SkeletonsOwner, @SkeletonsType, @SkeletonDescription, @SkeletonConditionRating, @SkeletonImagePath, @SkeletonPrice, @SkeletonImageFileName, @SkeletonQuantity)";
                // add date time and radio
                //string query = "INSERT INTO Inventory (SkeletonsOwner, SkeletonsType, SkeletonDescription, SkeletonConditionRating, SkeletonImagePath, SkeletonPrice, SkeletonImageFileName, SkeletonQuantity) VALUES (@SkeletonsOwner, @SkeletonsType, @SkeletonDescription, @SkeletonConditionRating, @SkeletonImagePath, @SkeletonPrice, @SkeletonImageFileName, @SkeletonQuantity)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add the parameters for the Inventory table as needed
                    command.Parameters.AddWithValue("@SkeletonsOwner", TextBoxSkeletonsOwner.Text);
                    command.Parameters.AddWithValue("@SkeletonsType", TextBoxSkeletonsType.Text);
                    command.Parameters.AddWithValue("@SkeletonDescription", TextBoxSkeletonDescription.Text);
                    command.Parameters.AddWithValue("@SkeletonConditionRating", Convert.ToInt32(TextBoxSkeletonConditionRating.Text));
                    command.Parameters.AddWithValue("@SkeletonImagePath", TextBoxSkeletonImagePath.Text);
                    command.Parameters.AddWithValue("@SkeletonPrice", Convert.ToInt32(TextBoxSkeletonPrice.Text));
                    command.Parameters.AddWithValue("@SkeletonImageFileName", TextBoxSkeletonImageFileName.Text);
                    //command.Parameters.AddWithValue("@SkeletonAvalible", TextBoxSkeletonAvalible.Text);
                    command.Parameters.AddWithValue("@SkeletonQuantity", Convert.ToInt32(TextBoxSkeletonQuantity.Text));
                   // command.Parameters.AddWithValue("@SkeletonForSell", RadioButtonListSkeletonForSell.SelectedValue);
                   // command.Parameters.AddWithValue("@SkeletonForBuy", RadioButtonListSkeletonForBuy.SelectedValue);
                   // command.Parameters.AddWithValue("@SkeletonForLease", RadioButtonListSkeletonForLease.SelectedValue);
                    command.ExecuteNonQuery();
                }
            }

            // Clear the form fields after successful insertion
            TextBoxSkeletonsOwner.Text = string.Empty;
            TextBoxSkeletonsType.Text = string.Empty;
            TextBoxSkeletonDescription.Text = string.Empty;
            TextBoxSkeletonConditionRating.Text = string.Empty;
            TextBoxSkeletonImagePath.Text = string.Empty;
            TextBoxSkeletonPrice.Text = string.Empty;
            TextBoxSkeletonImageFileName.Text = string.Empty;
            TextBoxSkeletonAvalible.Text = string.Empty;
            TextBoxSkeletonQuantity.Text = string.Empty;
           // RadioButtonListSkeletonForSell.ClearSelection();
           // RadioButtonListSkeletonForBuy.ClearSelection();
          //  RadioButtonListSkeletonForLease.ClearSelection();
        
        }


    }
}



/*protected void ButtonAddInventory_Click(object sender, EventArgs e)
{
    //Get values from the form, must be done this way due to login view
    TextBox TextBoxSkeletonsOwner = (TextBox)LoginView1.FindControl("TextBoxSkeletonsOwner");
    TextBox TextBoxSkeletonsType = (TextBox)LoginView1.FindControl("TextBoxSkeletonsType");
    TextBox TextBoxSkeletonDescription = (TextBox)LoginView1.FindControl("TextBoxSkeletonDescription");
    TextBox TextBoxSkeletonConditionRating = (TextBox)LoginView1.FindControl("TextBoxSkeletonConditionRating");
    TextBox TextBoxSkeletonImagePath = (TextBox)LoginView1.FindControl("TextBoxSkeletonImagePath");
    TextBox TextBoxSkeletonPrice = (TextBox)LoginView1.FindControl("TextBoxSkeletonPrice");
    TextBox TextBoxSkeletonImageFileName = (TextBox)LoginView1.FindControl("TextBoxSkeletonImageFileName");
    TextBox TextBoxSkeletonAvalible = (TextBox)LoginView1.FindControl("TextBoxSkeletonAvalible");
    TextBox TextBoxSkeletonQuantity = (TextBox)LoginView1.FindControl("TextBoxSkeletonQuantity");
    TextBox TextBoxSkeletonForSell = (TextBox)LoginView1.FindControl("TextBoxSkeletonForSell");
    TextBox TextBoxSkeletonForBuy = (TextBox)LoginView1.FindControl("TextBoxSkeletonForBuy");
    TextBox TextBoxSkeletonForLease = (TextBox)LoginView1.FindControl("TextBoxSkeletonForLease");

    // connection to skelenventory
    string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringSkelenventory"].ConnectionString;

    using (SqlConnection connection = new SqlConnection(connectionString))
    {
        //connection.Open();

        string query = "INSERT INTO Inventory (SkeletonsOwner, SkeletonsType, SkeletonDescription, SkeletonConditionRating, SkeletonImagePath, SkeletonPrice, SkeletonImageFileName, SkeletonAvalible, SkeletonQuantity, SkeletonForSell, SkeletonForBuy, SkeletonForLease) VALUES (@SkeletonsOwner, @SkeletonsType, @SkeletonDescription, @SkeletonConditionRating, @SkeletonImagePath, @SkeletonPrice, @SkeletonImageFileName, @SkeletonAvalible, @SkeletonQuantity, @SkeletonForSell, @SkeletonForBuy, @SkeletonForLease)";

        using (SqlCommand command = new SqlCommand(query, connection))
        {
            // Add the parameters for the Inventory table as needed

            command.Parameters.AddWithValue("@SkeletonsOwner", TextBoxSkeletonsOwner.Text);
            command.Parameters.AddWithValue("@SkeletonsType", TextBoxSkeletonsType.Text);
            command.Parameters.AddWithValue("@SkeletonDescription", TextBoxSkeletonDescription.Text);
            command.Parameters.AddWithValue("@SkeletonConditionRating", TextBoxSkeletonConditionRating.Text);
            command.Parameters.AddWithValue("@SkeletonImagePath", TextBoxSkeletonImagePath.Text);
            command.Parameters.AddWithValue("@SkeletonPrice", TextBoxSkeletonPrice.Text);
            command.Parameters.AddWithValue("@SkeletonImageFileName", TextBoxSkeletonImageFileName.Text);
            command.Parameters.AddWithValue("@SkeletonAvalible", TextBoxSkeletonAvalible.Text);
            command.Parameters.AddWithValue("@SkeletonQuantity", TextBoxSkeletonQuantity.Text);
            command.Parameters.AddWithValue("@SkeletonForSell", TextBoxSkeletonForSell.Text);
            command.Parameters.AddWithValue("@SkeletonSkeletonForBuy", TextBoxSkeletonForBuy.Text);
            command.Parameters.AddWithValue("@SkeletonForLease", TextBoxSkeletonForLease.Text);
            command.ExecuteNonQuery();
        }
    }

    // Clear the form fields after successful insertion
    TextBoxSkeletonsOwner.Text = string.Empty;
    TextBoxSkeletonsType.Text = string.Empty;
    TextBoxSkeletonDescription.Text = string.Empty;
    TextBoxSkeletonConditionRating.Text = string.Empty;
    TextBoxSkeletonImagePath.Text = string.Empty;
    TextBoxSkeletonPrice.Text = string.Empty;
    TextBoxSkeletonImageFileName.Text = string.Empty;
    TextBoxSkeletonAvalible.Text = string.Empty;
    TextBoxSkeletonQuantity.Text = string.Empty;
    TextBoxSkeletonForSell.Text = string.Empty;
    TextBoxSkeletonForBuy.Text = string.Empty;
    TextBoxSkeletonForLease.Text = string.Empty;
}*/