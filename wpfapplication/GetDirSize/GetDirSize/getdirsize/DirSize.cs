using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GetDirSize
{
    public class DirSize
    {
       public static string GetDirectorySize(string p)
        {
            try
            {
                // Get array of all file names.
                string[] a = Directory.GetFiles(p, "*.*", SearchOption.AllDirectories);
                
                
                //list all of the files in the diectory. can be too expensive
                //int i;
                //for (i = 0; i < a.Length; i++)
                //{ Console.WriteLine(a[i]); }

                // Calculate total bytes of all files in a loop.
                long b = 0;
                foreach (string name in a)
                {
                    // Use FileInfo to get length of each file.
                    FileInfo info = new FileInfo(name);
                    b += info.Length;
                }

                // Return total size
                return Convert.ToString(b);
            }
                //dont have permissions to the file
            catch (UnauthorizedAccessException e)
            {
                return "Access to file " + p + " was denied";

            }
        }
    }
}
