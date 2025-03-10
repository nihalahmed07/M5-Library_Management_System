<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index-Page.aspx.cs" Inherits="Index_Page" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>M5 Library Management System</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body {
            background: url("./img/main.jpg");
            background-repeat: no-repeat;
            background-size: 100% 100vh;
            object-fit: cover;
            font-family: Verdana;
        }
        #header {
            z-index: 999;
        }
        footer{
            flex-direction:row;
            z-index: 999;
        }
        /* Center Content */
        .content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 70px);
            text-align: center;
            backdrop-filter: blur(1px);
            background: rgba(0, 0, 0, 0.4);
            margin-top:35px;
            padding: 20px;
            color:#fff;
            /* border-radius: 10px; */
        }

            .content h1 {
                font-size: 3em;
                margin-bottom: 20px;
            }

            .content p {
                font-size: 1.5em;
                margin: 10px 0;
            }
            footer{
                display:flex;
                flex-direction:row;
                justify-content:space-between;
                align-items:center;
            }
            footer a{
                text-decoration:none;
                color:#fff;
            }
        .btn {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }
            .btn:hover {
                background-color: #0056b3;
            }

    </style>
</head>
<body>
    <div id="header">
        <div class="logo">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/img/logo.png" />
            <p>LIBRARY MANAGEMENT SYSTEM</p>
        </div>
        <nav>
            <a href="Index-Page.aspx">Home</a>
            <a href="Default.aspx" id="log">Login</a>
            <a href="Contact.aspx">Contact Us</a>
        </nav>
    </div>
    <form id="form1" runat="server">
        <div class="content">
            <h1>Welcome To <span>M5</span> Library Management System</h1>
            <p>Opens at: <strong><asp:Label ID="lblOpenTime" runat="server"></asp:Label></strong></p>
            <p>Closes at: <strong>
                <asp:Label ID="lblCloseTime" runat="server"></asp:Label></strong></p>
            <p>Current Time: <strong><span id="liveClock"></span></strong></p>
        </div>
    </form>
    <footer>
    <p>&copy; 2025 M5 Library Management System. All rights reserved.</p>
    <p>Contact: <a href="mailto:m5library@gmail.com">m5library@gmail.com</a></p>
</footer>
    <script>
        function updateClock() {
            var now = new Date();
            var hours = now.getHours().toString().padStart(2, '0');
            var minutes = now.getMinutes().toString().padStart(2, '0');
            var seconds = now.getSeconds().toString().padStart(2, '0');
            var ampm = hours >= 12 ? 'PM' : 'AM';
            hours = hours % 12 || 12; // Convert 24-hour to 12-hour format

            var timeString = hours + ":" + minutes + ":" + seconds + " " + ampm;
            document.getElementById("liveClock").innerText = timeString;
        }
        setInterval(updateClock, 1000); // Update clock every second
        updateClock(); // Run initially
    </script>

</body>
</html>
