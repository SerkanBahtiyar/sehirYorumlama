using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using cevreSehircilik.Entity;
namespace cevreSehircilik
{
    public partial class iletisim : System.Web.UI.Page
    {    cevreSehircilikEntities sb=new cevreSehircilikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tbliletisim o=new tbliletisim();
            o.adSoyad = TextBox1.Text;
            o.konu = TextBox2.Text;
            o.mail = TextBox3.Text;
            o.telefon = TextBox4.Text;
            o.mesaj = TextBox5.Text;
            sb.tbliletisim.Add(o);
            sb.SaveChanges();
        }
    }
}