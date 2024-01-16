using LoginApp.Models;

namespace LoginApp.Views;

public partial class LoginPage : ContentPage
{
	public LoginPage()
	{
		InitializeComponent();
		popup.IsOpen = false;
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
            
            Username = string.Empty;
            Password = string.Empty;
			popup.IsOpen = true;
        }

    }

    private void PopupBtn_Clicked(object sender, EventArgs e)
    {
		popup.IsOpen = false;
    }
}