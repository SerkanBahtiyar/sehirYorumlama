<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="sehirGuncelle.aspx.cs" Inherits="cevreSehircilik.AdminSayfa.sehirGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <form runat="server" class="form-group">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Şehir Başlık"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Şehir Tarih"></asp:TextBox>
         <br />
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Şehir Görsel"></asp:TextBox>
         <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataTextField="turAd" DataValueField="turid"></asp:DropDownList>
         <br />
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataTextField="kategoriAd" DataValueField="kategoriid"></asp:DropDownList>
        <br />
         <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Şehir İçerik" Height="100px" TextMode="MultiLine"></asp:TextBox>
       <br />
        <%--<asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click"--%> <%--/>--%>
           <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click" />


    </form>
</asp:Content>
