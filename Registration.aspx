<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication3.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 528px;
            background-color: #009999;
        }
        .auto-style3 {
            height: 216px;
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            font-weight: 700;
            font-size: x-large;
        }
        .auto-style6 {
            font-size: large;
            background-color: #CCCCFF;
            margin-left: 0px;
        }
        .auto-style7 {
            width: 100%;
            height: 208px;
        }
        .auto-style8 {
            width: 467px;
        }
        .auto-style9 {
            width: 467px;
            text-align: right;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style10 {
            width: 467px;
            text-align: right;
            font-weight: bold;
            font-size: x-large;
            height: 24px;
        }
        .auto-style11 {
            height: 24px;
            text-align: left;
            width: 378px;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {}
        .auto-style14 {}
        .auto-style15 {
            height: 24px;
            text-align: left;
            width: 196px;
        }
        .auto-style16 {
            text-align: left;
            width: 196px;
        }
        .auto-style17 {
            width: 196px;
            text-align: right;
        }
        .auto-style18 {
            width: 467px;
            text-align: right;
            font-weight: bold;
            font-size: x-large;
            height: 30px;
        }
        .auto-style19 {
            text-align: left;
            width: 196px;
            height: 30px;
        }
        .auto-style20 {
            text-align: left;
            height: 30px;
            width: 378px;
        }
        .auto-style21 {
            color: #CC0000;
            font-size: medium;
        }
        .auto-style22 {
            width: 467px;
            text-align: right;
            font-weight: bold;
            font-size: x-large;
            height: 29px;
        }
        .auto-style23 {
            text-align: left;
            width: 196px;
            height: 29px;
        }
        .auto-style24 {
            text-align: left;
            height: 29px;
            width: 378px;
        }
        .auto-style28 {
            text-align: left;
            width: 378px;
        }
        .auto-style29 {
            width: 378px;
        }
        .auto-style34 {
            color: #CC0000;
        }
        .auto-style35 {
            font-size: medium;
            color: #CC0000;
        }
        #Reset1 {
            width: 89px;
            height: 39px;
            color: #000000;
            font-size: large;
            background-color: #CCCCFF;
        }
        .auto-style36 {}
        .auto-style38 {}
        .auto-style39 {
            font-weight: 700;
            background-color: #CCCCFF;
        }
        .auto-style40 {
            font-size: medium;
        }
    </style>
</head>
<body class="auto-style2">
    <form id="form1" runat="server">
        <div class="auto-style4">
            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style40" NavigateUrl="~/adminanduser.aspx">Back</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" CssClass="auto-style36" Height="111px" ImageUrl="~/logo.png" Width="137px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" CssClass="auto-style38" Height="72px" ImageUrl="~/register-here-png-hi.png" Width="238px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </div>
    <div class="auto-style3">
    
        <table class="auto-style7">
            <tr>
                <td class="auto-style10">User Name :</td>
                <td class="auto-style15">
                    <asp:TextBox ID="UN" runat="server" CssClass="auto-style12" Width="183px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UN" CssClass="auto-style21" ErrorMessage="Please inter User Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Entry No. :</td>
                <td class="auto-style16">
                    <asp:TextBox ID="EN" runat="server" CssClass="auto-style13" Width="183px"></asp:TextBox>
                </td>
                <td class="auto-style28">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EN" CssClass="auto-style21" ErrorMessage="Enter Entry Number"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">E-mail :</td>
                <td class="auto-style16">
                    <asp:TextBox ID="Email" runat="server" CssClass="auto-style14" Width="183px"></asp:TextBox>
                </td>
                <td class="auto-style28">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" CssClass="auto-style21" ErrorMessage="Please Enter Email Id"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" CssClass="auto-style35" ErrorMessage="Please Enter Valid Email-ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">Audition Type :</td>
                <td class="auto-style23">
                    <asp:DropDownList ID="audition" runat="server" Width="186px">
                        <asp:ListItem>Select Type</asp:ListItem>
                        <asp:ListItem>Dance</asp:ListItem>
                        <asp:ListItem>Music</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style24">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="audition" CssClass="auto-style21" ErrorMessage="Please Selet Audition Type" InitialValue="Select Type"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Password :</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="183px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPass" CssClass="auto-style21" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp; Confirm Password :</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" ValidateRequestMode="Disabled" Width="183px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxRPass" CssClass="auto-style21" ErrorMessage="Enter the Re-Password"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" CssClass="auto-style34" ErrorMessage="Both Password Must be Same"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" OnClick="Button1_Click" Text="Register" Width="106px" Height="38px" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Reset1" type="reset" value="Reset" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        if you already register then click login--&gt;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CssClass="auto-style39" OnClick="Button2_Click" Text="Login" />
        &nbsp;&nbsp;&nbsp;
            
    </div>
    </form>
</body>
</html>
