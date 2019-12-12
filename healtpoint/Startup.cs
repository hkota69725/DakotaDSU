using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(healtpoint.Startup))]
namespace healtpoint
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
