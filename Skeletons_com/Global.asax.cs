using System;
using System.Web;
using System.Linq;
using System.Web.Routing;
using System.Web.Security;
using System.Web.Optimization;
using System.Web.SessionState;
using System.Collections.Generic;
using System.Security.Cryptography;

namespace Skeletons_com
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        void Session_End(object sender, EventArgs e)
        {
            // Code that runs when a session ends
            // Note: The Session_End event is raised only when the sessionstate mode
            // is set to InProc in the Web.config file. If session mode is set to StateServer 
            // or SQLServer, the event is not raised.

            // Clear the session
            Session.Clear();
        }
        void Application_End(object sender, EventArgs e)
        {
            // Code that runs on application shutdown
            /*foreach (var session in Session.Contents)
            {
                // Clear the session
                Session.Remove(session);
            }*/
            Session.Clear();

        }
    }
}