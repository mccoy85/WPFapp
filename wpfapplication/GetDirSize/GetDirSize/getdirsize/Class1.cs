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
        static string GetDirectorySize(string p)
        {
            try
            {
                // 1.
                // Get array of all file names.
                string[] a = Directory.GetFiles(p, "*.*", SearchOption.AllDirectories);
                int i;
                //for (i = 0; i < a.Length; i++)
                //{ Console.WriteLine(a[i]); }


                // 2.
                // Calculate total bytes of all files in a loop.
                long b = 0;
                foreach (string name in a)
                {
                    // 3.
                    // Use FileInfo to get length of each file.
                    FileInfo info = new FileInfo(name);
                    b += info.Length;
                }
                // 4.
                // Return total size
                return Convert.ToString(b);
            }
            catch (UnauthorizedAccessException e)
            {
                return "Access to file " + p + " was denied";

            }
        }
    }
}
