﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminnumber.aspx.cs" Inherits="WebApplication3.adminnumber" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 125px;
        }
        #form1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            font-weight: 700;
            font-size: large;
            color: #CC0000;
            background-color: #CCCCFF;
        }
        .auto-style4 {
            font-weight: 700;
            font-size: x-large;
            color: #CC66FF;
        }
        .auto-style5 {
            font-size: x-large;
            font-weight: 700;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSourceadmin" runat="server" ConnectionString="<%$ ConnectionStrings:AdminConnectionString %>" SelectCommand="SELECT * FROM [AdminNO]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Welcome to admin list"></asp:Label>
        <strong><span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="Button1" runat="server" BorderColor="#CC0000" BorderStyle="Solid" CssClass="auto-style3" OnClick="Button1_Click" Text="Log Out" />
&nbsp;</strong><asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Welcome..."></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" CssClass="auto-style1" DataKeyNames="Id" DataSourceID="SqlDataSourceadmin" GridLines="Horizontal" Width="723px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                <asp:BoundField DataField="AdminName" HeaderText="AdminName" SortExpression="AdminName" />
                <asp:BoundField DataField="AdminPass" HeaderText="AdminPass" SortExpression="AdminPass" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
    </form>
</body>
</html>
