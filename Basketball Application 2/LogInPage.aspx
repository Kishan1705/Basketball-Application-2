<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="Basketball_Application_2.LogInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   

     <style>
ul {
  list-style-type: none;
  margin: -10px;
  padding: 0;
  overflow: hidden;
  background-color: #111;
  align-content:center;

}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  
}

li a:hover:not(.active) {
  background-color: #1c6280;
}

.active {
  background-color: #33AEE3;


}



.Logo{

    padding-top:10px;
    padding-bottom:20px;
}



</style>
        <title></title>
</head>
    <body>

<ul>
    <div class  ="Logo">
  <li><a href="WebForm1.aspx"> <img src="Images/Sky-Sport-Breakers-Logo-White.png" style="width:61.24px;height:22.7px; "/></a></li>
  <li><a href="Players.aspx">Players</a></li>      
  <li><a href="WebForm1.aspx">Register</a></li>
  <li style="float:right"><a class="active" href="LogInPage.aspx">Sign In</a></li>

    </div>
</ul>
        

  


    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Sign In "></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Dont have an account, Sign up now</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="User1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Password1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server">Forgot Password</asp:HyperLink>
        </div>


    </form>
</body>
</html>
