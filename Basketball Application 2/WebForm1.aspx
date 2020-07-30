﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Basketball_Application_2.WebForm1" %>

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
  <li><a href="#home"> <img src="Images/Sky-Sport-Breakers-Logo-White.png" style="width:61.24px;height:22.7px; "/></a></li>
  <li><a href="#news">News</a></li>      
  <li><a href="#contact">Contact</a></li>
  <li style="float:right"><a class="active" href="#about">About</a></li>

    </div>
</ul>

<body>
    <form id="form1" runat="server">
        <div>
         
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Sign Up"></asp:Label>
         
            <br />
            <br />
            
            <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email Address:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <br />
            <br />
            Confirm Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtConfirmpassword" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign Up" />
            <br />
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
