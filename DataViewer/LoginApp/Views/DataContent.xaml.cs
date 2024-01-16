
using LoginApp.Models;
using System.Collections.ObjectModel;
using Credential = LoginApp.Models.Credential;
using System.Windows.Forms;
using LoginApp.ViewModel;

namespace LoginApp.Views;


public partial class DataContent : ContentPage
{
	public DataContent()
	{
        
        InitializeComponent();
                
    }
    protected override void OnAppearing()
	{
        var contents = new ObservableCollection<Credential>(CredentialsRepository.GetCredentials());
		listcredentials.ItemsSource = contents;
        BindingContext = new CommandViewModel();
	}
}