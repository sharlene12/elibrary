<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="View.aspx.vb" Inherits="CBELibrary4.View" %>

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


    <form id="form1" runat="server">
        <p id="log">
     <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="/images/u.png" Width="28px"
                 Height="22px" style="margin-top:8px; margin-left: -2px;" />
           <asp:Label ID="memb" runat="server" style="margin-top: 12px; margin-left: 16px;"></asp:Label>
            
            <asp:Button ID="Button1" runat="server" Text="logout" style="margin-top:12px; margin-left: 6px;" 
                BackColor="#CC6600" BorderStyle="Groove" ForeColor="White" Height="21px" Width="95px" />
        </p>



    <ul id="U" runat="server">
  
  
         <li><a href="HomeMem.aspx">Home</a></li>
         <li><a href="AboutMem.aspx">About</a></li>
         <li><a href="ContactMem.aspx">Contact</a></li>
         <li><a href="CatalogMem.aspx">Catalog</a></li>

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
       
              <div id="de" style="margin-left: 790px; margin-top: -540px; border-width: 14px; border-color: #000066; width: 500px; height: 344px; background-color: whitesmoke">


                  <p style="width: 202px">
                      &nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton2" Height="166px" Width="183px" runat="server" />

                      <asp:Label ID="Label1" runat="server" BorderColor="#000066" Width="305px" Style="margin-bottom: 0px"></asp:Label>
                  </p>
                  <p>
                      <asp:Label ID="Label2" runat="server" BorderColor="#000066" Width="311px"></asp:Label>
                  </p>
                  <asp:Label ID="Label3" runat="server" BorderColor="#000066" Width="270px"></asp:Label>

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
