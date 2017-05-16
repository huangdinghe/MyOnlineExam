using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


    public class ExamAdd:ICommand
    {
        private UrlManagement url = new UrlManagement();

        public global::UrlManagement UrlManagement
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }

        public void Execute(string name)
        {
            url.Request(name);
        }
    }
