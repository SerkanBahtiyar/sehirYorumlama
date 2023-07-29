using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using cevreSehircilik.Entity;
namespace cevreSehircilik
{
    public partial class sehirDetay : System.Web.UI.Page
    {    cevreSehircilikEntities sb=new cevreSehircilikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32( Request.QueryString["sehirid"]);
            var sehir = sb.tblsehir.Where(s => s.sehirid == id).ToList();
            Repeater1.DataSource= sehir;
            Repeater1.DataBind();

            var yorumlar=sb.tblYorum.Where(s=>s.yorumSehir== id).ToList();
            Repeater2.DataSource= yorumlar;
            Repeater2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["sehirid"]);
            tblYorum y = new tblYorum();
            y.kisiAd = TextBox1.Text;
            y.mail = TextBox2.Text;
            y.yorumicerik = TextBox3.Text;
            y.yorumSehir = id;
            sb.tblYorum.Add(y);
            sb.SaveChanges();
            Response.Redirect("sehirDetay.aspx?sehirid="+id);
            
        }
    }
}