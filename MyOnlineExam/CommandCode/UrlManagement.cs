using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

public class UrlManagement:Page
{

    public new void Request(string name)
    {
        //System.Web.HttpContext.Current.Response.Redirect(name);
        HttpContext.Current.Response.Redirect(name);//说明该环境与前文相同
    }
}