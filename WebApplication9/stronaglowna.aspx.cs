using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class stronaglowna : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string url;
            url = "recenzje.aspx";
            Response.Redirect(url);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string url;
            url = "niepelnoletni.aspx";
            Response.Redirect(url);
        }
    }
}