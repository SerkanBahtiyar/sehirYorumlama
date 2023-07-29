using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using cevreSehircilik.Entity;
namespace cevreSehircilik.AdminSayfa
{
    public partial class sehirler : System.Web.UI.Page
    {   cevreSehircilikEntities sb=new cevreSehircilikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null)
            {
                Response.Redirect("~/giris.aspx");
            }
            else
            {
                Response.Write(Session["kullanici"].ToString());
            }
            Repeater1.DataSource = sb.tblsehir.ToList();
            Repeater1.DataBind();
        }
    }
}