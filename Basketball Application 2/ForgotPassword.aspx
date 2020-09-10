<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Basketball_Application_2.ForgotPassword" %>

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
        </body>
    <form id="form1" runat="server">
        <div>
            <h1>Reset Your Password</h1>
            <asp:Label runat="server" Text="Username:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server"></asp:TextBox>
            </br>
            </br>
            <asp:Label runat="server" Text="Old Password:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server"></asp:TextBox>
            </br>
            </br>
            <asp:Label runat="server" Text="New Password:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server"></asp:TextBox>
            </br>
            </br>
            <asp:Label runat="server" Text="Confirm Password:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server"></asp:TextBox>
            </br>
            </br>
            <asp:Button runat="server" Text="Confirm Changes" OnClick="Unnamed9_Click" />
        </div>
    </form>
</body>
</html>
