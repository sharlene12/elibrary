<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AboutMem.aspx.vb" Inherits="CBELibrary4.AboutMem" %>

<!DOCTYPE html>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    .grup:hover .grup1 {
        background-image: url('/images/harry2.png');
        margin-left: 300px;
        border-radius: 140px;
        margin-top: 10px;
        transition: background-color 0.6s ease;
        opacity: 0.8;
        border-width: 5px;
        border-color: orange;
    }

    .middle {
        opacity: 0;
        position: absolute;
        width: 100px;
        height: 30px;
        border-radius: 140px;
        transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
    }

    .grup:hover .middle {
        margin-left: 370px;
        margin-top: 50px;
        transition: background-color 0.6s ease;
        opacity: 0.8;
        width: 100px;
        height: 30px;
    }

    .middle1 {
        opacity: 0;
        position: absolute;
        transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
    }

    .grup:hover .middle1 {
        margin-left: 160px;
        margin-top: 50px;
        transition: background-color 0.6s ease;
        opacity: 0.8;
        width: 100px;
        height: 30px;
    }

    .middle2 {
        opacity: 0;
        position: absolute;
        width: 100px;
        height: 30px;
        transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
    }

    .grup:hover .middle2 {
        margin-left: 570px;
        margin-top: 40px;
        transition: background-color 0.6s ease;
        opacity: 0.8;
        width: 100px;
        height: 30px;
    }

    .middle5 {
        opacity: 0;
        position: absolute;
        width: 100px;
        height: 30px;
        transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
    }

    .grup:hover .middle5 {
        margin-left: 370px;
        margin-top: 40px;
        transition: background-color 0.6s ease;
        opacity: 0.8;
        width: 100px;
        height: 30px;
    }


    .middle3 {
        opacity: 0;
        position: absolute;
        transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
    }

    .grup:hover .middle3 {
        margin-left: 165px;
        margin-top: 50px;
        transition: background-color 0.6s ease;
        opacity: 0.8;
        width: 100px;
        height: 30px;
    }

    .middle6 {
        opacity: 0;
        position: absolute;
        width: 100px;
        height: 30px;
        transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
    }

    .grup:hover .middle6 {
        margin-left: 370px;
        margin-top: 40px;
        transition: background-color 0.6s ease;
        opacity: 0.8;
        width: 100px;
        height: 30px;
    }


    .middle4 {
        opacity: 0;
        position: absolute;
        width: 100px;
        height: 30px;
        transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
    }

    .grup:hover .middle4 {
        margin-left: 570px;
        margin-top: 40px;
        transition: background-color 0.6s ease;
        opacity: 0.8;
        width: 100px;
        height: 30px;
    }

    .grup1 {
        opacity: 1;
        display: block;
        backface-visibility: hidden;
        width:150px;height:150px ; 
        transition: .5s ease;
    }

    .text {
        background-color: orange;
        color: white;
        font-size: 10px;
        padding: 16px 52px;
    }

    #line2 {
        background-color: whitesmoke;
        margin-top:-19px;
        width: 680px;
        height: 790px;
        opacity: 0.8;
    }


    /* jssor slider bullet navigator skin 03 css */
    /*
        .jssorb03 div           (normal)
        .jssorb03 div:hover     (normal mouseover)
        .jssorb03 .av           (active)
        .jssorb03 .av:hover     (active mouseover)
        .jssorb03 .dn           (mousedown)
        */
    .jssorb03 {
        position: absolute;
    }

        .jssorb03 div, .jssorb03 div:hover, .jssorb03 .av {
            position: absolute;
            /* size of bullet elment */
            width: 21px;
            height: 21px;
            text-align: center;
            line-height: 21px;
            color: white;
            font-size: 12px;
            background: url('/images/b03.png') no-repeat;
            overflow: hidden;
            cursor: pointer;
        }

        .jssorb03 div {
            background-position: -5px -4px;
        }

            .jssorb03 div:hover, .jssorb03 .av:hover {
                background-position: -35px -4px;
            }

        .jssorb03 .av {
            background-position: -65px -4px;
        }

        .jssorb03 .dn, .jssorb03 .dn:hover {
            background-position: -95px -4px;
        }

    /* jssor slider arrow navigator skin 03 css */
    /*
        .jssora03l                  (normal)
        .jssora03r                  (normal)
        .jssora03l:hover            (normal mouseover)
        .jssora03r:hover            (normal mouseover)
        .jssora03l.jssora03ldn      (mousedown)
        .jssora03r.jssora03rdn      (mousedown)
        .jssora03l.jssora03ldn      (disabled)
        .jssora03r.jssora03rdn      (disabled)
        */
    .jssora03l, .jssora03r {
        display: block;
        position: absolute;
        /* size of arrow element */
        width: 55px;
        height: 55px;
        cursor: pointer;
        background: url('/images/a03.png') no-repeat;
        overflow: hidden;
    }

    .jssora03l {
        background-position: -3px -33px;
    }

    .jssora03r {
        background-position: -63px -33px;
    }

    .jssora03l:hover {
        background-position: -123px -33px;
    }

    .jssora03r:hover {
        background-position: -183px -33px;
    }

    .jssora03l.jssora03ldn {
        background-position: -243px -33px;
    }

    .jssora03r.jssora03rdn {
        background-position: -303px -33px;
    }

    .jssora03l.jssora03lds {
        background-position: -3px -33px;
        opacity: .3;
        pointer-events: none;
    }

    .jssora03r.jssora03rds {
        background-position: -63px -33px;
        opacity: .3;
        pointer-events: none;
    }
