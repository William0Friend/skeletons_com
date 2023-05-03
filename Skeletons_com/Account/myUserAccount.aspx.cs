using System;
using System.Web;
using System.Linq;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Skeletons_com.Account
{
    public partial class myUserAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserInfo();
            }
        }

        private void LoadUserInfo()
        {
            var manager = new UserManager<IdentityUser>(new UserStore<IdentityUser>(new IdentityDbContext()));
            var currentUser = manager.FindById(User.Identity.GetUserId());

            if (currentUser != null)
            {
                LabelUserID.Text = $"User ID: {currentUser.Id}";
                LabelName.Text = $"Name: {currentUser.UserName}";
                LabelEmail.Text = $"Email: {currentUser.Email}";
            }
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            // Get the clicked button
            //Button button = (Button)sender;

            // Get the GridViewRow that contains the clicked button
           // GridViewRow row = (GridViewRow)button.NamingContainer;

            // Get the data key value for the clicked row
           // int id = (int)GridView1.DataKeys[row.RowIndex].Value;

            // Retrieve the data for the selected record using the id
            // (Assuming there is a method called GetDataById that retrieves the data for a record by its id)
            // DataTable dt = GetDataById(id);

            // Populate the form fields with the retrieved data
            // txtName.Text = dt.Rows[0]["Name"].ToString();
            // txtAge.Text = dt.Rows[0]["Age"].ToString();
            // ...

            // Show the update panel containing the form fields
            //UpdatePanelEdit.Visible = true;
        }//

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            // Get the data to update from the form fields
            // string name = txtName.Text;
            // int age = int.Parse(txtAge.Text);
            // ...

            // Update the record in the database using the data
            // (Assuming there is a method called UpdateData that updates a record with the given data)
            // UpdateData(id, name, age, ...);

            // Hide the update panel containing the form fields
            //UpdatePanelEdit.Visible = false;

            // Refresh the GridView to show the updated data
            //GridView1.DataBind();
        }
    }
}