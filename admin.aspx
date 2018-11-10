<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admin.aspx.vb" Inherits="CBELibrary4.admin" %>
<!DOCTYPE html>

<link rel="stylesheet" href="/css/adminstyles.css" />
<link rel="icon" href="/images/bookcase.ico" sizes="16x16" />

<style>
    * {
        box-sizing: border-box;
        margin: -2px;
        padding: 0;
    }

    body {
        font-family: "Lato", sans-serif;
        margin: 0;
        padding: 0;
        background-color: #05212f;
       
    }

    /* Style the tab */
    div.tab {
        float: left;
        border: 1px solid #ccc;
        background-color: #28285c;
        width: 20%;
        height: 800px;
        text-decoration: none;
        
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
        width: 600px;
        height: 700px; 
        background-color: #05212f;
        color: white;
        
    }
.f {
     margin-left:150px;
     font-size:20px;    
    }
.e {
     margin-left:150px;
     font-size:20px;
    }
.d {
     margin-left:80px;
     font-size:20px;
     margin-top:300px;
    
    }  


    .active .block {
        background-color: #05212f;
        display: block;
    }
    .c {}
</style>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Admin</title>

</head>
<body>
    <img src="/images/l1.png" style="width: 1365px; height: 380px; margin-left: 0;" />

    <div class="tab">
        <button class="tablinks" onclick="openNav(event, 'Home')" id="defaultOpen">Home</button>
        <button class="tablinks" onclick="openNav(event, 'Add')" id="add">Add Book</button>
        <button class="tablinks" onclick="openNav(event, 'Edit')">Edit Book</button>
        <button class="tablinks" onclick="openNav(event, 'Delete')">Delete Book</button >
        

    </div>
  

    <form id="form4" runat="server" style="overflow:auto;height:600px;overflow-style:auto">
        <div id="Home" class="block">
             
            <h1>Wecome Admin 
                
            </h1>
         <asp:Button ID="logut" runat="server" BackColor="#CC6600" ForeColor="White" Text="logout" Width="137px" />
              <br>
            <br>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table border="1" style="background-color:azure; color:black; width: 800px; margin-left: 50px; border-color: antiquewhite">
                        <tr>
                            <th>Id</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Genre</th>
                            <th>Book</th>
                            <th>ContentType</th>
                            <th>Data</th>
                            <th>PBook</th>
                            <th>PContentType</th>
                            <th>PData</th>
                            <th>BookImage</th>

                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="book" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "BookID")%>'></asp:Label></td>
                        <td>
                            <asp:Label ID="titles" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>' Width="200px"></asp:Label></td>
                        <td>
                            <asp:Label ID="authors" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Author")%>'></asp:Label></td>
                        <td>
                            <asp:Label ID="genres" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Genre")%>'></asp:Label></td>
                        <td>
                            <asp:Label ID="bookf" runat="server" Text='<%#Eval("Book")%>'></asp:Label></td>
                       
                        <td>
                            <asp:Label ID="cont" runat="server" Text='<%#Eval("ContentType")%>'></asp:Label></td>
                        
                         <td>
                            <asp:Label ID="dat" runat="server" Text='<%#Eval("Data")%>'></asp:Label></td>

                         <td>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("PBook")%>'></asp:Label></td>
                       
                        <td>
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("PContent")%>'></asp:Label></td>
                        
                         <td>
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("PData")%>'></asp:Label></td>
                       
                        <td>
                            <asp:Image ID="Image1" ImageUrl='<%# Eval("BKImage") %>'
                                style="height: 200px; width: 200px; border: 1px solid gray;" runat="server"/>  
                          </td>     
     
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
                  <hr />
         
        
                       <div>
    <asp:Literal ID="ltEmbed"  runat="server" />
