using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using cevreSehircilik.Entity;
namespace cevreSehircilik.AdminSayfa
{
    public partial class yeniSehir : System.Web.UI.Page
    {    cevreSehircilikEntities sb=new cevreSehircilikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
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
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tblsehir s = new tblsehir();
            s.sehirBaslik= TextBox1.Text;
            s.sehirGorsel = TextBox3.Text;
            s.sehirIcerik = TextBox4.Text;
            s.sehirTarih = DateTime.Parse(TextBox2.Text);
            s.sehirTur = byte.Parse(DropDownList1.SelectedValue);
            s.sehirKategori = byte.Parse(DropDownList2.SelectedValue);
            sb.tblsehir.Add(s);
            sb.SaveChanges();
            Response.Redirect("sehirler.aspx");
        }
    }
}