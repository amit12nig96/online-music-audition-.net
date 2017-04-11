<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="WebApplication3.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: left;
            color: #660033;
        }
        .auto-style5 {
            margin-left: 199px;
        }
        .auto-style6 {
            background-color: #009999;
        }
        .auto-style7 {
            margin-left: 191px;
            margin-top: 0px;
        }
        .auto-style9 {
            font-weight: 700;
            margin-left: 126px;
            background-color: #CCCCFF;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style12 {
            font-weight: 700;
            background-color: #CCCCFF;
        }
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            font-weight: 700;
            color: #993333;
            font-size: large;
        }
        .auto-style15 {
            font-size: large;
            color: #0000FF;
        }
        .auto-style18 {
            text-align: left;
        }
        .auto-style16 {
            font-size: small;
        }
        .auto-style19 {
            font-size: large;
        }
    </style>
</head>
<body class="auto-style6">
    
    <form id="form1" runat="server">
        <div class="auto-style2">
    <div style="font-family:Arial; text-align: center;" class="auto-style10">
    
        <asp:Image ID="Image2" runat="server" CssClass="auto-style17" Height="104px" ImageAlign="AbsBottom" ImageUrl="~/logo.png" Width="105px" />
&nbsp; <span class="auto-style14"><strong class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shri Mata Vaishno Devi University<asp:Button ID="Button2" runat="server" CausesValidation="False" CssClass="auto-style9" Height="28px" OnClick="Button2_Click" Text="Log Out" Width="76px" BackColor="#CCCCFF" BorderColor="Black" BorderStyle="Solid" />
            &nbsp;
            <asp:Label ID="Label2" runat="server" CssClass="auto-style14" Text="Welcome..."></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" CssClass="auto-style16" Text="Approved Under Section 2(f) and 12(B) of UGC act of 1956"></asp:Label>
&nbsp;&nbsp;&nbsp;<br />
&nbsp;</strong></span><br />
    
        <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-style: italic; color: #660033; font-size: xx-large; background-color: #009999" Text="welcome to upload and download file" ForeColor="Red"></asp:Label>
        <br />
        <strong class="auto-style19">&nbsp;(For Dance and Music audition)</strong><br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    
    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if you see users list click here--&gt;<asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style15" NavigateUrl="~/userslist.aspx">Userlist</asp:HyperLink>
            <br />
        <asp:FileUpload ID="FileUpload1" runat="server" BackColor="White" BorderColor="Black" CssClass="auto-style5" Height="28px" BorderStyle="Solid" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BorderColor="Black" CssClass="auto-style12" Height="30px" OnClick="Button1_Click1" Text="Upload" Width="91px" BorderStyle="Solid" />
        <p>
            &nbsp;</p>
          
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" Width="704px" CellSpacing="2" OnRowCommand="GridView1_RowCommand" CssClass="auto-style7">
            <Columns>
                <asp:TemplateField HeaderText="File">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("file") %>' CommandName="Download" Text='<%# Eval("file") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Size" HeaderText="Size in bytes" />
                <asp:BoundField DataField="Type" HeaderText="File Type" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
            
            &nbsp;&nbsp;
            
            <br />
            <br />
            <div  style="font-family:Times New Roman, Times, serif; text-align: center;">
                <marquee direction="up">Shri Mata Vaishno Devi University<br />
                                        Shri Mata Vaishno Devi University<br />
                                        Shri Mata Vaishno Devi University<br />
                                        Shri Mata Vaishno Devi University<br />
                                        Shri Mata Vaishno Devi University<br />
                                        Shri Mata Vaishno Devi University<br />
                                        Shri Mata Vaishno Devi University<br /></marquee>
            </div>
              <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" CssClass="auto-style13" Height="198px" ImageUrl="~/headphone.png" Width="203px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" CssClass="auto-style13" Height="198px" ImageUrl="~/dance final.png" Width="203px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" CssClass="auto-style13" Height="198px" ImageUrl="~/headphone.png" Width="203px" />
            <br />
            <br />
            <br />
            
        </div>
    </form>
</body>
</html>
