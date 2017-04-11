<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="WebApplication3.Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin-left: 282px;
        }
        .auto-style3 {
            font-size: xx-large;
            font-weight: 700;
            color: #009999;
            background-color: #FFFFFF;
        }
        .auto-style4 {
            font-weight: 700;
            font-size: large;
            color: #CC0000;
            background-color: #CCCCFF;
        }
        .auto-style5 {
            font-weight: 700;
            color: #000000;
            background-color: #CCCCFF;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            font-weight: 700;
            font-size: x-large;
        }
    </style>
</head>
<body class="auto-style1">
    <form id="form1" runat="server" submitdisabledcontrols="False">
    <div>
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] set [ID]=@ID, [UserName]=@UserName, [Entryno]=@Entryno, [Email]=@Email, [AuditionType]=@AuditionType, [Password]=@Password where [ID]=@ID" DeleteCommand="DELETE from [Table] Where SNO=@SNO"></asp:SqlDataSource>
        <br /> 
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Welcome to number of  Registered Users"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BorderColor="#CC0000" BorderStyle="Solid" CssClass="auto-style4" Height="39px" OnClick="Button1_Click" Text="Log Out" Width="101px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        <asp:Label ID="Labelname" runat="server" CssClass="auto-style7" Text="Welcome..."></asp:Label>
        <br />
        <br />
        <strong><span class="auto-style6">You can see admin list------&gt; </span></strong>
        <asp:Button ID="Button2" runat="server" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style5" OnClick="Button2_Click" Text="Admin list" Width="96px" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style2" DataSourceID="SqlDataSourceRegistration" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="742px" AutoGenerateEditButton="True">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="SNO" HeaderText="SNO" InsertVisible="False" ReadOnly="True" SortExpression="SNO" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Entryno" HeaderText="Entryno" SortExpression="Entryno" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="AuditionType" HeaderText="AuditionType" SortExpression="AuditionType" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </form>
</body>
</html>

