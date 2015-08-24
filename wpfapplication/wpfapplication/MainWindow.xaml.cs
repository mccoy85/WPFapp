using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;
using System.ComponentModel;
using System.Threading;

namespace WpfApplication
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            //bring form to front
            form.BringIntoView();
            form.Width = 640;
            form.Height = 320;
        }
        //pull up the modal box to select directory on click 
        private void btnDir1_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new System.Windows.Forms.FolderBrowserDialog();

            System.Windows.Forms.DialogResult result = dialog.ShowDialog();
            txt1.Text = dialog.SelectedPath;
            btnDir2.IsEnabled = true;

        }
        //pull up the modal box to select directory on click
        private void btnDir2_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new System.Windows.Forms.FolderBrowserDialog();

            System.Windows.Forms.DialogResult result = dialog.ShowDialog();
            txt2.Text = dialog.SelectedPath;
            btnDir3.IsEnabled = true;

        }
        //pull up the modal box to select directory on click
        private void btnDir3_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new System.Windows.Forms.FolderBrowserDialog();

            System.Windows.Forms.DialogResult result = dialog.ShowDialog();
            txt3.Text = dialog.SelectedPath;

        }
        //run the calculations
        private void btnRun_Click(object sender, RoutedEventArgs e)
        {
            List<String> sizes = new List<String>();

            if (txt1.Text != "")
            {
                lblpopUp.Text = "";
                //get all the file paths    
                String[] path = { txt1.Text, txt2.Text, txt3.Text };
                //thread and run throught he file paths
                Parallel.ForEach(path, currentPath =>
                {
                    if (currentPath != "")
                    {
                        if (Directory.Exists(currentPath))
                        {
                            //add each directory size the list call directory size dll
                            sizes.Add("The total file size for the directory " + currentPath + " is " + GetDirSize.DirSize.GetDirectorySize(currentPath) + " bytes \n\n");


                        }

                        else if (!Directory.Exists(currentPath))
                        {
                            //directory not found
                            sizes.Add("The directory " + currentPath + " does not exist \n\n");
                        }
                    }
                }
                );
                Popup1.IsOpen = true;

                for (int i = 0; i < sizes.Count; i++)
                {
                    lblpopUp.Text += sizes[i];
                }


            }
            else
            {
                //no directory selected
                lblpopUp.Text = "Please select a directory for directory 1";
                Popup1.IsOpen = true;
            }
        }

        private void PopUp_OK_Click(object sender, RoutedEventArgs e)
        {
            //close popup
            Popup1.IsOpen = false;
            lblpopUp.Text = "";


        }

    }
}