</style>

  <link rel="icon" href="/images/bookcase.ico"  sizes="16x16"/>
  <link rel="stylesheet" href="/css/style.css" />
  <link rel="stylesheet" href="/css/allstyles.css" />
  <script src="/scripts/jslides.js" type="text/javascript"></script>

<html xmlns="http://www.w3.org/1999/xhtml">


<head id="Head1" runat="server">
    <title>About</title>
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
            <asp:Button ID="Button3" runat="server" Text="logout" style="margin-top:12px; margin-left: 6px;" 
                BackColor="#CC6600" BorderStyle="Groove" ForeColor="White" Height="21px" Width="95px" />
           
        </p>


 

    <ul id="Ul1" runat="server">

         <li><a href="HomeMem.aspx">Home</a></li>
         <li><a class="act" href="AboutMem.aspx">About</a></li>
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



    <div class="mySlides fade">
        <img src="/images/l1.png" style="width: 1359px;  height:570px; margin-left: -10px;" />
    </div>

    <div style="text-align: center">
        <span class="dot" onclick="currentSlide(1)"></span>

    </div>

        <div id="ab">
            <h2>ABOUT OUR eLibrary</h2>

            <div id="lne">
                <img src="/images/line.png" style="width: 150px; height: 10px; margin-left: 15px; margin-top: 10px" />
            </div>

                 A Digital Library (also referred to as digital library) is a special library with a 
             focused collection of digital objects that can include text, visual material, audio material,
             video material, stored as electronic media formats (as opposed to print, microform, or other
             media), along with means for organizing, storing, and retrieving the files and media contained
             in the library collection.
        </div>
        <hr />

    <div id="line2">
        <div class="grup">
            <img class="grup1" src="/images/harry3.jpg" style="margin-left: 300px; border-radius: 140px; margin-top: 10px" />
            &nbsp;
          <div class="middle">
              <div class="text">Harry Oblena</div>
          </div>
        </div>

        <div class="grup">
            <img class="grup1" src="/images/sheya.jpg" style="margin-left: 100px; border-radius: 140px; margin-top: 50px" />
            &nbsp;
          <div class="middle1">
              <div class="text">Sharlene Escalona</div>
          </div>
        </div>

        <div class="grup">
            <img class="grup1" src="/images/kim.jpg" style="margin-left: 300px; border-radius: 140px; margin-top: -160px" />
            &nbsp;
          <div class="middle5">
              <div class="text">Kimberly Tanglao</div>
          </div>
        </div>

        <div class="grup">
            <img class="grup1" src="/images/jaira.jpg" style="margin-left: 500px; border-radius: 140px; margin-top: -160px" />
            &nbsp;
          <div class="middle2">
              <div class="text">
                  Jaira
                  <br />
                  Jobli
              </div>
          </div>
        </div>

        <div class="grup">
            <img class="grup1" src="/images/carl.jpg" style="margin-left: 100px; border-radius: 140px; margin-top: 50px" />
            &nbsp;
          <div class="middle3">
              <div class="text">Carl Limbo</div>
          </div>
        </div>

         <div class="grup">
            <img class="grup1" src="/images/cards.jpg" style="margin-left: 300px; border-radius: 140px; margin-top: -160px" />
            &nbsp;
          <div class="middle6">
              <div class="text">Ricardo De Gracia</div>
          </div>
        </div>

        <div class="grup">
            <img class="grup1" src="/images/glen.jpg" style="margin-left: 500px; border-radius: 140px; margin-top: -160px" />
            &nbsp;
          <div class="middle4">
              <div class="text">Glenn De Leon</div>
          </div>
        </div>

    </div>

    <div id="coni">
        <img src="/images/deal.png" style="width: 620px; height: 800px; margin-left: 700px; margin-top: -1000px" />
        &nbsp;
    
    </div>
    <hr />
 
            </form>
    <script src="/scripts/jssliders.js" type="text/javascript"></script>
    <script type="text/javascript">
        jssor_1_slider_init = function () {

            var jssor_1_options = {
                $AutoPlay: 1,
                $AutoPlaySteps: 4,
                $SlideDuration: 160,
                $SlideWidth: 200,
                $SlideSpacing: 3,
                $Cols: 4,
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$,
                    $Steps: 4
                },
                $BulletNavigatorOptions: {
                    $Class: $JssorBulletNavigator$,
                    $SpacingX: 1,
                    $SpacingY: 1
                }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 809);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*responsive code end*/
        };
    </script>
    <br />
 <div id="r" style="width:1355px; height:300px; background-image:url('/images/o.png');overflow: hidden;position:absolute ">
    <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width:950px; height: 250px; overflow: hidden; visibility: hidden;">
        <!-- Loading Screen -->
   
        <div data-u="loading" style="position: absolute; top: 0px; left: 0px; background-color: rgba(0,0,0,0.7);">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position: absolute; display: block; background: url('img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
        </div>
           
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1209px; height: 300px; ">
            <div>
                <img data-u="image" src="/images/1.jpg" />
            </div>
            <div>
                <img data-u="image" src="/images/2.jpg" />
            </div>
            <div>
                <img data-u="image" src="/images/3.jpg" />
            </div>
            <div>
                <img data-u="image" src="/images/4.jpg" />
            </div>
            <div>
                <img data-u="image" src="/images/5.jpg" />
            </div>
            <div>
                <img data-u="image" src="/images/6.jpg" />
            </div>
            <div>
                <img data-u="image" src="/images/7.jpg" />
            </div>
            <div>
                <img data-u="image" src="/images/8.jpg" />
            </div>
            <div>
                <img data-u="image" src="/images/9.jpg" />
            </div>
            <div>
                <img data-u="image" src="/images/10.jpg" />
            </div>

        </div>
    </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb03" style="bottom: 100px; right:660px">
            <!-- bullet navigator item prototype -->
            <div data-u="prototype" style="width: 21px; height: 21px;">
                <div data-u="numbertemplate"></div>
            </div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora03l" style="top: 50px; left: 250px; width: 55px; height: 55px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora03r" style="top: 50px; right: 250px; width: 55px; height: 55px;" data-autocenter="2"></span>
    </div>
    <script type="text/javascript">jssor_1_slider_init();</script>
    <!-- #endregion Jssor Slider End -->


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
