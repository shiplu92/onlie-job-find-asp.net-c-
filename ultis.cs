using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace find_job_protal
{
    public class ultis
    {
        public static bool isvalidExtensionResume(string fileName)
        {
            bool isValid = false;
            string[] fileExtension = { ".doc", ".docx", ".pdf" };
            for (int i = 0; i <= fileExtension.Length - i; i++)
            {
                if (fileName.Contains(fileExtension[i]))
                {
                    isValid = true;
                    break;
                }
            }
            return isValid;

        }





























    }
}