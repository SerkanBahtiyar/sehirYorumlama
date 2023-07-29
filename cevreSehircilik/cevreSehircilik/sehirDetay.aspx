<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="sehirDetay.aspx.cs" Inherits="cevreSehircilik.sehirDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
    <!DOCTYPE HTML>
    <html>
    <head>
        <link href="web/css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="web/css/style.css" rel='stylesheet' type='text/css' />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Personal Blog Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!----webfonts---->
        <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
        <!----//webfonts---->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!--end slider -->
        <!--script-->
        <script type="text/javascript" src="web/js/move-top.js"></script>
        <script type="text/javascript" src="web/js/easing.js"></script>
        <!--/script-->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 900);
                });
            });
        </script>
        <!---->

    </head>
    <body>
         <style>
        body {
            background-color:antiquewhite;
        }
    </style>
        <!---header---->
        <div class="header">
        </div>
        <!--/header-->
        <div class="single">
            <div class="container">
                <div class="col-md-8 single-main">
                    <asp:Repeater ID="Repeater1" runat="server">

                        <ItemTemplate>
                           <img src="<%#Eval("sehirGorsel") %>" alt="" style="height: 350px; width: 723px; margin-bottom:20px"  />
                            <p>
                                <h3 style="color:red"><%#Eval("sehirBaslik") %></h3><br />
                            
                               <%#Eval("sehirIcerik") %>
                            </p>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="single-grid">
                    </div>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                               <ul class="comment-list">
                      
                        <li>
                            <img src="web/images/avatar.png" class="img-responsive" alt="">
                            <div class="desc">
                                <p style="color:darkred;font-family:'Comic Sans MS'"><%#Eval("kisiAd") %>:<%#Eval("yorumicerik") %></p>
                                
                            </div>
                           
                            <div class="clearfix"></div>
                        </li>
                    </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                 
                    <div class="content-form">
                        <h3>Yorum Yapın:)</h3>
                        <form runat="server">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="adınızı giriniz" required=""></asp:TextBox>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="mail adresinizi giriniz"></asp:TextBox>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="yorumunuzu giriniz" TextMode="MultiLine"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />
                        </form>
                    </div>
                </div>



            </div>
        </div>


    </body>
    </html>


</asp:Content>
