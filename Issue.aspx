<%@ Page Title="" Language="C#" MasterPageFile="~/Layout1.Master" AutoEventWireup="true" CodeBehind="Issue.aspx.cs" Inherits="webapp.Issue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
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
        .label-style{
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
            background-color: #f2dede;
            border-color: #ebccd1;
            color: #a94442;
            text-align:center;
            width:100%
        }
       
        .auto-style3 {
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid #ebccd1;
            border-radius: 4px;
            background-color: #f2dede;
            color: #a94442;
            text-align: center;
            margin-top:3px;
         
        }
       
       
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
     <div class="auto-style2">
          <asp:Label ID="Label1" runat="server"  Text="" Width="100%"></asp:Label>
         <div class="prastyle">
            
          <div class="container-fluid">  
             <h2 class="auto-style1">Enter your favrouite book Id <i class="fa fa-search" aria-hidden="true"></i></h2>
              <div class="search-bar">
             <asp:TextBox ID="textboxsearch" CssClass="search-bar" runat="server"></asp:TextBox>             
           </div> 
          </div>  
          
           <div class="prastyle01">
                 <asp:Button ID="button" class="btn btn-outline-success btn-lg " runat="server" Text="Issue This Book" Width="200px" CssStyle="search-button" OnClick="button_Click" />  
            </div>
             <asp:GridView ID="GridView2" runat="server" Width="584px"></asp:GridView>
           </div>
       </div>
       
    
</asp:Content>
