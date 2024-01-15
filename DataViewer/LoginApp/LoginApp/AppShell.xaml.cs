
using LoginApp.Views;
using System.Collections.ObjectModel;
using Menu = LoginApp.Views.Menu;

namespace LoginApp
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(LoginPage), typeof(LoginPage));
            Routing.RegisterRoute(nameof(DataContent), typeof(DataContent));
            Routing.RegisterRoute(nameof(Menu), typeof(Menu));
            Routing.RegisterRoute(nameof(DataFormView), typeof(DataFormView));
            Routing.RegisterRoute(nameof(ToolbarView), typeof(ToolbarView));

        }
    }
}
