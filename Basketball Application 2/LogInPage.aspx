<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="Basketball_Application_2.LogInPage" %>

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

         body {
            background-image: url(Images/log.jpg);
        }

          .Styling {
            height: 400px;
            width: 573px;
            background-color: white;
            margin: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            opacity: 0.6;
        }

        .Logo {
            padding-top: 10px;
            padding-bottom: 20px;
        }

          h1{
            text-decoration: underline overline;
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
                <li style="float: right">
                    <asp:Button ID="btnsignin" CssClass="active" runat="server" Text="Sign In" OnClick="btnsignin_Click" Height="54px" />
                </li>
                <li style="float: right">
                    <asp:Button ID="btnsignout" runat="server" Text="Sign Out" Visible="False" OnClick="btnsignout_Click" Height="54px" />
                </li>
                <li style="float: right">
                    <asp:Label ID="lblwelcome" runat="server" Text="Welcome " Visible="False" ForeColor="#33AEE3"></asp:Label></li>
            </ul>
        </div>








        <div class="w3-container Styling">
            <h1>Sign In</h1>
            
           
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Dont have an account, Sign up now</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="User1" runat="server" onkeydown="return (event.keyCode!=13)"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Email:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="Email1" runat="server" onkeydown="return (event.keyCode!=13)" TextMode="Email"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" onkeydown="return (event.keyCode!=13)" Text="Password:"></asp:Label>
            &nbsp;&nbsp;

            <asp:TextBox ID="Password1" runat="server" onkeydown="return (event.keyCode!=13)" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" />
            &nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            <br />
            <br />
        </div>


    </form>
</body>
</html>
