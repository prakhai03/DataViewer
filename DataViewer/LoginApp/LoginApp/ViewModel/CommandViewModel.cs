using LoginApp.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace LoginApp.ViewModel
{
    public class CommandViewModel
    {
        public ICommand BackCommand =>
            new Command(ClickEvent);

        private async void ClickEvent(object obj)
        {
            await Shell.Current.GoToAsync(nameof(Menu));
        }
    }
}
