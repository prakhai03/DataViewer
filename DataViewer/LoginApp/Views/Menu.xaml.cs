using System.Collections.ObjectModel;

namespace LoginApp.Views;

public partial class Menu : ContentPage
{
	public Menu()
	{
		InitializeComponent();
       
    }

    private void viewList_ItemTapped(object sender, ItemTappedEventArgs e)
    {
        viewList.SelectedItem = null;
    }

    private async void viewList_ItemSelected(object sender, SelectedItemChangedEventArgs e)
    {
        if (viewList.SelectedItem != null)
        {
            string selected_item = new string (viewList.SelectedItem.ToString());
            if (selected_item== "Grid Controll")
            {
                //viewList.SelectedItem = null;
                await Shell.Current.GoToAsync(nameof(DataContent));
            }
            if (selected_item == "Data Form")
            {
                //viewList.SelectedItem = null;
                await Shell.Current.GoToAsync(nameof(DataFormView));
            }
            if (selected_item == "Toolbar")
            {
                await Shell.Current.GoToAsync(nameof(ToolbarView));
            }
            if (selected_item == "Tab View")
            {
                await Shell.Current.GoToAsync(nameof(TabView));

            }
        }

    }
    protected override void OnAppearing()
    {
        base.OnAppearing();
        DisplayItems();
    }

    public void DisplayItems()
    {
        //viewList.SelectedItem = null;
        var contents = new ObservableCollection<string> { "Grid Controll", "Data Form", "Toolbar", "Tab View" };
        viewList.ItemsSource = contents;
    }
    
}