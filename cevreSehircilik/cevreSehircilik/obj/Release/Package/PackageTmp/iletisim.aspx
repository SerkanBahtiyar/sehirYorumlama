<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="cevreSehircilik.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="contact-content">
	 <div class="container">
		     <div class="contact-info">
			 <h2>İletişim</h2>
			 <p>ana sayfamızda bulunan şehirler hakkında eklemek istedikleriniz için veya yorumlarda yaşayacağınız herhangi bir problem için bu panelden bizlere mesaj gönderebilirsiniz. Mesaj gönderme sırasında iletişim bilgilerinizi mutlaka doğru bir şekilde yazınız.</p>
		     </div>
			 <div class="contact-details">				 
			 <form runat="server">
                 <asp:TextBox ID="TextBox1" runat="server" placeholder="Ad Soyad" required=""></asp:TextBox>
                 <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail" required=""></asp:TextBox>
                 <asp:TextBox ID="TextBox3" runat="server" placeholder="Telefon" required=""></asp:TextBox>
                 <asp:TextBox ID="TextBox4" runat="server" placeholder="Konu" required=""></asp:TextBox>
                 <asp:TextBox ID="TextBox5" runat="server" placeholder="Mesajınız" required="" TextMode="MultiLine" Height="100"></asp:TextBox>
				 <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />

			 </form>
		  </div>  
		  <div class="contact-details">
			  <div class="col-md-6 contact-map">
				 <h4>Biz Buradayız</h4>
				<div style="text-decoration:none; overflow:hidden;max-width:100%;width:300px;height:300px;"><div id="google-maps-display" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=Ordu,+Türkiye&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"></iframe></div><a class="embedded-map-code" rel="nofollow" href="https://www.bootstrapskins.com/themes" id="enable-map-data">premium bootstrap themes</a><style>#google-maps-display img{max-width:none!important;background:none!important;font-size: inherit;font-weight:inherit;}</style></div>
			  </div>
			 
			  <div class="clearfix"></div>
	     </div>		 


			 </div>
	 </div>
     
</asp:Content>
