<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="catalog.aspx.vb" Inherits="CBELibrary4.catalog" %>

<!DOCTYPE html>
  <link rel="icon" href="/images/bookcase.ico"  sizes="16x16"/>
  <link rel="stylesheet" href="/css/style.css" />
  <link rel="stylesheet" href="/css/allstyles.css" />
  <script src="/scripts/jslides.js" type="text/javascript"></script>
<style>
       .b1 {
    
        background-color:orange;
        color:antiquewhite;
        font-size:20px;
        -webkit-transition-duration: 0.4s; /* Safari */
        transition-duration: 0.4s;
        cursor: pointer;
        border-radius:8px;
    }

     .bn:hover {opacity:0.6;
         background-color:darkorange;
        }

</style>
<html xmlns="http://www.w3.org/1999/xhtml">


    <head runat="server">
    <title>Catalog</title>
    </head>
    
    
<body>

    <div id ="logo" ><img src="/images/logo1.png"> </div>

    <form id="frm" runat="server">
         <p id="log">(Not yet?)<a id="link" href="loginuser.aspx"
         class="w3-text-orange">Login</a></p>

                   
    <ul runat="server">

        <li><a href="home.aspx">Home</a></li>
        <li><a href="about.aspx">About</a></li>
        <li><a href="contact.aspx">Contact</a></li>
        <li><a class="act" href="catalog.aspx">Catalog</a></li>

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
    <img src="/images/l1.png" style="width:1359px;  height:570px; margin-left:-10px;"/>
    </div>

    
    <div id="searcha" style="margin-top:-13px">
    <div style="text-align:center ">
         <span class="dot" onclick="currentSlide(1)"></span> 
         
    </div>
     </div>
    <div id="frm3"style="text-align: center; margin-left: 5px; width: 1303px;">
        <asp:TextBox ID="tx1" runat="server" ForeColor="white" style="margin-left: 10px;" BackColor="#9393b2" Height="36px" Width="222px" Font-Size="16px" BorderColor="#5d5d8b" BorderStyle="Solid">Title</asp:TextBox>
        <asp:TextBox ID="tx2" runat="server" ForeColor="white" style="margin-left: 10px;" BackColor="#9393b2" Height="36px" Width="270px" Font-Size="16px" BorderColor="#5d5d8b" BorderStyle="Solid">Author</asp:TextBox>
        <asp:TextBox ID="tx3" runat="server" ForeColor="white" style="margin-left: 10px;" BackColor="#9393b2" Height="36px" Width="228px" Font-Size="16px" BorderColor="#5d5d8b" BorderStyle="Solid">Genre</asp:TextBox>
        <asp:Button ID="Button1" CssClass="b1 bn" runat="server" style="margin-left: 10px;" BackColor="#FF9900" BorderColor="#FF9933" BorderStyle="Ridge" ForeColor="White" Height="41px" Text="Search" Width="166px" />
