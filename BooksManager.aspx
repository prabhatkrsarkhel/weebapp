<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BooksManager.aspx.cs" Inherits="webapp.BooksManager" %>--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Layout1.Master" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="webapp.Manager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Books Manager
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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookData %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" CssClass="auto-style1" Height="252px" Width="1148px">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
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
   
    </asp:Content>


