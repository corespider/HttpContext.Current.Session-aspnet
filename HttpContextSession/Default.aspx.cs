using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HttpContextSession
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [System.Web.Services.WebMethod]
        public static string SetSession(string name)
        {
            HttpContext.Current.Session["Name"] = name;
            return "Hello " + HttpContext.Current.Session["Name"] + Environment.NewLine + "The Current Time is: " + DateTime.Now.ToString();
        }
    }
}