<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>M5 Login</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100px;
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
            <a href="Contact.aspx">Contact Us</a>
        </nav>
</div>
    <form id="form1" runat="server">
        <div id="default-main">
            <div id="left-img">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/img/muslim-girl-icon.jpg" />
            </div>
            <!--<div id="right-login">
                <h2>Login</h2>
                
            </div>-->
            <div id="login">
                <table class="tbl">
                    <tr>
                        <td class="tblhead" colspan="2">Login Area</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lbl" runat="server" Font-Size="11px" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">UserName&nbsp; :</td>
                        <td>
                            <asp:TextBox ID="txtuname" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txtuname" ErrorMessage="!!!" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtupass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="txtupass" ErrorMessage="!!!" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:RadioButton ID="rdolibrary" runat="server" Checked="True"
                                ForeColor="Black" GroupName="a" Text="Librarian" />
                            &nbsp;<asp:RadioButton ID="rdosudent" runat="server" ForeColor="black" GroupName="a"
                                Text="Student" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login"
                                Width="80px" Font-Size="10pt" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </div>

            

        </div>
        <footer>
            &copy; 2025 M5 Library Management System. All rights reserved.
        </footer>
    </form>
</body>
</html>