</div>
        <br />

        <div id="r"  style="color: black; margin-left: 100px; height:510px; width:400px;border-color: antiquewhite; 
            margin-top:100px;overflow:auto">
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table border="1" class="w3-card-12" style="color: black; width: 300px; border-color: antiquewhite; background-color: whitesmoke; text-align: center">
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>

                            <asp:ImageButton ID="Image1" ImageUrl='<%# Eval("BKImage") %>'
                            Style="height: 250px; width: 200px; border: 1px solid gray;" runat="server" /><br />

                            <asp:Label ID="titles" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>' Width="200px"></asp:Label><br />

                            <asp:Label ID="authors" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Author")%>' Width="200px"></asp:Label><br />

                            <asp:Label ID="genres" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Genre")%>' Width="200px"></asp:Label><br />



                        </td>


                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>


         <br />

        <div id="Div2" style="color: black; margin-left: 500px; height:492px; width:400px;border-color: antiquewhite; 
            margin-top:-534px;">
            <asp:Repeater ID="Repeater2" runat="server">
                <HeaderTemplate>
                    <table border="1" class="w3-card-12" style="color: black; width: 300px; border-color: antiquewhite; background-color: whitesmoke; text-align: center">
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>

                            <asp:ImageButton ID="Image1" ImageUrl='<%# Eval("BKImage") %>'
                            Style="height: 250px; width: 200px; border: 1px solid gray;" runat="server" /><br />

                            <asp:Label ID="titles" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>' Width="200px"></asp:Label><br />

                            <asp:Label ID="authors" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Author")%>' Width="200px"></asp:Label><br />

                            <asp:Label ID="genres" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Genre")%>' Width="200px"></asp:Label><br />



                        </td>


                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>


        
         <br />

        <div id="Div3" style="color: black; margin-left: 900px; height:492px; width:400px;border-color: antiquewhite; 
            margin-top:-520px;">
            <asp:Repeater ID="Repeater3" runat="server">
                <HeaderTemplate>
                    <table border="1" class="w3-card-12" style="color: black; width: 300px; border-color: antiquewhite; background-color: whitesmoke; text-align: center">
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>

                           <asp:ImageButton ID="Image1" ImageUrl='<%# Eval("BKImage") %>'
                            Style="height: 250px; width: 200px; border: 1px solid gray;" runat="server" /><br />

                             <asp:Label ID="titles" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>' Width="200px"></asp:Label><br />

                            <asp:Label ID="authors" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Author")%>' Width="200px"></asp:Label><br />

                             <asp:Label ID="genres" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Genre")%>' Width="200px"></asp:Label><br />



                        </td>


                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>

 
   <br />

        <div id="Div4" style="color: black; margin-left: 100px; height:510px; width:400px;border-color: antiquewhite; 
            margin-top:10px;overflow:auto">
            <asp:Repeater ID="Repeater4" runat="server">
                <HeaderTemplate>
                    <table border="1" class="w3-card-12" style="color: black; width: 300px; border-color: antiquewhite; background-color: whitesmoke; text-align: center">
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>

                            <asp:ImageButton ID="Image1" ImageUrl='<%# Eval("BKImage") %>'
                            Style="height: 250px; width: 200px; border: 1px solid gray;" runat="server" /><br />

                            <asp:Label ID="titles" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>' Width="200px"></asp:Label><br />

                            <asp:Label ID="authors" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Author")%>' Width="200px"></asp:Label><br />

                            <asp:Label ID="genres" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Genre")%>' Width="200px"></asp:Label><br />



                        </td>


                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>


         <br />

        <div id="Div5" style="color: black; margin-left: 500px; height:492px; width:400px;border-color: antiquewhite; 
            margin-top:-530px;">
            <asp:Repeater ID="Repeater5" runat="server">
                <HeaderTemplate>
                    <table border="1" class="w3-card-12"  style="color: black; width: 300px; border-color: antiquewhite; background-color: whitesmoke; text-align: center">
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>

                            <asp:ImageButton ID="Image1" ImageUrl='<%# Eval("BKImage") %>'
                            Style="height: 250px; width: 200px; border: 1px solid gray;" runat="server" /><br />

                            <asp:Label ID="titles" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>' Width="200px"></asp:Label><br />

                            <asp:Label ID="authors" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Author")%>' Width="200px"></asp:Label><br />

                            <asp:Label ID="genres" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Genre")%>' Width="200px"></asp:Label><br />



                        </td>


                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>


        
         <br />

        <div id="Div6" style="color: black; margin-left: 900px; height:492px; width:400px;border-color: antiquewhite; 
            margin-top:-512px;">
            <asp:Repeater ID="Repeater6" runat="server">
                <HeaderTemplate>
                    <table border="1" class="w3-card-12"  style="color: black; width: 300px; border-color: antiquewhite; background-color: whitesmoke; text-align: center">
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>

                           <asp:ImageButton ID="Image1" ImageUrl='<%# Eval("BKImage") %>'
                            Style="height: 250px; width: 200px; border: 1px solid gray;" runat="server" /><br />

                             <asp:Label ID="titles" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>' Width="200px"></asp:Label><br />

                            <asp:Label ID="authors" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Author")%>' Width="200px"></asp:Label><br />

                             <asp:Label ID="genres" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Genre")%>' Width="200px"></asp:Label><br />



                        </td>


                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>

 </form>
    
  <div id ="footer1" >
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