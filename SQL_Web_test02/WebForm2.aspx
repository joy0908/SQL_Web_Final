<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="SQL_Web_test02.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Page2</title>
    <style>
        header {
            text-align: center;
            padding: 20px;
            background-color: #ffffff;
        }
        .line-text {
            color: #333; 
            font-size: 16px; 
            margin: 30px 0;
            padding: 5px;
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
                <li><a href="WebForm4.aspx">留言討論</a></li>   
                <li><a href="WebForm8.aspx">登入</a></li>
            </ul>
        </li>
    </ul>
        <header>
            <h1>關於我們</h1>
            <hr />
            <div class="line-text">
                <h4>我們的購物體驗設計得簡單易用，讓您輕鬆地瀏覽、搜索和購買您喜歡的音樂產品。您可以通過搜尋功能快速找到特定歌手、專輯或類型的音樂。而且，我們提供安全的支付選項，確保您的交易安全可靠。</h4>
            </div>
            <div class="line-text">
                <h4>無論您是收集音樂作品的收藏家，還是只是想要探索新音樂，我們的音樂購物車都能滿足您的需求。快來探索並將您喜愛的音樂加入購物車，開始您的音樂之旅吧！</h4>
            </div>
        </header>
        
    </form>
</body>
</html>
