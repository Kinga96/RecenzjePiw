using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class uwagi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlwidok.SelectedValue == "V1")
            {
                MultiView1.SetActiveView(V1);
            }
            else if (ddlwidok.SelectedValue == "V2")
            {
                MultiView1.SetActiveView(V2);
            }
            else if (ddlwidok.SelectedValue == "V3")
            {
                MultiView1.SetActiveView(V3);
            }
            else MultiView1.ActiveViewIndex = -1;
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tbnazwisko_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tbimie_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tbemail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string url;
            string parameters;

            url = "podsumowanie.aspx";
            parameters = "?";
            parameters += "imie=" + Server.UrlEncode(tbimie.Text);
            parameters += "&";
            parameters += "nazwisko=" + Server.UrlEncode(tbnazwisko.Text);
            parameters += "&";
            parameters += "email=" + Server.UrlEncode(tbemail.Text);
            parameters += "&";
            parameters += "rok=" + Server.UrlEncode(tbrok.Text);
            parameters += "&";
            parameters += "uwagi=" + Server.UrlEncode(tbuwagi.Text);


            Server.Transfer(url + parameters);
        }
    }
}