<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="adminlogin.aspx.vb" Inherits="CBELibrary4.adminlogin" %>

<!DOCTYPE html>
<link rel="icon" href="/images/bookcase.ico"  sizes="16x16"/>
<style>
   body{background-image:url("/images/bg..png");
        background-repeat:no-repeat;
        background-size:100%;
        background-color:#2c475c;
       
    }
    #f {
        margin-top:90px;
        margin-left:440px;
        background-color:darkslategray;
        width:500px;
        height:405px;
        opacity:0.8;
        border-radius:14px;
    }
    #hcol {
        margin-top:95px;
        margin-left:70px;
        color:white;
        font-size:30px;

    }
    #col {
        width:350px;
        height:40px;
        margin-top:5px;
        margin-left:70px;
        border-radius:14px;
        background-color:gray;
        color:white;
        font-size:20px;
    }
    #hrol {
        margin-top:15px;
        margin-left:70px;
        color:white;
        font-size:30px;
    }
     #rol {
        width:350px;
        height:40px;
        margin-top:5px;
        margin-left:70px;
        border-radius:14px;
        background-color:gray;
        color:white;
        font-size:20px;
    }
     input[type=text]:focus {
        border-color:lightgray;
        border-radius:8px;
        background-color:darkgray;
    }
      input[type=password]:focus {
        border-color:lightgray;
        border-radius:8px;
        background-color:darkgray;
    }

    .btn {
        width:353px;
        height:45px;
        margin-top:40px;
        margin-left:70px;
        background-color:orange;
        color:antiquewhite;
        font-size:20px;
        -webkit-transition-duration: 0.4s; /* Safari */
        transition-duration: 0.4s;
        cursor: pointer;
        border-radius:8px;
    }

     .buttons:hover {opacity:0.6;
         background-color:darkorange;
        }
</style>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>Admin Login</title>
    </head>

    <body>
    <div  id="f">
     <form runat="server" style="height: 400px; margin-left: 0px; margin-top: 27px">
         <p id="hcol">Admin</p>
             &nbsp;<asp:TextBox ID="col" Text="Enter admin name" runat="server" CssClass="hcol" Height="40px" style="margin-top: 0px" Width="359px"></asp:TextBox>
&nbsp;<br />
         <p id="hrol">Password</p>
         <asp:TextBox ID="rol" runat="server"  Text="admin" CssClass="hrol" Height="40px" style="margin-top: 0px" Width="359px" TextMode="Password" Wrap="False"></asp:TextBox>
&nbsp;<br/>
                <br />
         <asp:Button ID="c" runat="server" CssClass="btn buttons" Height="47px" style="margin-left: 68px; margin-top: 16px" Text="Login" Width="365px" />

     </form>
     </div>
</body>
</html>
