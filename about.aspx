<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="webapp.about" %>--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Layout1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="webapp.about"%>




<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Logged User
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            font-size: xx-large;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
      <div class="auto-style1">
            <h1>
                <asp:Label ID="Label1_welcome" runat="server" CssClass="auto-style2" Text="Welcome ......"></asp:Label>
            </h1>
            <h1>&nbsp;</h1>
            <h1><strong>
                <asp:Button ID="Logout_Button" runat="server" CssClass="auto-style3" Height="64px" OnClick="Logout_Button_Click" Text="Logout" Width="191px" />
                </strong></h1>
            <h2>&nbsp;</h2>
        </div>
</asp:Content>



<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            font-size: xx-large;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1>
                <asp:Label ID="Label1_welcome" runat="server" CssClass="auto-style2" Text="Welcome ......"></asp:Label>
            </h1>
            <h1>&nbsp;</h1>
            <h1><strong>
                <asp:Button ID="Logout_Button" runat="server" CssClass="auto-style3" Height="64px" OnClick="Logout_Button_Click" Text="Logout" Width="191px" />
                </strong></h1>
            <h2>&nbsp;</h2>
        </div>
    </form>
</body>
</html>--%>
