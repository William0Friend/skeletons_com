using System;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Skeletons_com
{
    public partial class MyAccount : System.Web.UI.Page
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
            // Implement edit functionality
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            // Implement update functionality
        }
    }
}
