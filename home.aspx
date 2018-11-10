﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="home.aspx.vb" Inherits="CBELibrary4.home" %>

<!DOCTYPE html>
  <link rel="icon" href="/images/bookcase.ico"  sizes="16x16"/>
  <link rel="stylesheet" href="/css/style.css" />
  <link rel="stylesheet" href="/css/allstyles.css" />
  <script src="/scripts/jslides.js" type="text/javascript"></script>

<html xmlns="http://www.w3.org/1999/xhtml">


<head id="Head1" runat="server">
<title>Home</title>
</head>
    
    
<body>
<div id ="logo" ><img src="/images/logo1.png"> </div>

    <form id="fr" runat="server">
 <p id="log">(Not yet?)<a id="link" href="loginuser.aspx"
 class="w3-text-orange">Login</a></p>





                   
<ul id="Ul1" runat="server">
  
  <li><a class="act" href="home.aspx">Home</a></li>
  <li><a href="about.aspx">About</a></li>
  <li><a href="contact.aspx">Contact</a></li>
  <li><a href="catalog.aspx">Catalog</a></li>

  <li>
        <asp:ImageButton ID="imgs" runat="server" ImageUrl="/images/search-icon.png"
            Height="25px" Width="30px" Style="margin-top: 10px; margin-left: 16px;" />
    </li>
    <li>
        <asp:TextBox ID="tsearch" runat="server"
            Height="25px" Width="300px" Style="margin-top: 10px; margin-left: 16px;"
            BorderColor="#000066"
            BorderStyle="Groove"
            ForeColor="#666666" TextMode="Search">Search</asp:TextBox>
    </li>
    </ul>


    <div id="slideshow-container">

    <div class="mySlides fade">
    <img src="/images/bookclub.jpg" style="width:1352px;  height:550px"/>
            </div>

    <div class="mySlides fade">
    <img  src="/images/b2.jpg" style="width:1352px ;height:550px"/>
            </div>

    <div class="mySlides fade">
    <img src="/images/b3.jpg" style="width:1352px; height:550px"/>
            </div>
        </div>
    <br>

    <div style="text-align:center">
         <span class="dot" onclick="currentSlide(1)"></span> 
         <span class="dot" onclick="currentSlide(2)"></span> 
         <span class="dot" onclick="currentSlide(3)"></span> 
    </div>
        <div style="margin-left:430px;">
        
           <asp:Image ID="Img" CssClass="w3-card-12 w3-animate-zoom"  ImageUrl="/images/books.gif" runat="server" style="position:absolute;height:400px;width:500px;" />
             <asp:Image ID="Image1" CssClass=""  ImageUrl="/images/bgup.png" runat="server" style="margin-left:-430px;height:400px;width:1365px;" />
            </div>
        
  <div id="ab">
    <h3>About our eLibrary</h3>  ________________________________________________________
      <br>
        A Digital Library (also referred to as digital library) is a special library with a 
        focused collection of digital objects that can include text, visual material, audio material,
        video material, stored as electronic media formats (as opposed to print, microform, or other
        media), along with means for organizing, storing, and retrieving the files and media contained
        in the library collection.
  </div>
   

    <div id="qv" style="margin-top:14px"></div>
    <p id="qv1">
        "A great library is one nobody notices because it is always there,
    and always has what people need."
   –Vicki Myron
    </p>

         <div style="margin-left:0px;margin-top:10px">
        
        <asp:Image ID="Image2" CssClass="w3-animate-opacity"  ImageUrl="/images/most.png" runat="server" style="" />
            
            </div>

     <div style="margin-left:0px;">
        
        <asp:Image ID="Image3" CssClass="w3-animate-opacity"  ImageUrl="/images/mags.png" runat="server" style="" />
            
            </div>

   

    <div id="footer1" style="margin-top:-6px">
        Copyright@ 2017 CBELibrary All rights reserved<br>
        <a href="#">admin@gmail.com</a><br>
        <a href="#">09324254664</a>
    </div>
</form>
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
