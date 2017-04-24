using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class podsumowanie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbimie.Text = getImie();
            lbnazwisko.Text = getNazwisko();
            lbemail.Text = getEmail();
            lbrok.Text = getRok();
            lbuwagi.Text = getUwagi();
        }
        private string getImie()
        {
            return Request.QueryString["imie"];
        }
        private string getNazwisko()
        {
            return Request.QueryString["nazwisko"];
        }
        private string getEmail()
        {
            return Request.QueryString["email"];
        }
        private string getRok()
        {
            return Request.QueryString["rok"];
        }
        private string getUwagi()
        {
            return Request.QueryString["uwagi"];
        }
    }



}