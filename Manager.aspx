<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="webapp.Manager" %>--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="webapp.Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Manager
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .div {
            text-align:center;
            padding:50px;
            margin:auto;
            margin-left:100px;
            background-color:aliceblue;
        }
      

         .auto-style1 {
            margin: auto;
            margin-top:50px;
            margin-bottom:50px;
            text-align:center;
         }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
  
    <asp:SqlDataSource ID="RegData" runat="server" ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" SelectCommand="SELECT * FROM [UserData]"></asp:SqlDataSource>
        <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="RegData" Height="286px" Width="1255px" BackColor="White" BorderColor="white" BorderStyle="Double" BorderWidth="3px" CssClass="auto-style1" GridLines="Horizontal">
            <Columns >
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
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
            </div>
</asp:Content>


<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .div {
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="RegData" runat="server" ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" SelectCommand="SELECT * FROM [UserData]"></asp:SqlDataSource>
        <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="RegData" ForeColor="Black" Height="286px" Width="1069px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <Columns >
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
            </div>
    </form>
</body>
</html>--%>
