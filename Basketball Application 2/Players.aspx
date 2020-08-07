<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Players.aspx.cs" Inherits="Basketball_Application_2.Players" %>

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
  <li><a href="#home"> <img src="Images/Sky-Sport-Breakers-Logo-White.png" style="width:61.24px;height:22.7px; "/></a></li>
  <li><a href="#news">News</a></li>      
  <li><a href="#contact">Contact</a></li>
  <li style="float:right"><a class="active" href="#about">About</a></li>

    </div>
</ul>
        </body>
    
    <form id="form1" runat="server">

    <h1>OUR UNBREAKABLE TEAM</h1>
        

<div class="w3-quarter" style="position:relative; top: 160px; left: 100px;">
<div class="w3-card w3-white">
  <div class="w3-container">
  <iframe src="Images/BREAKERS_01_TomAbercrombie_1267.png" style="width:425px;height:270px;"  frameborder="0" allowfullscreen="true"></iframe>  
      <h3>Beginners Guide to Shooting</h3>
  </div>
  </div>
</div>

<div class="w3-quarter" style="position:relative; top: 160px; right: 100px;">
<div class="w3-card w3-white">
  <div class="w3-container">
  <iframe width="425" height="270" src="Images/BREAKERS_01_TomAbercrombie_1267.png" style="width:425px;height:270px;"  frameborder="0" allowfullscreen="true"></iframe>
      <h3>Beginners Guide to Shooting</h3>
  </div>
  </div>
</div>




    </form>

</html>
