<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MemProf.aspx.vb" Inherits="CBELibrary4.MemProf" %>


<!DOCTYPE html>

<style>   
      /* Style the tab */
    div.tab {
        float: left;
        border: 1px solid #ccc;
        background-color: #28285c;
        width: 20%;
        height: 600px;
        text-decoration: none;
        margin-top:18px;
        
    }

        /* Style the buttons inside the tab */
        div.tab button {
            display: block;
            background-color: #28285c;
            color: white;
            padding: 28px 18px 16px 6px;
            width: 100%;
            outline: none;
            text-align: center;
            cursor: pointer;
            transition: 0.3s;
            font-size: 17px;
            text-decoration: none;
            margin-right: -5px;
            border: solid transparent;
            content: " ";
        }



            div.tab button:hover {
                background-color: #05212f;
            }

            /* Create an active/current "tab button" class */
            div.tab button.active {
                background-color: orange;
                box-shadow: 0 0px 14px 0 black;
                content: '';
                border-right-color: #05212f;
                border-right-width: 12px;
                border-bottom-right-radius: 6%;
            }

    .block {
        margin-top:-620px;
        width: 80%;
        height: 500px; 
        background-color:white;
        color: black;
        
    }
      .activet .block {
        background-color: #05212f;
        display: block;
    }
</style>

  <link rel="icon" href="/images/bookcase.ico"  sizes="16x16"/>
  <link rel="stylesheet" href="/css/style.css" />
  <link rel="stylesheet" href="/css/allstyles.css" />



<html xmlns="http://www.w3.org/1999/xhtml">


<head id="Head1" runat="server">
    <title>Profile</title>
</head>
    
<body>
    <div id="logo">
        <img src="/images/logo1.png">
    </div>
    
                             
<ul id="U" runat="server">
  
         <li><a  href="HomeMem.aspx">Home</a></li>
         <li><a href="AboutMem.aspx">About</a></li>
         <li><a href="ContactMem.aspx">Contact</a></li>
         <li><a href="CatalogMem.aspx">Catalog</a></li>

</ul>
       
        
     <div class="tab">
        <button runat="server" class="tablinks" onclick="openNav(event,'Profile')" id="defaultOpen">Profile</button>
        <button runat="server"  class="tablinks" onclick="openNav(event,'History')" id="his">History</button>
        <button runat="server"  class="tablinks" onclick="openNav(event,'Settings')" id="set">Settings</button>
    </div>
     
    <form id="form1" runat="server">
      <div style="background-color:#130a4b;width:1355px;height:15px;margin-top:70px"></div>  
      
        <p style="margin-top: 202px; margin-right: -17px; text-align: right; overflow: hidden; background-color: #28285c; list-style-type: none; max-width: 1350px; height: 40px; color: white; width: 1363px;">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="/images/u.png" Width="28px"
                Height="22px" Style="margin-top: 8px; margin-left: -2px;" />

            <asp:Label ID="memb" CssClass="use" runat="server" Style="margin-top: -15px; margin-left: 16px;">
            </asp:Label>

            <asp:Button ID="Button1" runat="server" Text="logout" Style="margin-top: -15px; margin-left: 6px;"
                BackColor="#CC6600" BorderStyle="Groove" ForeColor="White" Height="21px" Width="95px" />
        </p>
          
 

        <div id="Profile" class="block">
            <h1>Member </h1>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table border="1" class="w3-card-24" style="font-size:23px;background-color: whitesmoke; width: 800px; height: 500px; margin-left: 420px;">
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                <td>
                    <div style="margin-left:60px;">
                        Name:<asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Name")%>' Width="493px"></asp:Label><br />
                        Address:
                        <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Address")%>' Width="400px"></asp:Label>
                        <br />
                        Email: 
                        <asp:Label ID="Label3" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Email")%>' Width="400px"></asp:Label><br />
                        Gender 
                        <asp:Label ID="Label4" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Gender")%>' Width="400px"></asp:Label><br />
                        Number:
                        <asp:Label ID="Label5" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Number")%>' Width="400px"></asp:Label><br />
                    </div>
                </td>
                    </tr>






                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

        </div>          


        <div id="History" class="block"> 
            <h1>History </h1>
            <div  style="overflow:inherit; height: 350px; ">
                 <asp:Repeater ID="Repeater2" runat="server">
                <HeaderTemplate>
                    <table border="1" class="w3-card-24" style="font-size:14px;background-color: whitesmoke; width: 700px; height: 50px; margin-left: 420px;">
                
                        <th>Name</th>
                         <th>Title</th>
                         <th>Author</th>
                         <th>Date</th>
                        </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                
                    <div style="margin-left:60px;">
                     <td>  <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Name")%>' Width="193px" Height="15px"></asp:Label></td>
                      
                       <td><asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>' Width="100px" Height="15px"></asp:Label>
                            </td> 
                       <td> <asp:Label ID="Label3" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Author")%>' Width="100px" Height="15px"></asp:Label>
                             </td>
                       <td> <asp:Label ID="Label4" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Date")%>' Width="100px" Height="15px"></asp:Label>
                             </td>
                     
                    </div>
              
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
                </div>
           </div>


     <div id="Settings" class="block">
             
            <h1>Change </h1>
        <div class="w3-card-16" style="height: 350px;margin-left:360px;background-color:whitesmoke ">
            <div style="margin-left:200px">
          <br />
            Email:<asp:TextBox ID="TextBox2" style="margin-left:17px;" Text='<%#Eval("Email")%>' runat="server" Width="300px" BackColor="White"></asp:TextBox><br />
            Address:<asp:TextBox ID="TextBox3" Text='<%#Eval("Address")%>' runat="server" Width="300px"></asp:TextBox><br />
            Number:<asp:TextBox ID="TextBox4"  Text='<%#Eval("Number")%>' runat="server" Width="300px"></asp:TextBox><br />
            <br />
            <asp:Button ID="bsave" runat="server" Text="Save Changes" CssClass="w3-button w3-card-16" BorderColor="#FF9900" BorderStyle="Ridge" />
            </div>
        </div>
       </div>

   
     
    </form>

     <div id="footer1" style="color:orange; ">
        Copyright@ 2017 CBELibrary All rights reserved<br>
        <a style="color:white" href="#">admin@gmail.com</a><br>
        <a style="color:white" href="#">09324254664</a>
    </div>
  
     <script>
         function openNav(evt, fun) {
             // Declare all variables
             var i, block, tablinks;

             // Get all elements with class="tabcontent" and hide them
             block = document.getElementsByClassName("block");
             for (i = 0; i < block.length; i++) {
                 block[i].style.display = "none";
             }

             // Get all elements with class="tablinks" and remove the class "active"
             tablinks = document.getElementsByClassName("tablinks");
             for (i = 0; i < tablinks.length; i++) {
                 tablinks[i].className = tablinks[i].className.replace("active", "");
             }

             // Show the current tab, and add an "active" class to the link that opened the tab
             document.getElementById(fun).style.display = "block";
             evt.currentTarget.className += " active";
         }
         // Get the element with id="defaultOpen" and click on it
         document.getElementById("defaultOpen").click();

    </script>

   
 
  
     
        
    
    </body>
    </html>