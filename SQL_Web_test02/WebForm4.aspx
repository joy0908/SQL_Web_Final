<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="SQL_Web_test02.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Page4</title>
<style>
    header {
            text-align: center;
            padding: 20px;
            background-color: #ffffff;
        }
    .center-gridview {
            margin: 0 auto; /* 將左右邊距設為auto，使其在水平方向上居中 */
        }
    .center-gridview1 {
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
                <li><a href="WebForm3.aspx">商品資訊</a></li>
                <li><a href="WebForm6.aspx">購物車</a></li>
                <li><a href="#">留言討論</a></li>   
                <li><a href="WebForm8.aspx">登入</a></li>
            </ul>
        </li>
    </ul>
        <header>
            <h1>留言討論</h1>
            <hr/>
        </header>
        <div>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnectionString %>" DeleteCommand="DELETE FROM [Response01] WHERE [CustomerName] = @CustomerName" InsertCommand="INSERT INTO [Response01] ([CustomerName], [response]) VALUES (@CustomerName, @response)" SelectCommand="SELECT * FROM [Response01]" UpdateCommand="UPDATE [Response01] SET [response] = @response WHERE [CustomerName] = @CustomerName">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="response" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="response" Type="String" />
                    <asp:Parameter Name="CustomerName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" CssClass="center-gridview" DataSourceID="SqlDataSource4" Height="50px" Width="314px" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" CssClass="center-gridview" DataSourceID="SqlDataSource4" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="645px">
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
    </form>
</body>
</html>
