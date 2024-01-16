using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace LoginApp.Models
{
    public static class CredentialsRepository
    {
        public static List<Credential> Credentials = new List<Credential>() {
            new Credential{Username="atharvshah", password="123123", Email="atharvs@gmail.com"},
            new Credential{Username="username", password="password", Email="username@gmail.com"},
            new Credential{Username="prakhark", password = "prakharkhare", Email="prakhark@gmail.com"},
            };

        public static List<Credential> GetCredentials() { return Credentials; }

        public static bool checkCredentials( string usernameEntry, string passwordentry)
        {
            var cred = Credentials.FirstOrDefault(x=> x.Username == usernameEntry);
            if (cred == null)
            {
                return false;
            }
            if (cred.password != passwordentry)
            {
                return false;
            }
            return true;
        }

        public static void AddCredentials(Credential credential)
        {
            Credentials.Add(credential);
        }

       

    }

}
