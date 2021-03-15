<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webapp.Login" %>--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Layout2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webapp.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Login Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <style>
         table{
             border-collapse: collapse;
              border-spacing: 0;
              width: 100%;
             
         }
         h2{
                 margin: auto;
                 text-align: center;
                 padding-top: 10px;
                 font-size:4rem;
                 letter-spacing:10px;
                 
        }
        td{
            text-align:center;
            padding:10px;
        }
         .prastyle1 {
            background-color: white;
            padding: 5px;
            margin-top: 50px;
            margin-left: auto;
            margin-right: auto;
            width: 100%;
            border-top-left-radius: 4rem;
            border-top-right-radius: 4rem;
            font-family: 'Alex Brush';
            font-size: 30px;

         }
        .prastyle2{
               padding: 5px;
                margin-left: auto;
                margin-bottom: 50px;
                margin-right: auto;
                background-color: ghostwhite;
                width: 100%;
                border-radius:4rem;
                overflow-x:auto;

        }
        
        .auto-style1 {
            width: 35%;
            background-color: ghostwhite;
            border-radius:2rem;
            padding: 10px;
            align-content:center;
            margin: auto;
            height: 198px;
        }

        .auto-style2 {
            width: 445px;
            text-align: right;
            height: 65px;
            padding-top:30px;
        }
        .auto-style3 {
            width: 445px;
            text-align: right;
            font-size: x-large;
            padding-top: 30px;
        }
        .auto-style4 {
            font-size: x-large;
        }

        .auto-style5 {
            height: 65px;
            width: 618px;
        }

        .auto-style6 {
            width: 618px;
        }
        .design{
            padding:5px;
        }
        .lable-style{
            text-align:center;
        }
        .button-style{
            margin:auto;
        }
       </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="prastyle1">
            <h2><b>Login Page</b></h2>
        </div>
        <div class ="prastyle2" >
            <table  class="auto-style1" >
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Username" ToolTip="Enter User Name"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Enter valid username"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="username" runat="server" CssClass="form-control input-lg" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Password" ToolTip="Enter valid Password"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="password" runat="server" CssClass="form-control input-lg" Width="300px"  TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                
                <tr class="design">
                    <td colspan="2" align="center">
                        <asp:Button ID="LoginButton" runat="server" Height="47px" OnClick="LoginButton_Click" Text="Login" Width="146px" />
                    </td>
                </tr>
                <tr >
                    <td class="auto-style6" colspan="2" align="center">
                        <h6>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">Register As A New User</asp:HyperLink>
                        </h6>
                    </td>
                </tr>    
            </table> 
           
        </div>
</asp:Content>




<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        h1{
            text-align:center; 
        }
        .prastyle1 {
            background-color: lightblue;
            padding: 10px;
        }
        .prastyle2{
            padding :5px;
            margin:auto;
        }
        
        .auto-style1 {
            width: 96%;
            background-color: ghostwhite;
            padding: 10px;
            align-content:center;
            margin: auto;
            height: 198px;
        }

        .auto-style2 {
            width: 445px;
            text-align: right;
            height: 65px;
        }
        .auto-style3 {
            width: 445px;
            text-align: right;
            font-size: x-large;
        }
        .auto-style4 {
            font-size: x-large;
        }

        .auto-style5 {
            height: 65px;
            width: 618px;
        }

        .auto-style6 {
            width: 618px;
        }

    </style>
</head>
<body style="height: 366px">
    <form id="form1" runat="server">
        <div class="prastyle1">
            <h1>Login Page</h1>
        </div>
        <div class ="prastyle2">
            <table  class="auto-style1" >
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Username" ToolTip="Enter User Name"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Enter valid username"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="username" runat="server" Height="20px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Password" ToolTip="Enter valid Password"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="password" runat="server" Height="20px" Width="300px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="LoginButton" runat="server" Height="33px" OnClick="LoginButton_Click" Text="Login" Width="123px" />
                    </td>
                    <td class="auto-style6">
                        <h3>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">Register As A New User</asp:HyperLink>
                        </h3>
                    </td>
                </tr>
            </table> 
        </div>
    </form>
</body>
</html>--%>
