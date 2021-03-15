<%--<%@  Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="webapp.registration" %>--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Layout2.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="webapp.registration" %>




<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Registration Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .regform{
            margin :auto;
            margin-top : 10px;
            width : 76%;
            border-color :black;
            border-width :5px;
            background-color :ghostwhite;
            padding:20px;
        }
        .auto-style1 {
            
                width: 100%;
        }
        #Text1 {
            width: 317px;
        }
        #Text2 {
            width: 317px;
        }
        #Text3 {
            width: 317px;
        }
        #Text4 {
            width: 317px;
        }
        #Text5 {
            width: 317px;
        }
        #Text6 {
            width: 317px;
        }
        .auto-style5 {
            height: 25px;
            width: 164px;
        }
               
        .auto-style10 {
            width: 269px;
            text-align: right;
            height: 25px;
        }
        .auto-style11 {
            width: 395px;
            height: 25px;
            text-align: left;
        }
        .heading{
            text-align: center;
            margin-top: 20px;
            background-color :ghostwhite;
            padding-bottom : 40px;
            margin-left :40px;
            margin-right:40px;
            padding-top : 20px;
            margin-bottom:20px;
            border-radius:3rem;
            
        }
        .auto-style14 {
            width: 269px;
            text-align: right;
            height: 32px;
        }
        .auto-style15 {
            height: 32px;
            width: 164px;
        }
        .auto-style16 {
            width: 395px;
            height: 32px;
            text-align: left;
        }
        .auto-style17 {
            width: 269px;
            text-align: right;
            height: 24px;
        }
        .auto-style18 {
            height: 24px;
            width: 164px;
        }
        .auto-style19 {
            width: 395px;
            height: 24px;
            text-align: left;
        }
        .auto-style20 {
            margin-top : 10px;
            width: 84%;
            border-color : black;
            border-width : 5px;
            background-color : ghostwhite;
            padding: 20px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 20px;
            border-radius:3rem;
        }
        .auto-style21 {
            height: 100px;
            font-family:serif;
            letter-spacing:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class ="heading"> 
            <h1 class="auto-style21">Registration Page </h1>
           <div class ="auto-style20">
            <table class="auto-style1" border="0">
        
                <tr>
                    <td class="auto-style17">Username :</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="username" runat="server"  Width="314px"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                            runat="server" ControlToValidate="username" 
                            Display="Dynamic" ErrorMessage="Enter username" ForeColor="#FF3300" 
                            ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Email :</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="email" runat="server" TextMode="Email" Width="314px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter email id" ControlToValidate="email" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter Valid Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Password :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="pswd" runat="server" TextMode="Password" Width="314px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Password" ControlToValidate="pswd" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Confirm Password :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="con_pswd" runat="server" TextMode="Password" Width="314px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Your Password Again " ControlToValidate="con_pswd" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pswd" ControlToValidate="con_pswd" ErrorMessage="Enter Similar Password"></asp:CompareValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Country :</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="country" runat="server" Height="25px" Width="318px">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="Enter Country Name" ControlToValidate="country" ForeColor="#FF3300" 
                            InitialValue="Select Country" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="101px" />
               <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" Width="105px" />
            </div>
        </div>
</asp:Content>



<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My First Registration Page</title>
    <style type="text/css">

        .regform{
            margin :auto;
            margin-top : 10px;
            width : 76%;
            border-color :black;
            border-width :5px;
            background-color :skyblue;
            padding:20px;
        }
        .auto-style1 {
            
                width: 100%;
        }
        #Text1 {
            width: 317px;
        }
        #Text2 {
            width: 317px;
        }
        #Text3 {
            width: 317px;
        }
        #Text4 {
            width: 317px;
        }
        #Text5 {
            width: 317px;
        }
        #Text6 {
            width: 317px;
        }
        .auto-style5 {
            height: 25px;
            width: 164px;
        }
               
        .auto-style10 {
            width: 269px;
            text-align: right;
            height: 25px;
        }
        .auto-style11 {
            width: 395px;
            height: 25px;
            text-align: left;
        }
        .heading{
            text-align: center;
            margin-top: 100px;
            background-color : lightblue;
            padding-bottom : 40px;
            margin-left :40px;
            margin-right:40px;
            padding-top : 5px;
        }
        .auto-style14 {
            width: 269px;
            text-align: right;
            height: 32px;
        }
        .auto-style15 {
            height: 32px;
            width: 164px;
        }
        .auto-style16 {
            width: 395px;
            height: 32px;
            text-align: left;
        }
        .auto-style17 {
            width: 269px;
            text-align: right;
            height: 24px;
        }
        .auto-style18 {
            height: 24px;
            width: 164px;
        }
        .auto-style19 {
            width: 395px;
            height: 24px;
            text-align: left;
        }
        .auto-style20 {
            margin-top : 10px;
            width: 84%;
            border-color : black;
            border-width : 5px;
            background-color : skyblue;
            padding: 20px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
        }
        .auto-style21 {
            height: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="heading"> 
            <h1 class="auto-style21">Registration Page </h1>
           <div class ="auto-style20">
            <table class="auto-style1" border="0">
        
                <tr>
                    <td class="auto-style17">Username :</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="username" runat="server" Width="314px"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                            runat="server" ControlToValidate="username" 
                            Display="Dynamic" ErrorMessage="Enter username" ForeColor="#FF3300" 
                            ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Email :</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="email" runat="server" TextMode="Email" Width="314px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter email id" ControlToValidate="email" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter Valid Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Password :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="pswd" runat="server" TextMode="Password" Width="314px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Password" ControlToValidate="pswd" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Confirm Password :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="con_pswd" runat="server" TextMode="Password" Width="314px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Your Password Again " ControlToValidate="con_pswd" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pswd" ControlToValidate="con_pswd" ErrorMessage="Enter Similar Password"></asp:CompareValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Country :</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="country" runat="server" Height="25px" Width="318px">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="Enter Country Name" ControlToValidate="country" ForeColor="#FF3300" 
                            InitialValue="Select Country" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="101px" />
               <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" Width="105px" />
            </div>
        </div>
    </form>
   
</body>
</html>--%>
