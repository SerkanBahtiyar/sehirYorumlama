﻿<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="kategoriDetay.aspx.cs" Inherits="cevreSehircilik.kategoriDetay" %>
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
                                    <h4><a href="sehirDetay.aspx?sehirid=<%#Eval("sehirid")%>"><%# Eval("sehirBaslik") %></a><%# Eval("sehirTarih") %></h4>
                                    <p><%# Eval("sehirIcerik") %></p>
                                    <a href="single.html"><span></span>daha fazla</a>
                                </div>
                            </div>



                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
            <div class="col-md-4 content-right">
                <div class="recent">
                    <h3>en son şehirler</h3>
                    <ul>
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <li><a href="#"><%#Eval("sehirBaslik") %></a></li>
                               
                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>
                </div>
             <%--   <div class="comments">
                    <h3>son yorumlar</h3>
                    <ul>
                        <li><a href="#">Amada Doe </a>on <a href="#">Hello World!</a></li>
                        <li><a href="#">Peter Doe </a>on <a href="#">Photography</a></li>
                        <li><a href="#">Steve Roberts  </a>on <a href="#">HTML5/CSS3</a></li>
                    </ul>
                </div>--%>
                <div class="clearfix"></div>
                <%--     <div class="archives">
                    <h3>arişivler</h3>
                    <ul>
                        <li><a href="#">October 2013</a></li>
                        <li><a href="#">September 2013</a></li>
                        <li><a href="#">August 2013</a></li>
                        <li><a href="#">July 2013</a></li>
                    </ul>
                </div>--%>
                <div class="categories">
                    <h3>kategoriler</h3>
                    <ul>
                        <asp:Repeater ID="Repeater2" runat="server">

                            <ItemTemplate>
                                 <li><a href="kategoriDetay.aspx?kategoriid=<%# Eval("kategoriid")%>"><%# Eval("kategoriAd") %></a> </li>

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
