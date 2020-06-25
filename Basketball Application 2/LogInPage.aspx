<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="Basketball_Application_2.LogInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Sign In "></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Don&#39;t have an account, Sign up now</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="User1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Password1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
