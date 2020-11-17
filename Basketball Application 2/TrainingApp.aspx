<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainingApp.aspx.cs" Inherits="Basketball_Application_2.TrainingApp" %>

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
                <asp:Label ID="Edit5" runat="server" Text="" Visible="False"><li><a href="UserModify.aspx">Edit</a></li></asp:Label>
                <asp:Label ID="Training3" runat="server" Text="" Visible="False"><li><a href="TrainingApp.aspx">Training App</a></li></asp:Label>
                <!--<li style="float: right"></li>
            <li style="float:right"><a class="active" href="LogInPage.aspx">Sign In</a></li>-->
                <li style="float: right">
                    <asp:Button ID="btnsignout" CssClass="active" runat="server" Text="Sign Out" Visible="False" OnClick="btnsignout_Click" Height="54px" />
                </li>
                <li style="float: right">
                    <asp:Label ID="lblwelcome" runat="server" Text="Welcome " Visible="False" ForeColor="#33AEE3"></asp:Label></li>
            </ul>
        </div>

        <style>
            .Beginner {
                background-color: #33AEE3;
                color: black;
                border: 2px solid black;
                margin: 20px;
                padding: 20px;
            }

            .Intermediate {
                background-color: #33AEE3;
                color: black;
                border: 2px solid black;
                margin: 20px;
                padding: 20px;
            }

            .Advanced {
                background-color: #33AEE3;
                color: black;
                border: 2px solid black;
                margin: 20px;
                padding: 20px;
            }
        </style>
        <div class="Beginner">
            <h1>Beginner</h1>
            <p>Start Training Now</p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>

        <div class="Intermediate">
            <h1>Intermediate</h1>
            <p>Start Training Now</p>
            <asp:Button ID="Button2" runat="server" Text="Button" />
        </div>

        <div class="Advanced">
            <h1>Advanced</h1>
            <p>Start Training Now</p>
            <asp:Button ID="Button3" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
