<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="SQL_Web_test02.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        管理者模式!<br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <p>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customer] ([CustomerId], [FirstName], [LastName], [Company], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email], [SupportRepId]) VALUES (@CustomerId, @FirstName, @LastName, @Company, @Address, @City, @State, @Country, @PostalCode, @Phone, @Fax, @Email, @SupportRepId)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [FirstName] = @FirstName, [LastName] = @LastName, [Company] = @Company, [Address] = @Address, [City] = @City, [State] = @State, [Country] = @Country, [PostalCode] = @PostalCode, [Phone] = @Phone, [Fax] = @Fax, [Email] = @Email, [SupportRepId] = @SupportRepId WHERE [CustomerId] = @CustomerId">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Company" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="PostalCode" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Fax" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="SupportRepId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Company" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="PostalCode" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Fax" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="SupportRepId" Type="Int32" />
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:FormView ID="FormView2" runat="server" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="CustomerId" DataSourceID="SqlDataSource4" GridLines="Both" Width="397px">
                <EditItemTemplate>
                    CustomerId:
                    <asp:Label ID="CustomerIdLabel1" runat="server" Text='<%# Eval("CustomerId") %>' />
                    <br />
                    FirstName:
                    <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                    <br />
                    LastName:
                    <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                    <br />
                    Company:
                    <asp:TextBox ID="CompanyTextBox" runat="server" Text='<%# Bind("Company") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    State:
                    <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    Country:
                    <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    PostalCode:
                    <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
                    <br />
                    Phone:
                    <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                    <br />
                    Fax:
                    <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    SupportRepId:
                    <asp:TextBox ID="SupportRepIdTextBox" runat="server" Text='<%# Bind("SupportRepId") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    CustomerId:
                    <asp:TextBox ID="CustomerIdTextBox" runat="server" Text='<%# Bind("CustomerId") %>' />
                    <br />
                    FirstName:
                    <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                    <br />
                    LastName:
                    <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                    <br />
                    Company:
                    <asp:TextBox ID="CompanyTextBox" runat="server" Text='<%# Bind("Company") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    State:
                    <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    Country:
                    <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    PostalCode:
                    <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
                    <br />
                    Phone:
                    <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                    <br />
                    Fax:
                    <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    SupportRepId:
                    <asp:TextBox ID="SupportRepIdTextBox" runat="server" Text='<%# Bind("SupportRepId") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    CustomerId:
                    <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
                    <br />
                    FirstName:
                    <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                    <br />
                    LastName:
                    <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                    <br />
                    Company:
                    <asp:Label ID="CompanyLabel" runat="server" Text='<%# Bind("Company") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    City:
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    State:
                    <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    Country:
                    <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    PostalCode:
                    <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Bind("PostalCode") %>' />
                    <br />
                    Phone:
                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                    <br />
                    Fax:
                    <asp:Label ID="FaxLabel" runat="server" Text='<%# Bind("Fax") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    SupportRepId:
                    <asp:Label ID="SupportRepIdLabel" runat="server" Text='<%# Bind("SupportRepId") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
                </ItemTemplate>
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:FormView>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmployeeId] = @EmployeeId" InsertCommand="INSERT INTO [Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (@EmployeeId, @LastName, @FirstName, @Title, @ReportsTo, @BirthDate, @HireDate, @Address, @City, @State, @Country, @PostalCode, @Phone, @Fax, @Email)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [LastName] = @LastName, [FirstName] = @FirstName, [Title] = @Title, [ReportsTo] = @ReportsTo, [BirthDate] = @BirthDate, [HireDate] = @HireDate, [Address] = @Address, [City] = @City, [State] = @State, [Country] = @Country, [PostalCode] = @PostalCode, [Phone] = @Phone, [Fax] = @Fax, [Email] = @Email WHERE [EmployeeId] = @EmployeeId">
            <DeleteParameters>
                <asp:Parameter Name="EmployeeId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmployeeId" Type="Int32" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="ReportsTo" Type="Int32" />
                <asp:Parameter Name="BirthDate" Type="DateTime" />
                <asp:Parameter Name="HireDate" Type="DateTime" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Fax" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="ReportsTo" Type="Int32" />
                <asp:Parameter Name="BirthDate" Type="DateTime" />
                <asp:Parameter Name="HireDate" Type="DateTime" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Fax" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="EmployeeId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="EmployeeId" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" Width="399px">
            <EditItemTemplate>
                EmployeeId:
                <asp:Label ID="EmployeeIdLabel1" runat="server" Text='<%# Eval("EmployeeId") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                ReportsTo:
                <asp:TextBox ID="ReportsToTextBox" runat="server" Text='<%# Bind("ReportsTo") %>' />
                <br />
                BirthDate:
                <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
                <br />
                HireDate:
                <asp:TextBox ID="HireDateTextBox" runat="server" Text='<%# Bind("HireDate") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                <br />
                Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                <br />
                PostalCode:
                <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
                <br />
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                Fax:
                <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                EmployeeId:
                <asp:TextBox ID="EmployeeIdTextBox" runat="server" Text='<%# Bind("EmployeeId") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                ReportsTo:
                <asp:TextBox ID="ReportsToTextBox" runat="server" Text='<%# Bind("ReportsTo") %>' />
                <br />
                BirthDate:
                <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
                <br />
                HireDate:
                <asp:TextBox ID="HireDateTextBox" runat="server" Text='<%# Bind("HireDate") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                <br />
                Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                <br />
                PostalCode:
                <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
                <br />
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                Fax:
                <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                EmployeeId:
                <asp:Label ID="EmployeeIdLabel" runat="server" Text='<%# Eval("EmployeeId") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                ReportsTo:
                <asp:Label ID="ReportsToLabel" runat="server" Text='<%# Bind("ReportsTo") %>' />
                <br />
                BirthDate:
                <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Bind("BirthDate") %>' />
                <br />
                HireDate:
                <asp:Label ID="HireDateLabel" runat="server" Text='<%# Bind("HireDate") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                <br />
                Country:
                <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
                <br />
                PostalCode:
                <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Bind("PostalCode") %>' />
                <br />
                Phone:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                Fax:
                <asp:Label ID="FaxLabel" runat="server" Text='<%# Bind("Fax") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnectionString %>" DeleteCommand="DELETE FROM [Album] WHERE [AlbumId] = @AlbumId" InsertCommand="INSERT INTO [Album] ([AlbumId], [Title], [ArtistId]) VALUES (@AlbumId, @Title, @ArtistId)" SelectCommand="SELECT * FROM [Album]" UpdateCommand="UPDATE [Album] SET [Title] = @Title, [ArtistId] = @ArtistId WHERE [AlbumId] = @AlbumId">
            <DeleteParameters>
                <asp:Parameter Name="AlbumId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AlbumId" Type="Int32" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="ArtistId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="ArtistId" Type="Int32" />
                <asp:Parameter Name="AlbumId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView3" runat="server" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="AlbumId" DataSourceID="SqlDataSource5" GridLines="Both" Width="399px">
            <EditItemTemplate>
                AlbumId:
                <asp:Label ID="AlbumIdLabel1" runat="server" Text='<%# Eval("AlbumId") %>' />
                <br />
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                ArtistId:
                <asp:TextBox ID="ArtistIdTextBox" runat="server" Text='<%# Bind("ArtistId") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                AlbumId:
                <asp:TextBox ID="AlbumIdTextBox" runat="server" Text='<%# Bind("AlbumId") %>' />
                <br />
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                ArtistId:
                <asp:TextBox ID="ArtistIdTextBox" runat="server" Text='<%# Bind("ArtistId") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                AlbumId:
                <asp:Label ID="AlbumIdLabel" runat="server" Text='<%# Eval("AlbumId") %>' />
                <br />
                Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                ArtistId:
                <asp:Label ID="ArtistIdLabel" runat="server" Text='<%# Bind("ArtistId") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnectionString %>" SelectCommand="proc_customer" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="CustomerId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnectionString %>" SelectCommand="SELECT [CustomerId] FROM [Customer]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="CustomerId" DataValueField="CustomerId">
        </asp:DropDownList>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="CustomerId" DataSourceID="SqlDataSource2" Width="431px">
            <Columns>
                <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" ReadOnly="True" SortExpression="CustomerId" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登出" />

        </form>
    </body>
    </html>
