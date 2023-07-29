<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="yorumlar.aspx.cs" Inherits="cevreSehircilik.AdminSayfa.yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>KULLANICI</th>
            <th>ŞEHİR</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("yorumid") %></td>
                    <td><%# Eval("kisiAd") %></td>
                    
                 <td><%# Eval("sehirBaslik") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "yorumSil.aspx?yorumid=" +Eval("yorumid") %>' CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                    <td>
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "yorumGuncelle.aspx?yorumid=" +Eval("yorumid") %>' CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>





</asp:Content>
