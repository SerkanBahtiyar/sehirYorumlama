using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using cevreSehircilik.Entity;
namespace cevreSehircilik
{
    public partial class giris : System.Web.UI.Page
    {
        cevreSehircilikEntities sb = new cevreSehircilikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in sb.tblAdmin
                        where
                       x.kullaniciAdi == TextBox1.Text && x.sifre == TextBox2.Text
                        select x;
            if (sorgu.Any())
            {
                Session.Add("kullanici", TextBox1.Text);
                Response.Redirect("/AdminSayfa/sehirler.aspx");
            }
            else
            {
                Response.Write("Hata");
            }
        }
    }
}