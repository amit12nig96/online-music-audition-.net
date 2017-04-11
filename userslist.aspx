<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userslist.aspx.cs" Inherits="WebApplication3.userslist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            margin-left: 362px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            font-weight: 700;
            color: #CC0000;
            font-size: large;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            font-size: medium;
        }
    </style>
</head>
<body class="auto-style2">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSourceRagistration" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [SNO], [ID], [UserName], [AuditionType] FROM [Table]"></asp:SqlDataSource>
        <br />
        <span class="auto-style3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style6" NavigateUrl="~/WebForm.aspx">Back</asp:HyperLink>
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; U</strong></span><strong><span class="auto-style3">sers list&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="Button1" runat="server" BorderStyle="Solid" CssClass="auto-style4" OnClick="Button1_Click" Text="Log Out" />
&nbsp;</strong><asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Welcome..."></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style1" DataSourceID="SqlDataSourceRagistration" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="SNO" HeaderText="SNO" InsertVisible="False" ReadOnly="True" SortExpression="SNO" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="AuditionType" HeaderText="AuditionType" SortExpression="AuditionType" />
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
