<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="SQL_Web_test02.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        #formWrapper {
            width: 300px;
            margin: 100px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        #formWrapper div {
            margin-bottom: 15px;
        }

        #formWrapper label {
            display: block;
            margin-bottom: 5px;
        }

        #formWrapper input[type="text"],
        #formWrapper input[type="password"],
        #formWrapper input[type="submit"] {
            width: 100%;
            padding: 8px;
            border-radius: 3px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        #formWrapper input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        #formWrapper input[type="submit"]:hover {
            background-color: #45a049;
        }

        #formWrapper .error {
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="formWrapper">
            <div>
                <label for="TextBox1">帳號</label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="TextBox2">密碼</label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登入" />
            </div>
            <asp:Label ID="Label1" runat="server" CssClass="error"></asp:Label>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnectionString %>" SelectCommand="SELECT * FROM [Member]"></asp:SqlDataSource>
    </form>
</body>
</html>