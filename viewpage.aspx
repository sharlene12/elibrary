<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="viewpage.aspx.vb" Inherits="CBELibrary4.viewpage" %>

<!DOCTYPE html>
  <link rel="icon" href="/images/bookcase.ico"  sizes="16x16"/>
  <link rel="stylesheet" href="/css/style.css" />
  <link rel="stylesheet" href="/css/allstyles.css" />
  <script src="/scripts/jslides.js" type="text/javascript"></script>

<html xmlns="http://www.w3.org/1999/xhtml">


<head id="Head1" runat="server">
    <title>View</title>
</head>
    
<body>
    <div id="logo">
        <img src="/images/logo1.png">
    </div>
      <p id="log">(Not yet?)<a id="link" href="loginuser.aspx"
                 class="w3-text-orange">Login</a></p>


    <form id="form1" runat="server">
      


    <ul id="U" runat="server">
  
  
         <li><a href="home.aspx">Home</a></li>
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
                <img src="/images/bookclub.jpg" style="width: 1352px; height: 550px" />
            </div>

         
        </div>
        <br>

        <div style="text-align: center">
            <span class="dot" onclick="currentSlide(1)"></span>

        </div>

        <div>
        </div>
        <br />
        <hr />
    
          <div id="ds" style="margin-left: 50px; margin-top: 40px; border-width: 14px; border-color: #000066; width: 200px; height: 600px;">
           <iframe runat="server" id="ifrStory" style="background-color: whitesmoke; width: 700px; height: 700px; 
                line-height:normal"></iframe>
            <div id="de"  style="background-color: whitesmoke; margin-left:5px;margin-top:-700px;border-width:14px;border-color:#000066;
                width:670px;height:690px; display:block;position:absolute;opacity:0.7">
                </div> <asp:Button ID="Button2" runat="server" Text="Login" style="margin-left:250px;margin-top:-460px;background-color:darkgray;
                     font-size:24px;width: 200px; height: 50px;position:absolute" CssClass="w3-blue w3-btn w3-hover-lime w3-animate-opacity" />
                <div id="Div1"  style="margin-left:790px;margin-top:-540px;border-width:14px;border-color:#000066;width:500px;height:344px; background-color:whitesmoke"> 
                             
            
                    
    <p style="width: 202px">
        To view th Full Content :You must login first
          <asp:ImageButton ID="ImageButton2" Height="166px" Width="183px" runat="server" />
            
        <asp:Label ID="Label1" runat="server" BorderColor="#000066"  Width="305px" style="margin-bottom: 0px" ></asp:Label>
          </p>
        <p>
            <asp:Label ID="Label2" runat="server" BorderColor="#000066"  Width="311px" ></asp:Label>
        </p>
             <asp:Label ID="Label3" runat="server" BorderColor="#000066"  Width="270px"></asp:Label>
            
        <asp:Label ID="lblTodayDate" runat="server" Visible="False"></asp:Label>
            
        </div>
          
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
