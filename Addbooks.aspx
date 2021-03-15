<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addbooks.aspx.cs" Inherits="webapp.Addbooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 201px;
            text-align: center;
        }
        .auto-style3 {
            width: 246px;
            text-align: center;
        }
        .auto-style4 {
            width: 201px;
            text-align: center;
            height: 29px;
        }
        .auto-style5 {
            width: 246px;
            height: 29px;
            text-align: center;
        }
        .auto-style6 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="BookName"></asp:Label>
                        :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="bookname" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Author"></asp:Label>
                        :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="author" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Publisher"></asp:Label>
                        :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="publisher" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                        :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="quantity" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Button ID="Submit" runat="server" Height="38px" OnClick="Submit_Click" Text="Submit" Width="134px" />
    </form>
</body>
</html>
