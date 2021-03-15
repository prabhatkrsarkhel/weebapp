<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Curd.aspx.cs" Inherits="webapp.Curd" %>--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Curd.aspx.cs" Inherits="webapp.Curd"%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Curd Operation
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        h1{
            text-align:center;
            font-family:serif;
            letter-spacing:10px;
            padding-bottom:20px;
        }
        table{
            align-content:center;
        }
        .auto-style1 {
                width: 500px;
                height: 150px;
                padding-left: 100px;
                background-color: aliceblue;
                margin: auto;
                padding-bottom: 20px;
                margin-bottom: 50px;
                margin-top: 0px;
        }
        
        .auto-style2 {
            width: 102px;
            text-align:center;
            align-content:center;
        }
        .auto-style3 {
            width: 164px;
            text-align:center;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div>
            <h1>Curd Operation</h1>
          <table class="auto-style1" >
             <tr>
                 <td class="auto-style3"> <asp:Label ID="lblusername" runat="server" Text="Username"></asp:Label></td>
                 <td class="auto-style2"><asp:TextBox ID="username" runat="server" Height="24px" Width="205px"></asp:TextBox></td>
             </tr>
             <tr>
                 <td class="auto-style3"><asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label></td>
                 <td class="auto-style2"> <asp:TextBox ID="email" runat="server" Height="24px" Width="205px"></asp:TextBox></td>
             </tr>
             <tr>
                 <td class="auto-style3"><asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" Width="133px" /></td>
                 <td class="auto-style2"> <asp:Button ID="Delete" runat="server" Text="Delete" Width="134px" OnClick="Delete_Click" /></td>
             </tr>
            </table>
           
        </div>
</asp:Content>


<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Curd operation</title>
    <style>
        h1{
            text-align:center;
        }
        table{
            align-content:center;
        }
        .auto-style1 {
            width: 392px;
            height: 126px;
            padding-left:100px;
            background-color:aliceblue;
            margin:auto;

        }
        
        .auto-style2 {
            width: 102px;
            text-align:center;
            align-content:center;
        }
        .auto-style3 {
            width: 164px;
            text-align:center;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Curd Operation</h1>
          <table class="auto-style1" >
             <tr>
                 <td class="auto-style3"> <asp:Label ID="lblusername" runat="server" Text="username"></asp:Label></td>
                 <td class="auto-style2"><asp:TextBox ID="username" runat="server" Height="24px" Width="205px"></asp:TextBox></td>
             </tr>
             <tr>
                 <td class="auto-style3"><asp:Label ID="lblemail" runat="server" Text="email"></asp:Label></td>
                 <td class="auto-style2"> <asp:TextBox ID="email" runat="server" Height="24px" Width="205px"></asp:TextBox></td>
             </tr>
             <tr>
                 <td class="auto-style3"><asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" /></td>
                 <td class="auto-style2"> <asp:Button ID="Delete" runat="server" Text="Delete" Width="91px" OnClick="Delete_Click" /></td>
             </tr>
            </table>
           
        </div>
    </form>
</body>
</html>--%>
