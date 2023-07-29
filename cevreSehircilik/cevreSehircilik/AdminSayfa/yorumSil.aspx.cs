using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using cevreSehircilik.Entity;
namespace cevreSehircilik.AdminSayfa
{
    public partial class yorumSil : System.Web.UI.Page
    {    cevreSehircilikEntities sb=new cevreSehircilikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["yorumid"]);
            var yorum = sb.tblYorum.Find(x);
            sb.tblYorum.Remove(yorum);
            sb.SaveChanges();
            Response.Redirect("yorumlar.aspx");
        }
    }
}