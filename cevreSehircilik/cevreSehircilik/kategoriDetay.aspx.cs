using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using cevreSehircilik.Entity;
namespace cevreSehircilik
{
    public partial class kategoriDetay : System.Web.UI.Page
    {   cevreSehircilikEntities sb=new cevreSehircilikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["kategoriid"]);
            var sehirler = sb.tblsehir.Where(s => s.sehirKategori == id).ToList();
            Repeater1.DataSource = sehirler;
            Repeater1.DataBind();

            var sehirler2 = sb.tblKategori.ToList();
            Repeater2.DataSource = sehirler2;
            Repeater2.DataBind();

            var sehirler3 = sb.tblsehir.Take(5).ToList();//5 tane şehiri al
            Repeater3.DataSource = sehirler3;
            Repeater3.DataBind();
        }
    }
}