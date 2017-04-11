<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication3.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #009999;
        }
        .auto-style2 {}
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-weight: 700;
            font-size: x-large;
            background-color: #33CC33;
            margin-left: 1px;
        }
        #Reset1 {
            width: 97px;
            font-weight: 700;
            font-size: x-large;
            margin-left: 49px;
            background-color: #FF3300;
        }
        .auto-style6 {
            font-weight: 700;
            font-size: x-large;
        }
        .auto-style7 {
            font-weight: 700;
            font-size: x-large;
        }
        .auto-style8 {}
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style10 {
            color: #CC0000;
        }
        .auto-style11 {
            color: #CC0000;
        }
        .auto-style12 {}
    </style>
</head>
<body class="auto-style1">
    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
        <div class="auto-style3">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/adminanduser.aspx">Back</asp:HyperLink>
            <asp:Image ID="Image2" runat="server" CssClass="auto-style12" Height="97px" ImageAlign="Bottom" ImageUrl="~/logo.png" Width="121px" />
&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" Height="103px" ImageUrl="~/admin_login.gif" Width="400px" />
        </div>
        <p class="auto-style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Admin Name:"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBoxAN" runat="server" CssClass="auto-style8" Height="21px" Width="193px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxAN" CssClass="auto-style10" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="Admin Password:"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBoxAP" runat="server" CssClass="auto-style9" Height="21px" TextMode="Password" Width="193px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxAP" CssClass="auto-style11" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style4">
            &nbsp;</p>
        <p class="auto-style4">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text=" Login" Width="92px" BorderColor="#003300" BorderStyle="Solid" />
            <input id="Reset1" type="reset" value="reset" /></p>
    </form>
    <p class="auto-style4">
        &nbsp;</p>
</body>
</html>
