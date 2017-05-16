using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

    public class UserInfoEdit:ICommand
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
