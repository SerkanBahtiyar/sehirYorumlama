using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using cevreSehircilik.Entity;
namespace cevreSehircilik
{
    public partial class anasayfa : System.Web.UI.Page
    {    cevreSehircilikEntities sb=new cevreSehircilikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var sehirler = sb.tblsehir.ToList();
            Repeater1.DataSource= sehirler;
            Repeater1.DataBind();

            var sehirler2 = sb.tblKategori.ToList();
            Repeater2.DataSource = sehirler2;
            Repeater2.DataBind();

            var sehirler3 = sb.tblsehir.ToList();
            Repeater3.DataSource = sehirler3;
            Repeater3.DataBind();

            var sehirler4 = sb.tblYorum.Take(3).ToList();
            Repeater4.DataSource = sehirler4;
            Repeater4.DataBind();
        }
    }
}