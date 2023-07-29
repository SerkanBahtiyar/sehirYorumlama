<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="istatistik.aspx.cs" Inherits="cevreSehircilik.AdminSayfa.istatistik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <table class="table table-bordered">
        <tr>
            <td>
                Toplam Şehir Sayısı:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            <td>
                Toplam Yorum Sayısı:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            <td>
                Akdeniz bölgesindeki şehir sayısı:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
            <td>
                Tek yıldızlı şehir sayısı:<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
        </tr>
         <tr>
            <td>
                İki yıldızlı şehir sayısı:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            <td>
                Karadeniz bölgesindeki şehir sayısı:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
            <td>
                En Fazla Yorumlu şehir:<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
              <td>
                Üç yıldızlı şehir sayısı:<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
    </table>


</asp:Content>
