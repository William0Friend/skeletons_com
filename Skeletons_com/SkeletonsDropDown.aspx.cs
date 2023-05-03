using System;
using System.Web;
using System.Data;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Web.UI.HtmlControls;

namespace Skeletons_com
{
    public partial class SkeletonsDropDown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvItems_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string imagePath = DataBinder.Eval(e.Row.DataItem, "SkeletonImagePath").ToString();
                string description = DataBinder.Eval(e.Row.DataItem, "SkeletonDescription").ToString();
                //Javascript Functions on master page
                e.Row.Attributes.Add("onmouseover", $"showImage('{imagePath}', '{description}');");
                e.Row.Attributes.Add("onmouseout", "hideImage();");
            }
        }

        //Handle the Repeater's ItemDataBound event to attach the image path and description to the image when hovering over a Repeater item.
        protected void rptItems_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView drv = (DataRowView)e.Item.DataItem;
                string imagePath = drv["SkeletonImagePath"].ToString();
                string description = drv["SkeletonDescription"].ToString();
                var img = (Image)e.Item.FindControl("imgItem");
                img.Attributes.Add("onmouseover", $"showImage('{imagePath}', '{description}');");
                img.Attributes.Add("onmouseout", "hideImage();");
                var div = (HtmlGenericControl)e.Item.FindControl("divItem");
                //div.Attributes.Add("onclick", $"setSelectedItemId('{drv["SkeletonsID"]}');");
                if (div != null)
                {
                    div.Attributes.Add("onclick", $"setSelectedItemId('{drv["SkeletonsID"]}');");
                }
            }
        }
        //Add a C# function to the page to set the selected item's ID in the HiddenField and update the DetailsView to display the selected item.
        protected void SetSelectedItemId(string itemId)
        {
            //hdnSelectedItemId.Value = itemId;
            dvItem.DataBind();
        }



        //try 4
        protected void gvItems_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var drv = (DataRowView)e.Row.DataItem;
                var div = (HtmlGenericControl)e.Row.FindControl("divItem");
                if (div != null)
                {
                    div.Attributes.Add("data-skeleton-id", drv["SkeletonsID"].ToString());
                }
            }
        }
        protected void gvItems_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Hover")
            {
                hfSelectedItemId.Value = e.CommandArgument.ToString();
                detailsPane.Visible = true;
            }
        }

    }
}