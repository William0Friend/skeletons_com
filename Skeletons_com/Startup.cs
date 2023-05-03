using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Skeletons_com.Startup))]
namespace Skeletons_com
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
