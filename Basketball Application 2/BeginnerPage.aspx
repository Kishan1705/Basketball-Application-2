<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BeginnerPage.aspx.cs" Inherits="Basketball_Application_2.BeginnerPage" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
                <asp:Label ID="Edit2" runat="server" Text="" Visible="False"><li><a href="UserModify.aspx">Edit</a></li></asp:Label>
                <asp:Label ID="Training1" runat="server" Text="" Visible="False"><li><a href="TrainingApp.aspx">Training App</a></li></asp:Label>
                <asp:Label ID="Admin1" runat="server" Text="" Visible="False"><li><a href="Modify.aspx">Admin Modify</a></li></asp:Label>
                <li style="float: right">
                    <asp:Button ID="btnsignout" runat="server" Text="Sign Out" Visible="False" OnClick="btnsignout_Click" Height="54px" />
                </li>
                <li style="float: right">
                    <asp:Label ID="lblwelcome" runat="server" Text="Welcome " Visible="False" ForeColor="#33AEE3"></asp:Label></li>
            </ul>
        </div>


        <h1>Game Highlights</h1>
        <div class="progress">
            <asp:Label ID="ProgressBar1" runat="server" class="progress-bar" role="progressbar" aria-valuenow="70"
                aria-valuemin="0" aria-valuemax="100" Text="" Width="0%"></asp:Label>

            <progress id="ProgressBar" value="0" max="100"></progress>

            <!-- <div class="progress-bar" role="progressbar" aria-valuenow="70"
                aria-valuemin="0" aria-valuemax="100" style="width: 70%" id="2">
                <span class="sr-only">70% Complete</span>
            </div>-->
        </div>
        <%--        <asp:Label  onclick="Video1_click" ID="asdf" runat="server" Text="">
        <div onclick="watched1()" style="margin-bottom: 10px;" class="w3-quarter">
            <div class="w3-card w3-white">
                <div class="w3-container container">
                    
                    <iframe  width="425" height="270" onplay="Video1_click" src="https://www.youtube.com/embed/gLACCRu6uxU" frameborder="0" allowfullscreen="true" id="Video1"></iframe>
                        module module-home-video
                </div>
            </div>
        </div>
    </asp:Label>
        --%>
        <div class="w3-quarter">
            <div class="w3-card w3-white">
                <div class="w3-container container">
                    <span class="module-strip"></span>

                    <script src="https://www.youtube.com/iframe_api"></script>
                    <div id="video"></div>
                </div>
            </div>
        </div>



        <div class="w3-quarter">
            <div class="w3-card w3-white">
                <div class="w3-container container">
                    <span class="module-strip"></span>
                    <script src="https://www.youtube.com/iframe_api"></script>
                    <div id="video1"></div>
                </div>
            </div>
        </div>



        <script>

            var player, playing = false;
            function onYouTubeIframeAPIReady() {
                player = new YT.Player('video', {
                    height: '270',
                    width: '425',
                    videoId: 'gLACCRu6uxU',
                    events: {
                        'onStateChange': onPlayerStateChange
                    }
                });
            }

            var player1, playing = false;
            function onYouTubeIframeAPIReady() {
                player1 = new YT.Player('video1', {
                    height: '270',
                    width: '425',
                    videoId: 'XRj8sNmFINM',
                    events: {
                        'onStateChange': onPlayerStateChange
                    }
                });
            }



            function onPlayerStateChange(event) {

                if (event.data == YT.PlayerState.PLAYING) {

                    playing = true;
                    var x = 0;
                    document.getElementById("ProgressBar").value = x + 25;
                }

                else if (event.data == YT.PlayerState.PAUSED) {


                    playing = false;
                }
            }


        </script>







        <%--        <div style="margin-bottom: 10px;" class="w3-quarter">
            <div class="w3-card w3-white">
                <div class="w3-container container">

                        <iframe width="425" height="270" src="https://www.youtube.com/embed/nTU_8yx3hBs" ></iframe>

                </div>
            </div>
        </div>
        <div style="margin-bottom: 10px;" class="w3-quarter">
            <div class="w3-card w3-white">
                <div class="w3-container container">

                    <iframe width="425" height="270" src="https://www.youtube.com/embed/XRj8sNmFINM" ></iframe>

                </div>
            </div>
        </div>
        <div style="margin-bottom: 10px;" class="w3-quarter">
            <div class="w3-card w3-white">
                <div class="w3-container container">

                    <iframe width="425" height="270" src="https://www.youtube.com/embed/88RfdDjbmVk" ></iframe>

                </div>
            </div>
        </div>--%>
    </form>
</body>

</html>
