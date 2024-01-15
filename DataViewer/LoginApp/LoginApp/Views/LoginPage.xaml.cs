using LoginApp.Models;

namespace LoginApp.Views;

public partial class LoginPage : ContentPage
{
	public LoginPage()
	{
		InitializeComponent();
	}

	public String Username
	{
		get
		{
			return usernameEntry.Text;

		}
		set
		{
			usernameEntry.Text = value;
		}
	}

	public String Password
	{
		get { return passwordEntry.Text; }

		set { passwordEntry.Text = value; }
        
	}

    private async void SigninBtn_Clicked(object sender, EventArgs e)
    {
		
		if (CredentialsRepository.checkCredentials(Username, Password))
		{
            Username = string.Empty;
            Password = string.Empty;
            await Shell.Current.GoToAsync(nameof(Menu));
		}
		else
		{
            await DisplayAlert("Incorrect Credentials", "Password or Username incorrect", "Retry");
            Username = string.Empty;
            Password = string.Empty;
        }

    }
}