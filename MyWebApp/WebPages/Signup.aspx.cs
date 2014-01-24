using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using BAL;

namespace MyWebApp.WebPages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fac.visible = false;
            if (IsPostBack)
                return;
        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            string un, pass;
            un = usernametxtbox.Text;
            pass = passwordtxtbox.Text;
            new BalClass()._passData(un, pass);
        }

        protected void UserSelectrblist_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Usertyperblist.SelectedValue == "Faculty")
            {
                fac.visible = true;
            }
        }
    }
}
