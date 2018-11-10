<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="contact.aspx.vb" Inherits="CBELibrary4.contact" %>

<!DOCTYPE html>
<link rel="icon" href="/images/bookcase.ico" sizes="16x16" />
<link rel="stylesheet" href="/css/style.css" />
<link rel="stylesheet" href="/css/allstyles.css" />
<script src="/scripts/jslides.js" type="text/javascript"></script>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title>Contact</title>
</head>


<body>
    <div id="logo">
        <img src="/images/logo1.png">&nbsp;
    </div>

<form id="frm3" runat="server">
    <p id="log">
        (Not yet?)<a id="link" href="loginuser.aspx"
            class="w3-text-orange">Login</a>
    </p>


  

    <ul runat="server">

        <li><a href="home.aspx">Home</a></li>
        <li><a href="about.aspx">About</a></li>
        <li><a class="act" href="contact.aspx">Contact</a></li>
        <li><a href="catalog.aspx">Catalog</a></li>


          <li>
        <asp:ImageButton ID="imgs" runat="server" ImageUrl="/images/search-icon.png"
            Height="25px" Width="30px" Style="margin-top: 9px; margin-left: 16px;" />
    </li>
    <li>
        <asp:TextBox ID="tsearch" runat="server"
            Height="25px" Width="300px" Style="margin-top: 10px; margin-left: 16px;"
            BorderColor="#000066"
            BorderStyle="Groove"
            ForeColor="#666666" TextMode="Search">Search</asp:TextBox>
    </li>
    </ul>



    <div class="mySlides fade">
        <img src="/images/l1.png" style="width: 1359px; height: 560px; margin-left: -10px;" />
    </div>
    <div id="searcha" style="margin-top:-13px">
        <div style="text-align: center">
            <span class="dot" onclick="currentSlide(1)"></span>
        </div>
    </div>
    <div id="map">
        <img src="/images/map.png" style="width: 1352px; height: 550px; margin-top: -2px" />&nbsp;
    </div>

    <div id="conti">
        <img src="/images/contact.png" style="width: 500px; height: 200px; margin-left: 760px; margin-top: -25px" />
        &nbsp;
    </div>

    
    <div id="bord" style="width: 500px; height: 516px; margin-left: 15px; margin-top: -180px; border-radius: 10px; border-width: 9px;background-color:whitesmoke">
        <h2 class="w3-text-blue">&nbsp; Contact</h2>
        <p style="width: 424px">
            <label class="w3-text-blue"><b>&nbsp; Name:</b></label></p>
        <p style="width: 424px">
            &nbsp;
            <asp:TextBox ID="TextBox3" style=" margin-left: 30px;" runat="server" CssClass="w3-input w3-border" Height="30px" Width="337px"></asp:TextBox>
        </p>


        <p style="width: 417px">
            <label class="w3-text-blue"><b>&nbsp; Email:</b></label></p>
        <p style="width: 417px">
            &nbsp;
            <asp:TextBox ID="TextBox2" style=" margin-left:30px;" runat="server" CssClass="w3-input w3-border" Height="33px" Width="333px"></asp:TextBox>
        </p>
        <p>
            <b>Message</b>
        </p>
        <p style="width: 491px">
            &nbsp;<asp:TextBox ID="TextBox1" style=" margin-left: 25px;" runat="server" Height="94px" TextMode="MultiLine" Width="390px"></asp:TextBox>
        </p>
        <p>
            &nbsp;
            <asp:Button ID="Button2" style=" margin-left: 15px;" runat="server" BackColor="#CC6600" BorderColor="#993300" ForeColor="White" Height="38px" Text="Send Comments" Width="397px" />
        </p>
    </div>

  </form>



    <div id="footer1">
        Copyright@ 2017 CBELibrary All rights reserved<br>
        <a href="#">admin@gmail.com</a><br>
        <a href="#">09324254664</a>
    </div>

    <script>
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 4000); // Change image every 2 seconds
        }
    </script>


</body>
</html>