</div>
             
        
        </div>
             

        <div id="Add" class="block">
    
            <h1>List Of Books</h1>
   
            <asp:Label ID="Label2" runat="server" CssClass="d">Title</asp:Label> 
            <asp:TextBox ID="TextBox2" CssClass="c" Style=" margin-left:163px;" runat="server" Width="347px"></asp:TextBox>
            <br>
            <asp:Label ID="Label3" runat="server" CssClass="d">Author </asp:Label>
            <asp:TextBox ID="TextBox3" CssClass="c" Style=" margin-left:163px;" runat="server" Width="347px"></asp:TextBox>
            <br>
              <asp:Label ID="Label4" runat="server" CssClass="d">Genre</asp:Label> 
            <asp:TextBox ID="TextBox4" CssClass="c" Style=" margin-left:163px;" runat="server" Height="21px" Width="347px"></asp:TextBox>
            <br>
              <asp:Label ID="Label5" runat="server" CssClass="d">Images</asp:Label> 
            <asp:TextBox ID="TextBox5" CssClass="c" Style=" margin-left:163px;" runat="server" Height="21px" Width="347px"></asp:TextBox>
           
            <br>
            <asp:FileUpload ID="File" runat="server" Style=" margin-left:282px;margin-top:31px" />
            <br>

              <br>
            <asp:FileUpload ID="File2" runat="server" Style=" margin-left:282px;margin-top:31px" />
            <br>
         
            <asp:Button ID="bSave" CssClass="f"  Style=" margin-left:281px;margin-top:21px"  runat="server" Text="Save" Width="120px" />
       
         
          
        </div>
 
           
          





        <div id="Edit" class="block" draggable="true">
            <h1>List Of Books</h1>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Repeater ID="Repeater2" runat="server">
                <HeaderTemplate>
                    <table border="1" style="color: white; width: 700px">
                        <tr>
                            <th>Id</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Genre</th>
                            <th>Stats</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="books" runat="server" Text='<%#Eval("BookID")%>'></asp:Label>
                            
                        </td>
                        <td>
                            <asp:Label ID="titles" runat="server" Text='<%#Eval("Title")%>'></asp:Label>
                             <asp:TextBox ID="t" runat="server" Text='<%#Eval("Title")%>' Visible="false"></asp:TextBox>
                        </td>
                            
                        <td>
                            <asp:Label ID="authors" runat="server" Text='<%#Eval("Author")%>'></asp:Label>
                             <asp:TextBox ID="a" runat="server" Text='<%#Eval("Author")%>' Visible="false"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="genres" runat="server" Text='<%#Eval("Genre")%>'></asp:Label>
                             <asp:TextBox ID="g" runat="server" Text='<%#Eval("Genre")%>' Visible="false"></asp:TextBox>
                        </td>
                      
                        <td>
                            <asp:LinkButton ID="ledit" runat="server" CommandName="edit" CommandArgument='<%#Eval("BookID")%>'
                               >Edit</asp:LinkButton>
                            <asp:LinkButton ID="lupdate" runat="server" CommandArgument='<%#Eval("BookID")%>'
                                 CommandName="update" Visible="false">Update</asp:LinkButton>
                            <asp:LinkButton ID="lcancel" runat="server" CommandArgument='<%#Eval("BookID")%>' 
                                CommandName="cancel" Visible="false">Cancel</asp:LinkButton>
                        </td>


                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

        </div>



        <div id="Delete" class="block">

            <h1>List Of Books</h1>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 	  <asp:Repeater ID="Repeater3" runat="server">
                   <HeaderTemplate>
                       <table border="1" style="color: white; width: 700px">
                           <tr>
                               <th>Id</th>
                               <th>Title</th>
                               <th>Author</th>
                               <th>Genre</th>
                               <th>Stats</th>
                           </tr>
                   </HeaderTemplate>
                   <ItemTemplate>
                       <tr>
                           <td>
                               <asp:Label ID="book" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "BookID")%>'></asp:Label></td>
                           <td>
                               <asp:Label ID="titles" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>'></asp:Label></td>
                           <td>
                               <asp:Label ID="authors" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Author")%>'></asp:Label></td>
                           <td>
                               <asp:Label ID="genres" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Genre")%>'></asp:Label></td>
                            <td>
                               <asp:LinkButton runat="server" CommandName="remove" CommandArgument='<%#Eval("BookId")%>'
                                   ID="ldelete">Delete</asp:LinkButton></td>

                       </tr>
                   </ItemTemplate>
                   <FooterTemplate>
                       </table>
                   </FooterTemplate>
               </asp:Repeater>

        </div>
      </form>

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
                tablinks[i].className = tablinks[i].className.replace(" active", "");
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
