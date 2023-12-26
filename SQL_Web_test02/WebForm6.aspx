<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="SQL_Web_test02.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        h1{
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
                ul  {
        margin: 0;
        padding: 0;
        list-style: none;
        }
        ul.dd-menu {
            border: #ccc 1px solid;
            display: inline-block;
            font-family: 'Open Sans', Arial, sans-serif;
            font-size: 13px;
        }

        ul.dd-menu li {
            position: relative;
            white-space: nowrap;
            border-right: #ccc 1px solid;
        }

        ul.dd-menu > li:last-child {
        border-right: none;
        }

        ul.dd-menu > li {
        float: left; /* 只有第一層是靠左對齊*/
        }

        ul.dd-menu a {
        background-color: #fff;
        color: #333;
        display: block;
        padding: 0 30px;
        text-decoration: none;
        line-height: 40px;

        }

        ul.dd-menu a:hover { /* 滑鼠滑入按鈕變色*/
        background-color: #ef5c28;
        color: #fff;
        }

        ul.dd-menu li:hover > a { /* 滑鼠移入次選單上層按鈕保持變色*/
        background-color: #ef5c28;
        color: #fff;
        }

        ul.dd-menu ul {
            border: #ccc 1px solid;
            position: absolute;
            z-index: 99;
            left: -1px;
            top: 100%;
            min-width: 180px;
        }

        ul.dd-menu ul li {
            border-bottom: #ccc 1px solid;
        }

        ul.dd-menu ul li:last-child {
            border-bottom: none;
        }

        ul.dd-menu ul ul {
            z-index: 999;
            top: 10px;
            left: 90%;
        }

            ul.dd-menu ul {
                display: none;
            }
            ul.dd-menu li:hover > ul {
                display: block;            
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <ul class ="dd-menu">
        <li><a href="#">MENU</a>
            <ul>
                <li><a href="WebForm1.aspx">首頁</a></li>
                <li><a href="WebForm2.aspx">關於我們</a></li>
                <li><a href="WebForm3.aspx">商品資訊</a></li>
                <li><a href="#">購物車</a></li>
                <li><a href="WebForm4.aspx">留言討論</a></li>   
                <li><a href="WebForm8.aspx">登入</a></li>
            </ul>
        </li>
    </ul>
        <h1>音樂專輯購物車</h1>
        <div>
            <br />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnectionString %>" DeleteCommand="DELETE FROM [Cart] WHERE [AlbumName] = @AlbumName" InsertCommand="INSERT INTO [Cart] ([AlbumName], [Quantity]) VALUES (@AlbumName, @Quantity)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Cart]" UpdateCommand="UPDATE [Cart] SET [Quantity] = @Quantity WHERE [AlbumName] = @AlbumName">
            <DeleteParameters>
                <asp:Parameter Name="AlbumName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AlbumName" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="AlbumName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="AlbumName" DataSourceID="SqlDataSource1" Height="50px" Width="257px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" ReadOnly="True" SortExpression="AlbumName" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="AlbumName" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" ReadOnly="True" SortExpression="AlbumName" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:CommandField ShowDeleteButton="True" />
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
        <br />
        <asp:Button ID="Button1" runat="server" Text="結帳" OnClick="Button1_Click" Height="58px" Width="162px" />
        <br />
    </form>
</body>
</html>
