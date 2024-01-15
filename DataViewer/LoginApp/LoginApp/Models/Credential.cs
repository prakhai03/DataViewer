using DevExpress.Maui.DataForm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LoginApp.Models
{
    public class Credential()
    {
        public string Username { get; set; }

        [DataFormPasswordEditor]
        public string password { get; set; }
        
        public string Email { get; set; }

        [DataFormMaskedEditor(Mask ="+0 (000) 000-0000" , Keyboard ="Telephone")]
        public int Phone {  get; set; }

        public virtual JobTittle JobTttle { get; set; }
    }

    public enum JobTittle
    {
        Engineer, ITProfessional, ProjectManager, Architect
    }
}
