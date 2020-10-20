<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Basketball_Application_2.WebForm1" %>

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

    <div class="Logo">
        <ul>
            <li><a href="HomePage.aspx">
                <img src="Images/Sky-Sport-Breakers-Logo-White.png" style="width: 61.24px; height: 22.7px;" /></a></li>
            <li><a href="Players.aspx">Players</a></li>
            <li><a href="WebForm1.aspx">Register</a></li>
            <asp:Label ID="Edit1" runat="server" Text="" Visible="False"><li><a href="UserModify.aspx">Edit</a></li></asp:Label>
            <asp:Label ID="Training5" runat="server" Text="" Visible="False"><li><a href="TrainingApp.aspx">Training App</a></li></asp:Label>
            <!--<li style="float:right"><a class="active" href="LogInPage.aspx">Sign In</a></li>-->

        <li style="float:right"><asp:Button ID="btnsignin" CssClass="active" runat="server" Text="Sign In" OnClick="btnsignin_Click" /> </li>    
                <li style="float:right"><asp:Button ID="btnsignout" runat="server" Text="Sign Out" Visible="False" OnClick="btnsignout_Click" /> </li>
                <li style="float:right"><asp:Label ID="lblwelcome" runat="server" Text="Welcome " Visible="False" ForeColor="#33AEE3"></asp:Label></li>   
        </ul>
    </div>


    <form id="form1" runat="server">
        <div>

            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Sign Up"></asp:Label>

            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server" OnTextChanged="txtName_TextChanged"></asp:TextBox>
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
