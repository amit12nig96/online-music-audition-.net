<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminanduser.aspx.cs" Inherits="WebApplication3.adminanduser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #009999;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {}
        .auto-style4 {}
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style14 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style18 {
            text-align: left;
        }
        .auto-style16 {
            font-size: small;
        }
        </style>
</head>
<body class="auto-style1">
    <form id="form1" runat="server">
    <div class="auto-style7">
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Back</asp:HyperLink>
&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" CssClass="auto-style17" Height="104px" ImageAlign="AbsBottom" ImageUrl="~/logo.png" Width="105px" />
&nbsp; <span class="auto-style14"><strong class="auto-style18">&nbsp;&nbsp;&nbsp; Shri Mata Vaishno Devi University&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="Label4" runat="server" CssClass="auto-style16" Text="Approved Under Section 2(f) and 12(B) of UGC act of 1956"></asp:Label>
            </strong></span>
        <br />
        <br />
        <br />
    
    </div>
        <p class="auto-style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style4" Height="108px" ImageUrl="~/login-icon-3058.png" PostBackUrl="~/admin.aspx" Width="142px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style3" Height="108px" ImageUrl="~/user.png" PostBackUrl="~/Registration.aspx" Width="141px" />
        </p>
        <p class="auto-style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style6" OnClick="Button1_Click" Text="Admin" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#CCCCFF" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style5" OnClick="Button2_Click1" Text="Users" Width="69px" />
        </p>
    </form>
</body>
</html>
