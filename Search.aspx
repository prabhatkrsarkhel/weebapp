<%@ Page Title="" Language="C#" MasterPageFile="~/Layout1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="webapp.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Search Book
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Allura&display=swap" rel="stylesheet">
    <style>
        .prastyle{
            height:350px;
            background-color:black;
            border-radius:2rem;
            width:50%;
            margin-top:30px;
            margin-bottom:30px;
            margin-left:auto;
            margin-right:auto;
            text-align:center;
            color:white;
        }
        
        .search-bar{
            width:80%;
            padding:10px;
            margin-top:20px;
            margin-bottom:20px;
            margin-left:auto;
            margin-right:auto;
            border-radius:3rem;

        }
        
    
        .auto-style1 {
            height: 20px;
            text-align:center;
            padding-top:40px;
            padding-bottom:40px;
            font-family: 'Allura', cursive;
            font-size:35px;
            letter-spacing:5px;
        }
        .search-button {
            border-radius:2rem;
            color:white;
            background-color:ghostwhite;

        }
    
        .auto-style2 {
            width: 100%;
            margin-left: auto;
            margin-right: auto;
            padding: 0px;
        }
        .grid-style{
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left: auto;
            margin-right: auto;
            width:50%;
            text-align:center;
            
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
     <div class="auto-style2">
          <asp:Label ID="Label1" runat="server"  Text="" Width="100%"></asp:Label>
         <div class="prastyle">
          <div class="container-fluid">  
             <h2 class="auto-style1">Search Your Favourite Book Here <i class="fa fa-search" aria-hidden="true"></i></h2>
              <div class="search-bar">
             <asp:TextBox ID="textboxsearch" CssClass="search-bar" runat="server"></asp:TextBox>
           </div> 
          </div>  
          
           <div class="prastyle01">
                 <asp:Button ID="button" class="btn btn-outline-success btn-lg " runat="server" Text="Search" Width="138px" CssStyle="search-button" OnClick="button_Click" />  
            </div>
             
           </div>
       </div>
       <div>
            <asp:GridView ID="GridView1" CssClass="grid-style" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
       </div>
    
</asp:Content>
