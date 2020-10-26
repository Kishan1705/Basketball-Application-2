<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Basketball_Application_2.HomePage" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">



    <style>
        h1 {text-align: center;}
        ul {
            list-style-type: none;
            margin: -10px;
            padding: 0;
            overflow: hidden;
            background-color: #111;
            align-content: center;
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



        .Logo {
            padding-top: 10px;
            padding-bottom: 20px;
        }

        /*Slideshow*/

        * {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active2 {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Logo">
            <ul>
                <li><a href="HomePage.aspx">
                    <img src="Images/Sky-Sport-Breakers-Logo-White.png" style="width: 61.24px; height: 22.7px;" /></a></li>
                <li><a href="Players.aspx">Players</a></li>
                <asp:Label ID="Rego" runat="server" Text="" Visible="true"><li><a href="WebForm1.aspx">Register</a></li></asp:Label>
                <asp:Label ID="Edit2" runat="server" Text="" Visible="False"><li><a href="UserModify.aspx">Edit</a></li></asp:Label>
                <asp:Label ID="Training1" runat="server" Text="" Visible="False"><li><a href="TrainingApp.aspx">Training App</a></li></asp:Label>
                <asp:Label ID="Admin1" runat="server" Text="" Visible="False"><li><a href="Modify.aspx">Admin Modify</a></li></asp:Label>
                <li style="float:right"><asp:Button ID="btnsignin" CssClass="active" runat="server" Text="Sign In" OnClick="btnsignin_Click" Height="54px" /> </li>    
                <li style="float:right"><asp:Button ID="btnsignout" CssClass="active" runat="server" Text="Sign Out" Visible="False" OnClick="btnsignout_Click" Height="54px"/> </li>
                <li style="float:right"><asp:Label ID="lblwelcome" runat="server" Text="Welcome " Visible="False" Font-Size="XX-Large" ForeColor="#33AEE3" ></asp:Label></li>    
            </ul>
        </div>
        <h1>Welcome To The Breaker Nation</h1>


<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="Images/0L2A9726.jpg" style="width:100%">
  <div class="text">1</div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="Images/Spark Arena (2).jpg" style="width:100%">
  <div class="text">2</div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="Images/Corey - Dribble.jpg" style="width:100%">
  <div class="text">3</div>
</div>

    <div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="Images/Diamond Seats 5.jpg" style="width:100%">
  <div class="text">4</div>
</div>

    <div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="Images/Diamond Seats 7.jpg" style="width:100%">
  <div class="text">5</div>
</div>

</div>
<br>


<div style="text-align:center" hidden="hidden">
  <span class="dot"></span> 
  <span class="dot"></span> 
    <span class="dot"></span> 
    <span class="dot"></span> 
  <span class="dot"></span> <asp:RadioButton ID="RadioButton1" runat="server" />
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
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active2", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active2";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

        <h1>Game Highlights</h1>

 <div style="margin-bottom: 10px;" class="w3-quarter">
        <div class="w3-card w3-white">
            <div class="w3-container container">
           
                <iframe width="425" height="270" src="https://www.youtube.com/embed/gLACCRu6uxU" frameborder="0" allowfullscreen="true"></iframe>
               
            </div>
        </div>
    </div>
    <div style="margin-bottom: 10px;" class="w3-quarter">
        <div class="w3-card w3-white">
            <div class="w3-container container">
           
                <iframe width="425" height="270" src="https://www.youtube.com/embed/nTU_8yx3hBs" frameborder="0" allowfullscreen="true"></iframe>
                
            </div>
        </div>
    </div>
    <div style="margin-bottom: 10px;" class="w3-quarter">
        <div class="w3-card w3-white">
            <div class="w3-container container">
    
                <iframe width="425" height="270" src="https://www.youtube.com/embed/XRj8sNmFINM" frameborder="0" allowfullscreen="true"></iframe>
                
            </div>
        </div>
    </div>
        <div style="margin-bottom: 10px;" class="w3-quarter">
        <div class="w3-card w3-white">
            <div class="w3-container container">
    
                <iframe width="425" height="270" src="https://www.youtube.com/embed/88RfdDjbmVk" frameborder="0" allowfullscreen="true"></iframe>
                
            </div>
        </div>
    </div>





    </form>
</body>



</html>
