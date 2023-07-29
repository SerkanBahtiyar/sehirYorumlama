using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using cevreSehircilik.Entity;
namespace cevreSehircilik.AdminSayfa
{
    public partial class yorumGuncelle : System.Web.UI.Page
    {   cevreSehircilikEntities sb=new cevreSehircilikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int s = int.Parse(Request.QueryString["yorumid"]);
            if (Page.IsPostBack == false)
            {


                var yorum = sb.tblYorum.Find(s);
                TextBox1.Text = yorum.tblsehir.sehirBaslik;
                TextBox2.Text = yorum.kisiAd;
                TextBox4.Text = yorum.yorumicerik;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int s = int.Parse(Request.QueryString["yorumid"]);
            var yorum = sb.tblYorum.Find(s);
            yorum.mail = TextBox1.Text;
            yorum.yorumicerik = TextBox4.Text;

            sb.SaveChanges();
            Response.Redirect("yorumlar.Aspx");
        }
    }
}