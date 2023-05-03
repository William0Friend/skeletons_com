using System;
using System.Web;
using System.Data;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;

namespace Skeletons_com
{
    public partial class TypeSelector : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //protected void GridViewInventory_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    int selectedID = (int)GridViewInventory.SelectedValue;
        //    DataRowView row = (DataRowView)SqlDataSourceDetailsView.Select(DataSourceSelectArguments.Empty);
        //    string imagePath = row["SkeletonImagePath"].ToString();
        //    string description = row["SkeletonDescription"].ToString();

        //    ImageSkeleton.ImageUrl = imagePath;
        //    LabelDescription.Text = description;
        //}

        protected void GridViewInventory_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedID = (int)GridViewInventory.SelectedValue;
            DataRowView row = (DataRowView)SqlDataSourceDetailsView.Select(DataSourceSelectArguments.Empty);
            string imagePath = row["SkeletonImagePath"].ToString();
            string description = row["SkeletonDescription"].ToString();

            ImageSkeleton.ImageUrl = imagePath;
            LabelDescription.Text = description;
        }
        protected void GridViewInventory_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView rowView = (DataRowView)e.Row.DataItem;
                string imagePath = rowView["SkeletonImagePath"].ToString();
                string description = rowView["SkeletonDescription"].ToString();

                e.Row.CssClass = "hover-image-container";
                e.Row.Attributes.Add("data-image", imagePath);
                e.Row.Attributes.Add("data-description", description);
            }
        }
    }
}