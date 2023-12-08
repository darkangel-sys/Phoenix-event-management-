<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel ="stylesheet" href ="StyleSheet2.css" />
     <style type="text/css">
        .auto-style1 {
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            font-size: 16px;
            color: #fff;
            cursor: pointer;
            border-radius: 20px;
            transition: .3s ease-in-out;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-bottom: 20px;
            background-color: rgb(255,9,9);
            margin-left: 44px;
            background-image:url("images/adminlogin.jpg");
        }
    </style>

    </head>
<body>

    <div class="loginbox" >
        <img src="images/user avatar.png" class="user"/><form runat="server" >

            &nbsp;<h2>ADMIN LOGIN</h2>

            <asp:Label Text ="Username" CssClass ="lbluser" runat="server"/>
                <asp:Textbox runat="server" CssClass ="txtuser" placeholder="Enter Username" ID="TextBox1" />
                    <asp:Label Text ="Password" CssClass ="lblpass" runat="server"/>
                        <asp:Textbox runat="server" CssClass ="txtpsw" placeholder="***********" ID="TextBox2" TextMode="Password" />
                            <asp:Button Text="login" CssClass="btnSubmit" runat="server" OnClick="Unnamed3_Click" />
                          
                                <asp:LinkButton Text="Forget password?" CssClass ="btnforget" runat="server" />
                                                                               
                                       
        </form>
    </div>
    <p>
        -</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </body>
</html>


