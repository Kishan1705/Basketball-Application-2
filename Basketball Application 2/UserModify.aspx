<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserModify.aspx.cs" Inherits="Basketball_Application_2.UserModify" %>

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
            background-image: url(Images/adminmodify.jpg);
        }

          .Styling {
            height: 400px;
            width: 500px;
            background-color: white;
            margin: 0;
            position: absolute;
            opacity: 0.6;
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
            <asp:Label ID="Rego" runat="server" Text="" Visible="true"><li><a href="WebForm1.aspx">Register</a></li></asp:Label>
            <asp:Label ID="Edit3" runat="server" Text="" Visible="False"><li><a href="UserModify.aspx">Edit</a></li></asp:Label>
            <asp:Label ID="Training4" runat="server" Text="" Visible="False"><li><a href="TrainingApp.aspx">Training App</a></li></asp:Label>
            <!--<li style="float:right"><a class="active" href="LogInPage.aspx">Sign In</a></li>-->
            <li style="float: right">
                <asp:Button ID="btnsignout" runat="server" Text="Sign Out" Visible="False" OnClick="btnsignout_Click" Height="54px" />
            </li>
            <li style="float: right">
                <asp:Label ID="lblwelcome" runat="server" Text="Welcome " Visible="False" ForeColor="#33AEE3"></asp:Label></li>

        </ul>
    </div>
    <br />
    <form id="form1" runat="server">
        <div class="w3-container Styling">
            <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtusername" runat="server" OnTextChanged="txtusername_TextChanged" AutoPostBack="true"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtemail" runat="server" OnTextChanged="txtemail_TextChanged" AutoPostBack="true"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtpassword" runat="server" OnTextChanged="txtpassword_TextChanged" AutoPostBack="true"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Confirm Password:"></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtpasswordconfirm" runat="server"></asp:TextBox>

            <br />
            <asp:Label ID="UserIDnumber" runat="server" Text="" Visible="true"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Emaillbl" runat="server" Text="" Visible="false"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Passlbl" runat="server" Text="" Visible="false"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Save" runat="server" OnClick="Save_Click" Text="Update profile" />
            <br />

            <asp:Label ID="lbluserbox" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="lblemailbox" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="lblpassbox" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="lblerrormessage" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="lblsuccessmessage" runat="server" Text="" Visible="false"></asp:Label>

        </div>
    </form>
</body>
</html>
