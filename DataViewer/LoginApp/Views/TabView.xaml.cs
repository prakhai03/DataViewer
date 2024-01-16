using LoginApp.ViewModel;

namespace LoginApp.Views;

public partial class TabView : ContentPage
{
	public TabView()
	{
		InitializeComponent();
        BindingContext = new CommandViewModel();
    }
}