using Android.Content;
using Android.Graphics;
using AndroidX.Annotations;
using CommunityToolkit.Maui.Storage;
using CommunityToolkit.Maui.Views;
using LoginApp.ViewModel;
using System.ComponentModel;
using System.Windows.Input;
using Xamarin.KotlinX.Coroutines;
using Color = Microsoft.Maui.Graphics.Color;


namespace LoginApp.Views;



public partial class ToolbarView : ContentPage
{
    public ToolbarView()
    {

        InitializeComponent();
        backButton.BindingContext = new CommandViewModel();

        DrawingViewControl.LineColor = Color.FromRgba(0, 0, 0, 1);
        toolbarColorSelector.SelectedColor = Color.FromRgba(0, 0, 0, 1);
        //DrawingViewControl.LineColor = toolbarColorSelector.SelectedColor;



    }
    static double GetSide(double value) =>
        double.IsNaN(value) || value <= 1 ? 200 : value;

    private bool isStylusActive = false;





    private async void SaveBtn_Clicked(object sender, EventArgs e)
    {
        using var stream = await DrawingViewControl.GetImageStream(1024, 1024);
        using var memoryStream = new MemoryStream();

        stream.Position = 0;
        memoryStream.Position = 0;
        using var cts = new CancellationTokenSource();

#if ANDROID
        var context = Platform.CurrentActivity;

       

        if (OperatingSystem.IsAndroidVersionAtLeast(29))
        {
            Android.Content.ContentResolver resolver = context.ContentResolver;
            Android.Content.ContentValues contentValues = new();
            contentValues.Put(Android.Provider.MediaStore.IMediaColumns.DisplayName, "test.png");
            contentValues.Put(Android.Provider.MediaStore.IMediaColumns.MimeType, "image/png");
            contentValues.Put(Android.Provider.MediaStore.IMediaColumns.RelativePath, "DCIM/" + "test");
            Android.Net.Uri imageUri = resolver.Insert(Android.Provider.MediaStore.Images.Media.ExternalContentUri, contentValues);
            var os = resolver.OpenOutputStream(imageUri);
            Android.Graphics.BitmapFactory.Options options = new();
            options.InJustDecodeBounds = true;
            var bitmap = Android.Graphics.BitmapFactory.DecodeStream(stream);
            bitmap.Compress(Android.Graphics.Bitmap.CompressFormat.Png, 100, os);
            os.Flush();
            os.Close();
        }
        else
        {
            Java.IO.File storagePath = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures);
            string path = System.IO.Path.Combine(storagePath.ToString(), "test.png");
            System.IO.File.WriteAllBytes(path, memoryStream.ToArray());
            var mediaScanIntent = new Android.Content.Intent(Android.Content.Intent.ActionMediaScannerScanFile);
            mediaScanIntent.SetData(Android.Net.Uri.FromFile(new Java.IO.File(path)));
            context.SendBroadcast(mediaScanIntent);

        }
#endif
    }

    
            private void ClearBtn_Clicked(object sender, EventArgs e)
    {
        DrawingViewControl.Clear();
    }

    private void StylusBtn_Clicked(object sender, EventArgs e)
    {
       
        isStylusActive = !isStylusActive;

    }

    private void EraserBtn_Clicked(object sender, EventArgs e)
    {

    }

    private void DrawingViewControl_DrawingLineStarted(object sender, CommunityToolkit.Maui.Core.DrawingLineStartedEventArgs e)
    {
        DrawingViewControl.LineColor = toolbarColorSelector.SelectedColor;
    }

    

    private void toolbarColorSelector_SelectedColorChanged(object sender, DevExpress.Maui.Core.ValueChangedEventArgs<Color> e)
    {
        DrawingViewControl.LineColor = toolbarColorSelector.SelectedColor;
    }
}