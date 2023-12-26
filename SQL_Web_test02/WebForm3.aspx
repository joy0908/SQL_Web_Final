<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="SQL_Web_test02.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Page3</title>
    <style>
        header {
            text-align: center;
            padding: 20px;
            background-color: #ffffff;
        }
        .center-gridview {
            margin: 0 auto; /* 將左右邊距設為auto，使其在水平方向上居中 */
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
                <li><a href="#">商品資訊</a></li>
                <li><a href="WebForm6.aspx">購物車</a></li>
                <li><a href="WebForm4.aspx">留言討論</a></li>   
                <li><a href="WebForm8.aspx">登入</a></li>
            </ul>
        </li>
    </ul>
        <header>
            <h1>商品資訊</h1>
            <hr />
        </header>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnectionString %>" SelectCommand="SELECT * FROM [View_Detail_Album]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" CssClass="center-gridview" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="AlbumId" DataSourceID="SqlDataSource1" Width="779px" Height="393px">
            <Columns>
                <asp:BoundField DataField="AlbumId" HeaderText="AlbumId" ReadOnly="True" SortExpression="AlbumId" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="ArtistId" HeaderText="ArtistId" SortExpression="ArtistId" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
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
        <br />
        <br />
        
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnectionString %>" DeleteCommand="DELETE FROM [Cart] WHERE [AlbumName] = @AlbumName" InsertCommand="INSERT INTO [Cart] ([AlbumName], [Quantity]) VALUES (@AlbumName, @Quantity)" SelectCommand="SELECT * FROM [Cart]" UpdateCommand="UPDATE [Cart] SET [Quantity] = @Quantity WHERE [AlbumName] = @AlbumName">
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
        <asp:DetailsView ID="DetailsView1" runat="server" CssClass="center-gridview" AllowPaging="True" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="AlbumName" DataSourceID="SqlDataSource3" Height="122px" Width="438px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" ReadOnly="True" SortExpression="AlbumName" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <br />
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-M62BLII;Initial Catalog=Chinook;Integrated Security=True;" SelectCommand="SELECT distinct Album.Title AS AlbumName, Artist.Name AS ArtistName, Genre.Name AS Type FROM Album INNER JOIN Artist ON Album.ArtistId = Artist.ArtistId INNER JOIN Track ON Album.AlbumId = Track.AlbumId INNER JOIN Genre ON Track.GenreId = Genre.GenreId WHERE (Album.Title=@Title)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Title" PropertyName="Text" DefaultValue="For Those About To Rock We Salute You" />
            </SelectParameters>
        </asp:SqlDataSource>
        <h4>請輸入要查詢的專輯:</h4>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" style="margin-right: 0px" Width="435px">
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
        
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnectionString %>" SelectCommand="SELECT Title FROM Album WHERE (ArtistId = (SELECT ArtistId FROM Artist WHERE (Name = @Name)))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="AC/DC" Name="Name" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnectionString %>" SelectCommand="SELECT [Name] FROM [Artist]"></asp:SqlDataSource>
        <br />
        <h4>請選取歌手:</h4>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
        <br />
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource4" Width="427px">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
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
        
    </form>
</body>
</html>
