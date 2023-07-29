using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using cevreSehircilik.Entity;
namespace cevreSehircilik.AdminSayfa
{
    public partial class istatistik : System.Web.UI.Page
    {    cevreSehircilikEntities sb=new cevreSehircilikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = sb.tblsehir.Count().ToString();
            Label2.Text = sb.tblYorum.Count().ToString();
            Label3.Text = sb.tblsehir.Where(s => s.sehirKategori==2).Count().ToString();
            Label5.Text = sb.tblsehir.Where(s => s.sehirKategori == 1).Count().ToString();
            Label4.Text = sb.tblsehir.Where(s => s.tblTur.turAd == "**").Count().ToString();
            Label7.Text = sb.tblsehir.Where(s => s.tblTur.turAd == "*").Count().ToString();
            Label8.Text = sb.tblsehir.Where(s => s.tblTur.turAd == "***").Count().ToString();
            Label6.Text = sb.tblsehir.Where(a => a.sehirid == (sb.tblYorum.GroupBy(s => s.yorumSehir).OrderByDescending(s => s.Count()).Select(b => b.Key).FirstOrDefault())).Select(o => o.sehirBaslik).FirstOrDefault();
            //en fazla yorumlu şehir label6
        }
    }
}