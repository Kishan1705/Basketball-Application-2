<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Players.aspx.cs" Inherits="Basketball_Application_2.Players" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <style>
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

        /*Hover CSS*/

        * {
            box-sizing: border-box;
        }

        .container {
            position: relative;
        }

        .image {
            display: block;
        }

        .overlay {
            position: absolute;
            bottom: 0;
            background: rgb(0, 0, 0);
            background: rgba(0, 0, 0, 0.5); /* Black see-through */
            color: #f1f1f1;
            width: 100%;
            transition: .5s ease;
            opacity: 0;
            color: white;
            font-size: 20px;
            padding: 20px;
            text-align: center;
        }

        .container:hover .overlay {
            opacity: 1;
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
            <asp:Label ID="Edit4" runat="server" Text="" Visible="False"><li><a href="UserModify.aspx">Edit</a></li></asp:Label>
            <asp:Label ID="Training2" runat="server" Text="" Visible="False"><li><a href="TrainingApp.aspx">Training App</a></li></asp:Label>
           <!-- <li style="float:right"><a class="active" href="LogInPage.aspx">Sign In</a></li> -->
            <li style="float:right"><asp:Button ID="btnsignin" CssClass="active" runat="server" Text="Sign In" OnClick="btnsignin_Click" Height="54px" /> </li>    
            <li style="float:right"><asp:Button ID="btnsignout" CssClass="active" runat="server" Text="Sign Out" Visible="False" OnClick="btnsignout_Click" /> </li>
            <li style="float:right"><asp:Label ID="lblwelcome" runat="server" Text="Welcome " Visible="False" ForeColor="#33AEE3"></asp:Label></li> 

        </ul>
    </div>
      




    <h1>OUR UNBREAKABLE TEAM</h1>

    <div style="margin-bottom: 10px;" class="w3-third">
        <div class="w3-card w3-white">
            <div class="w3-container container">
               <h3>Tom Ambercombie</h3>
                <iframe width="500" height="625" src="Images/eDITED.png" frameborder="0" allowfullscreen="true"></iframe>
                <div class="overlay"> 12.1PPG | 4.4REB | 1.3AST | 13.7EFF | 198CM | 90KG -</div>
            </div>
        </div>
    </div>
    <div style="margin-bottom: 10px;" class="w3-third">
        <div class="w3-card w3-white">
            <div class="w3-container container">
              <h3>Jordan Ngatai</h3>
                <iframe width="500" height="625" src="Images/JordanNgatai.png" frameborder="0" allowfullscreen="true"></iframe>
                <div class="overlay">18.2PPG | 5.7REB | 4.5AST | 17.8EFF | 200CM | 98KG </div>
            </div>
        </div>
    </div>
    <div style="margin-bottom: 10px;" class="w3-third">
        <div class="w3-card w3-white">
            <div class="w3-container container">
              <h3>Corey Webster</h3>
                <iframe width="500" height="625" src="Images/CoreyWebster.png" frameborder="0" allowfullscreen="true"></iframe>
                <div class="overlay">19.5PPG | 3.8REB | 4.2AST | 16.8EFF | 188CM | 89KG </div>
            </div>
        </div>
    </div>
    <div style="margin-bottom: 10px;" class="w3-third">
        <div class="w3-card w3-white">
            <div class="w3-container container">
         <h3>Finn Delany</h3>
                <iframe width="500" height="625" src="Images/FinnDelany.png" frameborder="0" allowfullscreen="true"></iframe>
                <div class="overlay"> 12.4PPG | 10.0REB | 2.2AST | 25.7EFF | 200CM | 107KG </div>
            </div>
        </div>
    </div>
    <div style="margin-bottom: 10px;" class="w3-third">
        <div class="w3-card w3-white">
            <div class="w3-container container">
               <h3>Tom Vodanovich</h3>
                <iframe width="500" height="625" src="Images/TomVodanovich.png" frameborder="0" allowfullscreen="true"></iframe>
                <div class="overlay"> 22.4PPG | 10.0REB | 2.2AST | 25.7EFF | 201CM | 104KG </div>
            </div>
        </div>
    </div>
    <div style="margin-bottom: 10px;" class="w3-third">
        <div class="w3-card w3-white">
            <div class="w3-container container">
                <h3>Rob Loe</h3>
                <iframe width="500" height="625" src="Images/RobLoe.png" frameborder="0" allowfullscreen="true"></iframe>
                <div class="overlay"> 18.0PPG | 13.5REB | 3.5AST | 24.5EFF | 211CM | 115KG </div>
            </div>
        </div>
    </div>





      </form>
    </body>


</html>
