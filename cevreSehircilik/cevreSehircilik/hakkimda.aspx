<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="hakkimda.aspx.cs" Inherits="cevreSehircilik.hakkimda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container">

        <div class="about-section">
            <div class="about-grid">
                <h3>Hakkımızda</h3>
                <asp:Repeater ID="Repeater1" runat="server">

                    <ItemTemplate>
                            <p >


                             <%# Eval("aciklama")%>

                        </p>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>


</asp:Content>
