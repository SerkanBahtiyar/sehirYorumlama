<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="cevreSehircilik.anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="content-grids">
            <div class="col-md-8 content-main">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="content-grid">

                            <div class="content-grid-info">
                                <img src="<%#Eval("sehirGorsel") %>" alt="" style="height: 300px; width: 669px" />
                                <div class="post-info">
                                    <h4><a href="sehirDetay.aspx?sehirid=<%#Eval("sehirid")%>" style="font-family:'Comic Sans MS'"><%# Eval("sehirBaslik") %></a><%# Eval("sehirTarih") %></h4>
                                    <p><%# Eval("sehirIcerik") %></p>
                                    <%--<a href="single.html"><span></span>daha fazla</a>--%>
                                </div>
                            </div>



                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
            <div class="col-md-4 content-right">
                <div class="recent">
                    <h3>*En son şehirler*</h3>
                    <ul>
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <li><a href="#" style="color:palevioletred"><%#Eval("sehirBaslik") %></a></li>
                               
                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>
                </div>
                <div class="comments">
                    <h3>*Son yorumlar*</h3>
                    
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <ul>
                        <li><a href="#" style="color:chocolate"><%#Eval("kisiAd")%>-<%#Eval("yorumicerik")%></a></li>
                                    </ul>
                            </ItemTemplate>
                        </asp:Repeater>
                    
                </div>
                <div class="clearfix"></div>
            
                <div class="categories">
                    <h3>*Kategoriler*</h3>
                    <ul>
                        <asp:Repeater ID="Repeater2" runat="server">

                            <ItemTemplate>
                                 <li><a href="kategoriDetay.aspx?kategoriid=<%# Eval("kategoriid")%>" style="color:deeppink"><%# Eval("kategoriAd") %></a> </li>

                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

</asp:Content>
