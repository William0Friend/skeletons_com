using System;
using System.Web;
using System.Data;
using System.Linq;
using System.Web.UI;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Collections.Generic;

namespace Skeletons_com
{
    public partial class TypeSelectorAsp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownListType_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewInventory.SelectedIndex = -1;
            ImageSkeleton.ImageUrl = "";
            LabelDescription.Text = "";
        }

        protected void GridViewInventory_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedIndex = GridViewInventory.SelectedIndex;
            if (selectedIndex >= 0)
            {
                int selectedSkeletonId = (int)GridViewInventory.DataKeys[selectedIndex].Value;
                LoadSkeletonDetails(selectedSkeletonId);
            }
            else
            {
                ImageSkeleton.ImageUrl = "";
                LabelDescription.Text = "";
            }
        }

        private void LoadSkeletonDetails(int skeletonId)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringSkelenventory"].ConnectionString))
            {
                string query = "SELECT SkeletonDescription, SkeletonImagePath FROM Inventory WHERE SkeletonsID = @SkeletonsID";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@SkeletonsID", skeletonId);

                try
                {
                    connection.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string imagePath = reader["SkeletonImagePath"].ToString();
                            string description = reader["SkeletonDescription"].ToString();

                            ImageSkeleton.ImageUrl = imagePath;
                            LabelDescription.Text = description;
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle the exception by displaying an error message
                    LabelDescription.Text = "An error occurred while loading the skeleton details: " + ex.Message;
                    // You can also log the exception to a file or a database for further analysis
                }
            }
        }
    }
}
