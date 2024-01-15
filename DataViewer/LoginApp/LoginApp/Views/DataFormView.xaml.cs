
using LoginApp.Models;
using LoginApp.ViewModel;
using Microsoft.Maui.Controls.Xaml;
using Credential = LoginApp.Models.Credential;
namespace LoginApp.Views;

public partial class DataFormView : ContentPage
{
	public DataFormView()
	{
		InitializeComponent();
        Credential credential = new Credential();
        dataform.DataObject = credential;
        BindingContext = new CommandViewModel();
        
    }

   


    private void SaveBtn_Clicked(object sender, EventArgs e)
    {
        dataform.Commit();
        if (dataform.DataObject != null)
        {
            Credential credential = dataform.DataObject as Credential;
           
            if (string.IsNullOrEmpty(credential.Username) ) 
            {
                DisplayAlert("Error", "Usename Cannot be empty", "Ok");
            }
            if (string.IsNullOrEmpty(credential.password) )
            {
                DisplayAlert("Error", "Password cannot be empty", "Ok");
            }
            else
            {
                CredentialsRepository.AddCredentials(credential);
                Shell.Current.GoToAsync(nameof(Menu));
            }

        }
    }

    
}