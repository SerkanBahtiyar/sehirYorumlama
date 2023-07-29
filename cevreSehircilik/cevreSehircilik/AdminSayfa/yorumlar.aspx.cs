using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using cevreSehircilik.Entity;
namespace cevreSehircilik.AdminSayfa
{
    public partial class yorumlar : System.Web.UI.Page
    {    cevreSehircilikEntities sb=new cevreSehircilikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var yorumlar = (from x in sb.tblYorum select new
            {
                x.yorumid,
                x.kisiAd,
                x.tblsehir.sehirBaslik
            }).ToList();
            Repeater1.DataSource = yorumlar;
            Repeater1.DataBind();
        }
    }
}