using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using cevreSehircilik.Entity;
namespace cevreSehircilik.AdminSayfa
{
    public partial class sehirGuncelle : System.Web.UI.Page
    {    cevreSehircilikEntities sb=new cevreSehircilikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int s = int.Parse(Request.QueryString["sehirid"]);
            if (Page.IsPostBack == false)
            {
                var turler = (from x in sb.tblTur
                              select new
                              {
                                  x.turAd,
                                  x.turid
                              }).ToList();
                DropDownList1.DataSource = turler;
                DropDownList1.DataBind();

                var kategoriler = (from x in sb.tblKategori
                                   select new
                                   {
                                       x.kategoriAd,
                                       x.kategoriid
                                   }).ToList();
                DropDownList2.DataSource = kategoriler;
                DropDownList2.DataBind();
                var deger = sb.tblsehir.Find(s);
                TextBox1.Text = deger.sehirBaslik;
                TextBox2.Text = deger.sehirTarih.ToString();
                TextBox3.Text = deger.sehirGorsel;
                TextBox4.Text = deger.sehirIcerik;
                DropDownList1.SelectedValue = deger.sehirTur.ToString();
                DropDownList2.SelectedValue = deger.sehirKategori.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int z = int.Parse(Request.QueryString["sehirid"]);
            var uni = sb.tblsehir.Find(z);
            uni.sehirBaslik = TextBox1.Text;
            uni.sehirTarih = DateTime.Parse(TextBox2.Text);
            uni.sehirGorsel = TextBox3.Text;
            uni.sehirIcerik = TextBox4.Text;
            uni.sehirTur = byte.Parse(DropDownList1.SelectedValue);
            uni.sehirKategori = byte.Parse(DropDownList2.SelectedValue);
            sb.SaveChanges();
            Response.Redirect("sehirler.aspx");
        }
    }
}